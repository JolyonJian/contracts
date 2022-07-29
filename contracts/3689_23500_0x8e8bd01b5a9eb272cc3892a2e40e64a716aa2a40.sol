{{
  "language": "Solidity",
  "sources": {
    "contracts/proxies/CurrencyConvertor.sol": {
      "content": "/*\n\n  Copyright 2021 dYdX Trading Inc.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\");\n  you may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  http://www.apache.org/licenses/LICENSE-2.0\n\n  Unless required by applicable law or agreed to in writing, software\n  distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions and\n  limitations under the License.\n\n*/\n\n// SPDX-License-Identifier: Apache-2.0\npragma solidity ^0.8.0;\n\nimport { Ownable } from \"@openzeppelin/contracts/access/Ownable.sol\";\nimport { ERC2771Context } from \"@openzeppelin/contracts/metatx/ERC2771Context.sol\";\nimport { Pausable } from \"@openzeppelin/contracts/security/Pausable.sol\";\nimport { ReentrancyGuard } from \"@openzeppelin/contracts/security/ReentrancyGuard.sol\";\nimport { IERC20 } from \"@openzeppelin/contracts/token/ERC20/IERC20.sol\";\nimport { SafeERC20 } from \"@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol\";\nimport { Context } from \"@openzeppelin/contracts/utils/Context.sol\";\nimport { I_ExchangeProxy } from \"../interfaces/I_ExchangeProxy.sol\";\nimport { I_StarkwareContract } from \"../interfaces/I_StarkwareContracts.sol\";\n\n/**\n * @title CurrencyConvertor\n * @author dYdX\n *\n * @notice Contract for depositing to dYdX L2 in non-USDC tokens.\n */\ncontract CurrencyConvertor is\n  ERC2771Context,\n  Pausable,\n  Ownable,\n  ReentrancyGuard\n{\n  using SafeERC20 for IERC20;\n\n  // ============ State Variables ============\n\n  I_StarkwareContract public immutable STARKWARE_CONTRACT;\n\n  IERC20 immutable USDC_ADDRESS;\n\n  uint256 immutable USDC_ASSET_TYPE;\n\n  address immutable ETH_PLACEHOLDER_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;\n\n  // ============ Constructor ============\n\n  constructor(\n    I_StarkwareContract starkwareContractAddress,\n    IERC20 usdcAddress,\n    uint256 usdcAssetType,\n    address trustedForwarder\n  )\n    ERC2771Context(trustedForwarder)\n  {\n    STARKWARE_CONTRACT = starkwareContractAddress;\n    USDC_ADDRESS = usdcAddress;\n    USDC_ASSET_TYPE = usdcAssetType;\n\n    // Set the allowance to the highest possible value.\n    usdcAddress.safeApprove(address(starkwareContractAddress), type(uint256).max);\n  }\n\n  // ============ Events ============\n\n  event LogConvertedDeposit(\n    address indexed sender,\n    address tokenFrom,\n    uint256 tokenFromAmount,\n    uint256 usdcAmount\n  );\n\n  // ============ External Functions ============\n\n  /**\n    * @notice Pause this contract.\n    */\n  function pause()\n    external\n    onlyOwner\n  {\n     _pause();\n  }\n\n  /**\n    * @notice Unpause this contract.\n    */\n  function unpause()\n    external\n    onlyOwner\n  {\n    _unpause();\n  }\n\n  /**\n    * @notice Make a deposit to the Starkware Layer2.\n    *\n    * @param  depositAmount      The amount of USDC to deposit.\n    * @param  starkKey           The starkKey of the L2 account to deposit into.\n    * @param  positionId         The positionId of the L2 account to deposit into.\n    * @param  signature          The signature for registering. NOTE: if length is 0, will not try to register.\n    */\n  function deposit(\n    uint256 depositAmount,\n    uint256 starkKey,\n    uint256 positionId,\n    bytes calldata signature\n  )\n    external\n    nonReentrant\n    whenNotPaused\n  {\n    address sender = _msgSender();\n\n    // Register address in Starkware Layer2.\n    if (signature.length > 0) {\n      STARKWARE_CONTRACT.registerUser(sender, starkKey, signature);\n    }\n\n    // Deposit depositAmount of USDC to the L2 exchange account of the sender.\n    USDC_ADDRESS.safeTransferFrom(\n      sender,\n      address(this),\n      depositAmount\n    );\n    STARKWARE_CONTRACT.deposit(\n      starkKey,\n      USDC_ASSET_TYPE,\n      positionId,\n      depositAmount\n    );\n  }\n\n  /**\n    * @notice Make a deposit to the Starkware Layer2, after converting funds to USDC.\n    *  Funds will be transferred from the sender and USDC will be deposited into the trading account\n    *  specified by the starkKey and positionId.\n    * @dev Emits LogConvertedDeposit event.\n    *\n    * @param  tokenFrom          The ERC20 token to convert from.\n    * @param  tokenFromAmount    The amount of `tokenFrom` tokens to deposit.\n    * @param  starkKey           The starkKey of the L2 account to deposit into.\n    * @param  positionId         The positionId of the L2 account to deposit into.\n    * @param  exchangeProxy      The exchangeProxy being used to swap the `tokenFrom` for USDC.\n    * @param  exchangeProxyData  Trade parameters for the exchangeProxy.\n    * @param  signature          The signature for registering. NOTE: if length is 0, will not try to register.\n    */\n  function depositERC20(\n    IERC20 tokenFrom,\n    uint256 tokenFromAmount,\n    uint256 starkKey,\n    uint256 positionId,\n    I_ExchangeProxy exchangeProxy,\n    bytes calldata exchangeProxyData,\n    bytes calldata signature\n  )\n    external\n    nonReentrant\n    whenNotPaused\n    returns (uint256)\n  {\n    address sender = _msgSender();\n\n    // Register address in Starkware Layer2.\n    if (signature.length > 0) {\n      STARKWARE_CONTRACT.registerUser(sender, starkKey, signature);\n    }\n\n    // Send `tokenFrom` to this contract.\n    tokenFrom.safeTransferFrom(\n      sender,\n      address(exchangeProxy),\n      tokenFromAmount\n    );\n\n    // Swap token.\n    exchangeProxy.proxyExchange(exchangeProxyData);\n\n    // Deposit full balance of USDC in CurrencyConvertor to the L2 exchange account of the sender.\n    uint256 usdcBalance = USDC_ADDRESS.balanceOf(address(this));\n    STARKWARE_CONTRACT.deposit(\n      starkKey,\n      USDC_ASSET_TYPE,\n      positionId,\n      usdcBalance\n    );\n\n    // Log the result.\n    emit LogConvertedDeposit(\n      sender,\n      address(tokenFrom),\n      tokenFromAmount,\n      usdcBalance\n    );\n\n    return usdcBalance;\n  }\n\n  /**\n    * @notice Make a deposit to the Starkware Layer2, after converting funds to USDC.\n    *  Ether will be transferred from the sender and USDC will be deposited into the trading account\n    *  specified by the starkKey and positionId.\n    * @dev Emits LogConvertedDeposit event.\n    *\n    * @param  starkKey           The starkKey of the L2 account to deposit into.\n    * @param  positionId         The positionId of the L2 account to deposit into.\n    * @param  exchangeProxy      The exchangeProxy being used to swap the `tokenFrom` for USDC.\n    * @param  exchangeProxyData  Trade parameters for the exchangeProxy.\n    * @param  signature          The signature for registering. NOTE: if length is 0, will not try to register.\n    */\n  function depositEth(\n    uint256 starkKey,\n    uint256 positionId,\n    I_ExchangeProxy exchangeProxy,\n    bytes calldata exchangeProxyData,\n    bytes calldata signature\n  )\n    external\n    payable\n    nonReentrant\n    whenNotPaused\n    returns (uint256)\n  {\n    address sender = _msgSender();\n\n    // Register address in Starkware Layer2.\n    if (signature.length > 0) {\n      STARKWARE_CONTRACT.registerUser(sender, starkKey, signature);\n    }\n\n    // Swap token.\n    exchangeProxy.proxyExchange{ value: msg.value }(exchangeProxyData);\n\n    // Deposit full balance of USDC in CurrencyConvertor to the L2 exchange account of the sender.\n    uint256 usdcBalance = USDC_ADDRESS.balanceOf(address(this));\n    STARKWARE_CONTRACT.deposit(\n      starkKey,\n      USDC_ASSET_TYPE,\n      positionId,\n      usdcBalance\n    );\n\n    // Log the result.\n    emit LogConvertedDeposit(\n      sender,\n      ETH_PLACEHOLDER_ADDRESS,\n      msg.value,\n      usdcBalance\n    );\n\n    return usdcBalance;\n  }\n\n  // ============ Internal Functions ============\n\n  function _msgSender()\n    internal\n    view\n    virtual\n    override(Context, ERC2771Context)\n    returns (address sender)\n  {\n    return ERC2771Context._msgSender();\n  }\n\n  function _msgData()\n    internal\n    view\n    virtual\n    override(Context, ERC2771Context)\n    returns (bytes calldata)\n  {\n    return ERC2771Context._msgData();\n  }\n}\n"
    },
    "@openzeppelin/contracts/access/Ownable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (access/Ownable.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which provides a basic access control mechanism, where\n * there is an account (an owner) that can be granted exclusive access to\n * specific functions.\n *\n * By default, the owner account will be the one that deploys the contract. This\n * can later be changed with {transferOwnership}.\n *\n * This module is used through inheritance. It will make available the modifier\n * `onlyOwner`, which can be applied to your functions to restrict their use to\n * the owner.\n */\nabstract contract Ownable is Context {\n    address private _owner;\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    /**\n     * @dev Initializes the contract setting the deployer as the initial owner.\n     */\n    constructor() {\n        _transferOwnership(_msgSender());\n    }\n\n    /**\n     * @dev Returns the address of the current owner.\n     */\n    function owner() public view virtual returns (address) {\n        return _owner;\n    }\n\n    /**\n     * @dev Throws if called by any account other than the owner.\n     */\n    modifier onlyOwner() {\n        require(owner() == _msgSender(), \"Ownable: caller is not the owner\");\n        _;\n    }\n\n    /**\n     * @dev Leaves the contract without owner. It will not be possible to call\n     * `onlyOwner` functions anymore. Can only be called by the current owner.\n     *\n     * NOTE: Renouncing ownership will leave the contract without an owner,\n     * thereby removing any functionality that is only available to the owner.\n     */\n    function renounceOwnership() public virtual onlyOwner {\n        _transferOwnership(address(0));\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Can only be called by the current owner.\n     */\n    function transferOwnership(address newOwner) public virtual onlyOwner {\n        require(newOwner != address(0), \"Ownable: new owner is the zero address\");\n        _transferOwnership(newOwner);\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Internal function without access restriction.\n     */\n    function _transferOwnership(address newOwner) internal virtual {\n        address oldOwner = _owner;\n        _owner = newOwner;\n        emit OwnershipTransferred(oldOwner, newOwner);\n    }\n}\n"
    },
    "@openzeppelin/contracts/metatx/ERC2771Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (metatx/ERC2771Context.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Context variant with ERC2771 support.\n */\nabstract contract ERC2771Context is Context {\n    address private _trustedForwarder;\n\n    constructor(address trustedForwarder) {\n        _trustedForwarder = trustedForwarder;\n    }\n\n    function isTrustedForwarder(address forwarder) public view virtual returns (bool) {\n        return forwarder == _trustedForwarder;\n    }\n\n    function _msgSender() internal view virtual override returns (address sender) {\n        if (isTrustedForwarder(msg.sender)) {\n            // The assembly code is more direct than the Solidity version using `abi.decode`.\n            assembly {\n                sender := shr(96, calldataload(sub(calldatasize(), 20)))\n            }\n        } else {\n            return super._msgSender();\n        }\n    }\n\n    function _msgData() internal view virtual override returns (bytes calldata) {\n        if (isTrustedForwarder(msg.sender)) {\n            return msg.data[:msg.data.length - 20];\n        } else {\n            return super._msgData();\n        }\n    }\n}\n"
    },
    "@openzeppelin/contracts/security/Pausable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (security/Pausable.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which allows children to implement an emergency stop\n * mechanism that can be triggered by an authorized account.\n *\n * This module is used through inheritance. It will make available the\n * modifiers `whenNotPaused` and `whenPaused`, which can be applied to\n * the functions of your contract. Note that they will not be pausable by\n * simply including this module, only once the modifiers are put in place.\n */\nabstract contract Pausable is Context {\n    /**\n     * @dev Emitted when the pause is triggered by `account`.\n     */\n    event Paused(address account);\n\n    /**\n     * @dev Emitted when the pause is lifted by `account`.\n     */\n    event Unpaused(address account);\n\n    bool private _paused;\n\n    /**\n     * @dev Initializes the contract in unpaused state.\n     */\n    constructor() {\n        _paused = false;\n    }\n\n    /**\n     * @dev Returns true if the contract is paused, and false otherwise.\n     */\n    function paused() public view virtual returns (bool) {\n        return _paused;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is not paused.\n     *\n     * Requirements:\n     *\n     * - The contract must not be paused.\n     */\n    modifier whenNotPaused() {\n        require(!paused(), \"Pausable: paused\");\n        _;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is paused.\n     *\n     * Requirements:\n     *\n     * - The contract must be paused.\n     */\n    modifier whenPaused() {\n        require(paused(), \"Pausable: not paused\");\n        _;\n    }\n\n    /**\n     * @dev Triggers stopped state.\n     *\n     * Requirements:\n     *\n     * - The contract must not be paused.\n     */\n    function _pause() internal virtual whenNotPaused {\n        _paused = true;\n        emit Paused(_msgSender());\n    }\n\n    /**\n     * @dev Returns to normal state.\n     *\n     * Requirements:\n     *\n     * - The contract must be paused.\n     */\n    function _unpause() internal virtual whenPaused {\n        _paused = false;\n        emit Unpaused(_msgSender());\n    }\n}\n"
    },
    "@openzeppelin/contracts/security/ReentrancyGuard.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (security/ReentrancyGuard.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Contract module that helps prevent reentrant calls to a function.\n *\n * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier\n * available, which can be applied to functions to make sure there are no nested\n * (reentrant) calls to them.\n *\n * Note that because there is a single `nonReentrant` guard, functions marked as\n * `nonReentrant` may not call one another. This can be worked around by making\n * those functions `private`, and then adding `external` `nonReentrant` entry\n * points to them.\n *\n * TIP: If you would like to learn more about reentrancy and alternative ways\n * to protect against it, check out our blog post\n * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].\n */\nabstract contract ReentrancyGuard {\n    // Booleans are more expensive than uint256 or any type that takes up a full\n    // word because each write operation emits an extra SLOAD to first read the\n    // slot's contents, replace the bits taken up by the boolean, and then write\n    // back. This is the compiler's defense against contract upgrades and\n    // pointer aliasing, and it cannot be disabled.\n\n    // The values being non-zero value makes deployment a bit more expensive,\n    // but in exchange the refund on every call to nonReentrant will be lower in\n    // amount. Since refunds are capped to a percentage of the total\n    // transaction's gas, it is best to keep them low in cases like this one, to\n    // increase the likelihood of the full refund coming into effect.\n    uint256 private constant _NOT_ENTERED = 1;\n    uint256 private constant _ENTERED = 2;\n\n    uint256 private _status;\n\n    constructor() {\n        _status = _NOT_ENTERED;\n    }\n\n    /**\n     * @dev Prevents a contract from calling itself, directly or indirectly.\n     * Calling a `nonReentrant` function from another `nonReentrant`\n     * function is not supported. It is possible to prevent this from happening\n     * by making the `nonReentrant` function external, and making it call a\n     * `private` function that does the actual work.\n     */\n    modifier nonReentrant() {\n        // On the first call to nonReentrant, _notEntered will be true\n        require(_status != _ENTERED, \"ReentrancyGuard: reentrant call\");\n\n        // Any calls to nonReentrant after this point will fail\n        _status = _ENTERED;\n\n        _;\n\n        // By storing the original value once again, a refund is triggered (see\n        // https://eips.ethereum.org/EIPS/eip-2200)\n        _status = _NOT_ENTERED;\n    }\n}\n"
    },
    "@openzeppelin/contracts/token/ERC20/IERC20.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (token/ERC20/IERC20.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Interface of the ERC20 standard as defined in the EIP.\n */\ninterface IERC20 {\n    /**\n     * @dev Returns the amount of tokens in existence.\n     */\n    function totalSupply() external view returns (uint256);\n\n    /**\n     * @dev Returns the amount of tokens owned by `account`.\n     */\n    function balanceOf(address account) external view returns (uint256);\n\n    /**\n     * @dev Moves `amount` tokens from the caller's account to `recipient`.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transfer(address recipient, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Returns the remaining number of tokens that `spender` will be\n     * allowed to spend on behalf of `owner` through {transferFrom}. This is\n     * zero by default.\n     *\n     * This value changes when {approve} or {transferFrom} are called.\n     */\n    function allowance(address owner, address spender) external view returns (uint256);\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * IMPORTANT: Beware that changing an allowance with this method brings the risk\n     * that someone may use both the old and the new allowance by unfortunate\n     * transaction ordering. One possible solution to mitigate this race\n     * condition is to first reduce the spender's allowance to 0 and set the\n     * desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     *\n     * Emits an {Approval} event.\n     */\n    function approve(address spender, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Moves `amount` tokens from `sender` to `recipient` using the\n     * allowance mechanism. `amount` is then deducted from the caller's\n     * allowance.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transferFrom(\n        address sender,\n        address recipient,\n        uint256 amount\n    ) external returns (bool);\n\n    /**\n     * @dev Emitted when `value` tokens are moved from one account (`from`) to\n     * another (`to`).\n     *\n     * Note that `value` may be zero.\n     */\n    event Transfer(address indexed from, address indexed to, uint256 value);\n\n    /**\n     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\n     * a call to {approve}. `value` is the new allowance.\n     */\n    event Approval(address indexed owner, address indexed spender, uint256 value);\n}\n"
    },
    "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (token/ERC20/utils/SafeERC20.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../IERC20.sol\";\nimport \"../../../utils/Address.sol\";\n\n/**\n * @title SafeERC20\n * @dev Wrappers around ERC20 operations that throw on failure (when the token\n * contract returns false). Tokens that return no value (and instead revert or\n * throw on failure) are also supported, non-reverting calls are assumed to be\n * successful.\n * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,\n * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.\n */\nlibrary SafeERC20 {\n    using Address for address;\n\n    function safeTransfer(\n        IERC20 token,\n        address to,\n        uint256 value\n    ) internal {\n        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));\n    }\n\n    function safeTransferFrom(\n        IERC20 token,\n        address from,\n        address to,\n        uint256 value\n    ) internal {\n        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));\n    }\n\n    /**\n     * @dev Deprecated. This function has issues similar to the ones found in\n     * {IERC20-approve}, and its usage is discouraged.\n     *\n     * Whenever possible, use {safeIncreaseAllowance} and\n     * {safeDecreaseAllowance} instead.\n     */\n    function safeApprove(\n        IERC20 token,\n        address spender,\n        uint256 value\n    ) internal {\n        // safeApprove should only be called when setting an initial allowance,\n        // or when resetting it to zero. To increase and decrease it, use\n        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'\n        require(\n            (value == 0) || (token.allowance(address(this), spender) == 0),\n            \"SafeERC20: approve from non-zero to non-zero allowance\"\n        );\n        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));\n    }\n\n    function safeIncreaseAllowance(\n        IERC20 token,\n        address spender,\n        uint256 value\n    ) internal {\n        uint256 newAllowance = token.allowance(address(this), spender) + value;\n        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));\n    }\n\n    function safeDecreaseAllowance(\n        IERC20 token,\n        address spender,\n        uint256 value\n    ) internal {\n        unchecked {\n            uint256 oldAllowance = token.allowance(address(this), spender);\n            require(oldAllowance >= value, \"SafeERC20: decreased allowance below zero\");\n            uint256 newAllowance = oldAllowance - value;\n            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));\n        }\n    }\n\n    /**\n     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement\n     * on the return value: the return value is optional (but if data is returned, it must not be false).\n     * @param token The token targeted by the call.\n     * @param data The call data (encoded using abi.encode or one of its variants).\n     */\n    function _callOptionalReturn(IERC20 token, bytes memory data) private {\n        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since\n        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that\n        // the target address contains contract code and also asserts for success in the low-level call.\n\n        bytes memory returndata = address(token).functionCall(data, \"SafeERC20: low-level call failed\");\n        if (returndata.length > 0) {\n            // Return data is optional\n            require(abi.decode(returndata, (bool)), \"SafeERC20: ERC20 operation did not succeed\");\n        }\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (utils/Context.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal view virtual returns (address) {\n        return msg.sender;\n    }\n\n    function _msgData() internal view virtual returns (bytes calldata) {\n        return msg.data;\n    }\n}\n"
    },
    "contracts/interfaces/I_ExchangeProxy.sol": {
      "content": "/*\n\n  Copyright 2021 dYdX Trading Inc.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\");\n  you may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  http://www.apache.org/licenses/LICENSE-2.0\n\n  Unless required by applicable law or agreed to in writing, software\n  distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions and\n  limitations under the License.\n\n*/\n\n// SPDX-License-Identifier: Apache-2.0\npragma solidity ^0.8.0;\n\n/**\n * @title I_ExchangeProxy\n * @author dYdX\n *\n * Interface for interacting with exchanges.\n */\ninterface I_ExchangeProxy {\n\n  // ============ State-Changing Functions ============\n\n  /**\n    * @notice Make a call to an exchange via proxy.\n    *\n    * @param  proxyExchangeData  Bytes data for the trade, specific to the exchange proxy implementation.\n    */\n  function proxyExchange(\n    bytes calldata proxyExchangeData\n  )\n    external\n    payable;\n}\n"
    },
    "contracts/interfaces/I_StarkwareContracts.sol": {
      "content": "/*\n\n  Copyright 2021 dYdX Trading Inc.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\");\n  you may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  http://www.apache.org/licenses/LICENSE-2.0\n\n  Unless required by applicable law or agreed to in writing, software\n  distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions and\n  limitations under the License.\n\n*/\n\n// SPDX-License-Identifier: Apache-2.0\npragma solidity ^0.8.0;\n\n/**\n * @title I_StarkwareContract\n * @author dYdX\n *\n * Interface for starkex-contracts.\n */\ninterface I_StarkwareContract {\n\n  // ============ State-Changing Functions ============\n\n  /**\n    * @notice Make a deposit to the Starkware Layer2.\n    *\n    * @param  starkKey        The starkKey of the L2 account to deposit into.\n    * @param  assetType       The assetType to deposit in.\n    * @param  vaultId         The L2 id to deposit into.\n    * @param  quantizedAmount The quantized amount being deposited.\n    */\n  function deposit(\n    uint256 starkKey,\n    uint256 assetType,\n    uint256 vaultId,\n    uint256 quantizedAmount\n  ) external;\n\n  /**\n    * @notice Register to the Starkware Layer2.\n    *\n    * @param  ethKey          The ethKey of the L2 account to deposit into.\n    * @param  starkKey        The starkKey of the L2 account to deposit into.\n    * @param  signature       The signature for registering.\n    */\n  function registerUser(\n    address ethKey,\n    uint256 starkKey,\n    bytes calldata signature\n  ) external;\n}\n"
    },
    "@openzeppelin/contracts/utils/Address.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (utils/Address.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Collection of functions related to the address type\n */\nlibrary Address {\n    /**\n     * @dev Returns true if `account` is a contract.\n     *\n     * [IMPORTANT]\n     * ====\n     * It is unsafe to assume that an address for which this function returns\n     * false is an externally-owned account (EOA) and not a contract.\n     *\n     * Among others, `isContract` will return false for the following\n     * types of addresses:\n     *\n     *  - an externally-owned account\n     *  - a contract in construction\n     *  - an address where a contract will be created\n     *  - an address where a contract lived, but was destroyed\n     * ====\n     */\n    function isContract(address account) internal view returns (bool) {\n        // This method relies on extcodesize, which returns 0 for contracts in\n        // construction, since the code is only stored at the end of the\n        // constructor execution.\n\n        uint256 size;\n        assembly {\n            size := extcodesize(account)\n        }\n        return size > 0;\n    }\n\n    /**\n     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to\n     * `recipient`, forwarding all available gas and reverting on errors.\n     *\n     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost\n     * of certain opcodes, possibly making contracts go over the 2300 gas limit\n     * imposed by `transfer`, making them unable to receive funds via\n     * `transfer`. {sendValue} removes this limitation.\n     *\n     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].\n     *\n     * IMPORTANT: because control is transferred to `recipient`, care must be\n     * taken to not create reentrancy vulnerabilities. Consider using\n     * {ReentrancyGuard} or the\n     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].\n     */\n    function sendValue(address payable recipient, uint256 amount) internal {\n        require(address(this).balance >= amount, \"Address: insufficient balance\");\n\n        (bool success, ) = recipient.call{value: amount}(\"\");\n        require(success, \"Address: unable to send value, recipient may have reverted\");\n    }\n\n    /**\n     * @dev Performs a Solidity function call using a low level `call`. A\n     * plain `call` is an unsafe replacement for a function call: use this\n     * function instead.\n     *\n     * If `target` reverts with a revert reason, it is bubbled up by this\n     * function (like regular Solidity function calls).\n     *\n     * Returns the raw returned data. To convert to the expected return value,\n     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].\n     *\n     * Requirements:\n     *\n     * - `target` must be a contract.\n     * - calling `target` with `data` must not revert.\n     *\n     * _Available since v3.1._\n     */\n    function functionCall(address target, bytes memory data) internal returns (bytes memory) {\n        return functionCall(target, data, \"Address: low-level call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with\n     * `errorMessage` as a fallback revert reason when `target` reverts.\n     *\n     * _Available since v3.1._\n     */\n    function functionCall(\n        address target,\n        bytes memory data,\n        string memory errorMessage\n    ) internal returns (bytes memory) {\n        return functionCallWithValue(target, data, 0, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but also transferring `value` wei to `target`.\n     *\n     * Requirements:\n     *\n     * - the calling contract must have an ETH balance of at least `value`.\n     * - the called Solidity function must be `payable`.\n     *\n     * _Available since v3.1._\n     */\n    function functionCallWithValue(\n        address target,\n        bytes memory data,\n        uint256 value\n    ) internal returns (bytes memory) {\n        return functionCallWithValue(target, data, value, \"Address: low-level call with value failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but\n     * with `errorMessage` as a fallback revert reason when `target` reverts.\n     *\n     * _Available since v3.1._\n     */\n    function functionCallWithValue(\n        address target,\n        bytes memory data,\n        uint256 value,\n        string memory errorMessage\n    ) internal returns (bytes memory) {\n        require(address(this).balance >= value, \"Address: insufficient balance for call\");\n        require(isContract(target), \"Address: call to non-contract\");\n\n        (bool success, bytes memory returndata) = target.call{value: value}(data);\n        return verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but performing a static call.\n     *\n     * _Available since v3.3._\n     */\n    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {\n        return functionStaticCall(target, data, \"Address: low-level static call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],\n     * but performing a static call.\n     *\n     * _Available since v3.3._\n     */\n    function functionStaticCall(\n        address target,\n        bytes memory data,\n        string memory errorMessage\n    ) internal view returns (bytes memory) {\n        require(isContract(target), \"Address: static call to non-contract\");\n\n        (bool success, bytes memory returndata) = target.staticcall(data);\n        return verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but performing a delegate call.\n     *\n     * _Available since v3.4._\n     */\n    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {\n        return functionDelegateCall(target, data, \"Address: low-level delegate call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],\n     * but performing a delegate call.\n     *\n     * _Available since v3.4._\n     */\n    function functionDelegateCall(\n        address target,\n        bytes memory data,\n        string memory errorMessage\n    ) internal returns (bytes memory) {\n        require(isContract(target), \"Address: delegate call to non-contract\");\n\n        (bool success, bytes memory returndata) = target.delegatecall(data);\n        return verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the\n     * revert reason using the provided one.\n     *\n     * _Available since v4.3._\n     */\n    function verifyCallResult(\n        bool success,\n        bytes memory returndata,\n        string memory errorMessage\n    ) internal pure returns (bytes memory) {\n        if (success) {\n            return returndata;\n        } else {\n            // Look for revert reason and bubble it up if present\n            if (returndata.length > 0) {\n                // The easiest way to bubble the revert reason is using memory via assembly\n\n                assembly {\n                    let returndata_size := mload(returndata)\n                    revert(add(32, returndata), returndata_size)\n                }\n            } else {\n                revert(errorMessage);\n            }\n        }\n    }\n}\n"
    }
  },
  "settings": {
    "optimizer": {
      "enabled": true,
      "runs": 200
    },
    "outputSelection": {
      "*": {
        "*": [
          "evm.bytecode",
          "evm.deployedBytecode",
          "devdoc",
          "userdoc",
          "metadata",
          "abi"
        ]
      }
    },
    "libraries": {}
  }
}}