{{
  "language": "Solidity",
  "sources": {
    "contracts/drops/ImpostorsRedeemer721.sol": {
      "content": "// SPDX-License-Identifier: AGPL-3.0-only\r\npragma solidity ^0.8.11;\r\n\r\nimport \"@openzeppelin/contracts/access/Ownable.sol\";\r\nimport \"@openzeppelin/contracts/security/ReentrancyGuard.sol\";\r\nimport \"@openzeppelin/contracts/token/ERC20/IERC20.sol\";\r\nimport \"@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol\";\r\n\r\nimport \"../interfaces/ITiny721.sol\";\r\n\r\n/*\r\n  It saves bytecode to revert on custom errors instead of using require\r\n  statements. We are just declaring these errors for reverting with upon various\r\n  conditions later in this contract.\r\n*/\r\nerror CannotConfigureEmptyCriteria();\r\nerror CannotConfigureWithoutOutputItem();\r\nerror CannotConfigureWithoutPaymentToken();\r\nerror CannotRedeemForZeroItems();\r\nerror CannotRedeemCriteriaLengthMismatch();\r\nerror CannotRedeemItemAlreadyRedeemed();\r\nerror CannotRedeemUnownedItem();\r\nerror SweepingTransferFailed();\r\n\r\n\r\n/**\r\n  @title A contract for minting ERC-721 items given an ERC-20 token burn and\r\n    ownership of some prerequisite ERC-721 items.\r\n  @author 0xthrpw\r\n  @author Tim Clancy\r\n\r\n  This contract allows for the configuration of multiple redemption rounds. Each\r\n  redemption round is configured with a set of ERC-721 item collection addresses\r\n  in the `redemptionCriteria` mapping that any prospective redeemers must hold.\r\n\r\n  Each redemption round is also configured with a redemption configuration per\r\n  the `redemptionConfigs` mapping. This configuration allows a caller holding\r\n  the required ERC-721 items to mint some amount `amountOut` of a new ERC-721\r\n  `tokenOut` item in exchange for burning `price` amount of a `payingToken`\r\n  ERC-20 token.\r\n\r\n  Any ERC-721 collection being minted by this redeemer must grant minting\r\n  permissions to this contract in some fashion. Users must also approve this\r\n  contract to spend any requisite `payingToken` ERC-20 tokens on their behalf.\r\n\r\n  April 27th, 2022.\r\n*/\r\ncontract ImpostorsRedeemer721 is\r\n  Ownable, ReentrancyGuard\r\n{\r\n  using SafeERC20 for IERC20;\r\n\r\n  /**\r\n    A configurable address to transfer burned ERC-20 tokens to. The intent of\r\n    specifying an address like this is to support burning otherwise unburnable\r\n    ERC-20 tokens by transferring them to provably unrecoverable destinations,\r\n    such as blackhole smart contracts.\r\n  */\r\n  address public immutable burnDestination;\r\n\r\n  /**\r\n    A mapping from a redemption round ID to an array of ERC-721 item collection\r\n    addresses required to be held in fulfilling a redemption claim. In order to\r\n    participate in a redemption round, a caller must hold a specific item from\r\n    each of these required ERC-721 item collections.\r\n  */\r\n  mapping ( uint256 => address[] ) public redemptionCriteria;\r\n\r\n  /**\r\n    This struct is used when configuring a redemption round to specify a\r\n    caller's required payment and the ERC-721 items they may be minted in\r\n    return.\r\n\r\n    @param price The amount of `payingToken` that a caller must pay for each set\r\n      of items redeemed in this round.\r\n    @param tokenOut The address of the ERC-721 item collection from which a\r\n      caller will receive newly-minted items.\r\n    @param payingToken The ERC-20 token of which `price` must be paid for each\r\n      redemption.\r\n    @param amountOut The number of new `tokenOut` ERC-721 items a caller will\r\n      receive in return for fulfilling a claim.\r\n  */\r\n  struct RedemptionConfig {\r\n    uint96 price;\r\n    address tokenOut;\r\n    address payingToken;\r\n    uint96 amountOut;\r\n  }\r\n\r\n  /// A mapping from a redemption round ID to its configuration details.\r\n  mapping ( uint256 => RedemptionConfig ) public redemptionConfigs;\r\n\r\n  /**\r\n    A triple mapping from a redemption round ID to an ERC-721 item collection\r\n    address to the token ID of a specific item in the ERC-721 item collection.\r\n    This mapping ensures that a specific item can only be used once in any given\r\n    redemption round.\r\n  */\r\n  mapping (\r\n    uint256 => mapping (\r\n      address => mapping (\r\n        uint256 => bool\r\n      )\r\n    )\r\n  ) public redeemed;\r\n\r\n  /**\r\n    An event tracking a claim in a redemption round for some ERC-721 items.\r\n\r\n    @param round The redemption round ID involved in the claim.\r\n    @param caller The caller who triggered the claim.\r\n    @param tokenIds The array of token IDs for specific items keyed against the\r\n      matching `criteria` paramter.\r\n  */\r\n  event TokenRedemption (\r\n    uint256 indexed round,\r\n    address indexed caller,\r\n    uint256[] tokenIds\r\n  );\r\n\r\n  /**\r\n    An event tracking a configuration update for the details of a particular\r\n    redemption round.\r\n\r\n    @param round The redemption round ID with updated configuration.\r\n    @param criteria The array of ERC-721 item collection addresses required for\r\n      fulfilling a redemption claim in this round.\r\n    @param configuration The updated `RedemptionConfig` configuration details\r\n      for this round.\r\n  */\r\n  event ConfigUpdate (\r\n    uint256 indexed round,\r\n    address[] indexed criteria,\r\n    RedemptionConfig indexed configuration\r\n  );\r\n\r\n  /**\r\n    Construct a new item redeemer by specifying a destination for burnt tokens.\r\n\r\n    @param _burnDestination An address where tokens received for fulfilling\r\n      redemptions are sent.\r\n  */\r\n  constructor (\r\n    address _burnDestination\r\n  ) {\r\n    burnDestination = _burnDestination;\r\n  }\r\n\r\n  /**\r\n    Easily check the redemption status of multiple tokens of a single\r\n    collection in a single round.\r\n\r\n    @param _round The round to check for token redemption against.\r\n    @param _collection The address of the specific item collection to check.\r\n    @param _tokenIds An array of token IDs belonging to the collection\r\n      `_collection` to check for redemption status.\r\n\r\n    @return An array of boolean redemption status for each of the items being\r\n      checked in `_tokenIds`.\r\n  */\r\n  function isRedeemed (\r\n    uint256 _round,\r\n    address _collection,\r\n    uint256[] memory _tokenIds\r\n  ) external view returns (bool[] memory) {\r\n    bool[] memory redemptionStatus = new bool[](_tokenIds.length);\r\n    for (uint256 i = 0; i < _tokenIds.length; i += 1) {\r\n      redemptionStatus[i] = redeemed[_round][_collection][_tokenIds[i]];\r\n    }\r\n    return redemptionStatus;\r\n  }\r\n\r\n  /**\r\n    Set the configuration details for a particular redemption round. A specific\r\n    redemption round may be effectively disabled by setting the `amountOut`\r\n    field of the given `RedemptionConfig` `_config` value to 0.\r\n\r\n    @param _round The redemption round ID to configure.\r\n    @param _criteria An array of ERC-721 item collection addresses to require\r\n      holdings from when a caller attempts to redeem from the round of ID\r\n      `_round`.\r\n    @param _config The `RedemptionConfig` configuration data to use for setting\r\n      new configuration details for the round of ID `_round`.\r\n  */\r\n  function setConfig (\r\n    uint256 _round,\r\n    address[] calldata _criteria,\r\n    RedemptionConfig calldata _config\r\n  ) external onlyOwner {\r\n\r\n    /*\r\n      Prevent a redemption round from being configured with no requisite ERC-721\r\n      item collection holding criteria.\r\n    */\r\n    if (_criteria.length == 0) {\r\n      revert CannotConfigureEmptyCriteria();\r\n    }\r\n\r\n    /*\r\n      Perform input validation on the provided configuration details. A\r\n      redemption round may not be configured with no ERC-721 item collection to\r\n      mint as output.\r\n    */\r\n    if (_config.tokenOut == address(0)) {\r\n      revert CannotConfigureWithoutOutputItem();\r\n    }\r\n\r\n    /*\r\n      A redemption round may not be configured with no ERC-20 token address to\r\n      attempt to enforce payment from.\r\n    */\r\n    if (_config.payingToken == address(0)) {\r\n      revert CannotConfigureWithoutPaymentToken();\r\n    }\r\n\r\n    // Update the redemption criteria of this round.\r\n    redemptionCriteria[_round] = _criteria;\r\n\r\n    // Update the contents of the round configuration mapping.\r\n    redemptionConfigs[_round] = RedemptionConfig({\r\n      amountOut: _config.amountOut,\r\n      price: _config.price,\r\n      tokenOut: _config.tokenOut,\r\n      payingToken: _config.payingToken\r\n    });\r\n\r\n    // Emit the configuration update event.\r\n    emit ConfigUpdate(_round, _criteria, _config);\r\n  }\r\n\r\n  /**\r\n    Allow a caller to redeem potentially multiple sets of criteria ERC-721 items\r\n    in `_tokenIds` against the redemption round of ID `_round`.\r\n\r\n    @param _round The ID of the redemption round to redeem against.\r\n    @param _tokenIds An array of token IDs for the specific ERC-721 items keyed\r\n      to the item collection criteria addresses for this round in\r\n      the `redemptionCriteria` mapping.\r\n  */\r\n  function redeem (\r\n    uint256 _round,\r\n    uint256[][] memory _tokenIds\r\n  ) external nonReentrant {\r\n    address[] memory criteria = redemptionCriteria[_round];\r\n    RedemptionConfig memory config = redemptionConfigs[_round];\r\n\r\n    // Prevent a caller from redeeming from a round with zero output items.\r\n    if (config.amountOut < 1) {\r\n      revert CannotRedeemForZeroItems();\r\n    }\r\n\r\n    /*\r\n      The caller may be attempting to redeem for multiple independent sets of\r\n      items in this redemption round. Process each set of token IDs against the\r\n      criteria addresses.\r\n    */\r\n    for (uint256 set = 0; set < _tokenIds.length; set += 1) {\r\n\r\n      /*\r\n        If the item set is not the same length as the criteria array, we have a\r\n        mismatch and the set cannot possibly be fulfilled.\r\n      */\r\n      if (_tokenIds[set].length != criteria.length) {\r\n        revert CannotRedeemCriteriaLengthMismatch();\r\n      }\r\n\r\n      /*\r\n        Check each item in the set against each of the expected, required\r\n        criteria collections.\r\n      */\r\n      for (uint256 i; i < criteria.length; i += 1) {\r\n\r\n        // Verify that no item may be redeemed twice against a single round.\r\n        if (redeemed[_round][criteria[i]][_tokenIds[set][i]]) {\r\n          revert CannotRedeemItemAlreadyRedeemed();\r\n        }\r\n\r\n        /*\r\n          Verify that the caller owns each of the items involved in the\r\n          redemption claim.\r\n        */\r\n        if (ITiny721(criteria[i]).ownerOf(_tokenIds[set][i]) != _msgSender()) {\r\n          revert CannotRedeemUnownedItem();\r\n        }\r\n\r\n        // Flag each item as redeemed against this round.\r\n        redeemed[_round][criteria[i]][_tokenIds[set][i]] = true;\r\n      }\r\n\r\n      // Emit an event indicating which tokens were redeemed.\r\n      emit TokenRedemption(_round, _msgSender(), _tokenIds[set]);\r\n    }\r\n\r\n    // If there is a non-zero redemption price, perform the required token burn.\r\n    if (config.price > 0) {\r\n      IERC20(config.payingToken).safeTransferFrom(\r\n        _msgSender(),\r\n        burnDestination,\r\n        config.price * _tokenIds.length\r\n      );\r\n    }\r\n\r\n    // Mint the caller their redeemed items.\r\n    ITiny721(config.tokenOut).mint_Qgo(\r\n      _msgSender(),\r\n      config.amountOut * _tokenIds.length\r\n    );\r\n  }\r\n\r\n  /**\r\n    Allow the owner to sweep either Ether or a particular ERC-20 token from the\r\n    contract and send it to another address. This allows the owner of the shop\r\n    to withdraw their funds after the sale is completed.\r\n\r\n    @param _token The token to sweep the balance from; if a zero address is sent\r\n      then the contract's balance of Ether will be swept.\r\n    @param _destination The address to send the swept tokens to.\r\n    @param _amount The amount of token to sweep.\r\n  */\r\n  function sweep (\r\n    address _token,\r\n    address _destination,\r\n    uint256 _amount\r\n  ) external onlyOwner nonReentrant {\r\n\r\n    // A zero address means we should attempt to sweep Ether.\r\n    if (_token == address(0)) {\r\n      (bool success, ) = payable(_destination).call{ value: _amount }(\"\");\r\n      if (!success) { revert SweepingTransferFailed(); }\r\n\r\n    // Otherwise, we should try to sweep an ERC-20 token.\r\n    } else {\r\n      IERC20(_token).safeTransfer(_destination, _amount);\r\n    }\r\n  }\r\n}\r\n"
    },
    "@openzeppelin/contracts/access/Ownable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.1 (access/Ownable.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which provides a basic access control mechanism, where\n * there is an account (an owner) that can be granted exclusive access to\n * specific functions.\n *\n * By default, the owner account will be the one that deploys the contract. This\n * can later be changed with {transferOwnership}.\n *\n * This module is used through inheritance. It will make available the modifier\n * `onlyOwner`, which can be applied to your functions to restrict their use to\n * the owner.\n */\nabstract contract Ownable is Context {\n    address private _owner;\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    /**\n     * @dev Initializes the contract setting the deployer as the initial owner.\n     */\n    constructor() {\n        _transferOwnership(_msgSender());\n    }\n\n    /**\n     * @dev Returns the address of the current owner.\n     */\n    function owner() public view virtual returns (address) {\n        return _owner;\n    }\n\n    /**\n     * @dev Throws if called by any account other than the owner.\n     */\n    modifier onlyOwner() {\n        require(owner() == _msgSender(), \"Ownable: caller is not the owner\");\n        _;\n    }\n\n    /**\n     * @dev Leaves the contract without owner. It will not be possible to call\n     * `onlyOwner` functions anymore. Can only be called by the current owner.\n     *\n     * NOTE: Renouncing ownership will leave the contract without an owner,\n     * thereby removing any functionality that is only available to the owner.\n     */\n    function renounceOwnership() public virtual onlyOwner {\n        _transferOwnership(address(0));\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Can only be called by the current owner.\n     */\n    function transferOwnership(address newOwner) public virtual onlyOwner {\n        require(newOwner != address(0), \"Ownable: new owner is the zero address\");\n        _transferOwnership(newOwner);\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Internal function without access restriction.\n     */\n    function _transferOwnership(address newOwner) internal virtual {\n        address oldOwner = _owner;\n        _owner = newOwner;\n        emit OwnershipTransferred(oldOwner, newOwner);\n    }\n}\n"
    },
    "@openzeppelin/contracts/security/ReentrancyGuard.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Contract module that helps prevent reentrant calls to a function.\n *\n * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier\n * available, which can be applied to functions to make sure there are no nested\n * (reentrant) calls to them.\n *\n * Note that because there is a single `nonReentrant` guard, functions marked as\n * `nonReentrant` may not call one another. This can be worked around by making\n * those functions `private`, and then adding `external` `nonReentrant` entry\n * points to them.\n *\n * TIP: If you would like to learn more about reentrancy and alternative ways\n * to protect against it, check out our blog post\n * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].\n */\nabstract contract ReentrancyGuard {\n    // Booleans are more expensive than uint256 or any type that takes up a full\n    // word because each write operation emits an extra SLOAD to first read the\n    // slot's contents, replace the bits taken up by the boolean, and then write\n    // back. This is the compiler's defense against contract upgrades and\n    // pointer aliasing, and it cannot be disabled.\n\n    // The values being non-zero value makes deployment a bit more expensive,\n    // but in exchange the refund on every call to nonReentrant will be lower in\n    // amount. Since refunds are capped to a percentage of the total\n    // transaction's gas, it is best to keep them low in cases like this one, to\n    // increase the likelihood of the full refund coming into effect.\n    uint256 private constant _NOT_ENTERED = 1;\n    uint256 private constant _ENTERED = 2;\n\n    uint256 private _status;\n\n    constructor() {\n        _status = _NOT_ENTERED;\n    }\n\n    /**\n     * @dev Prevents a contract from calling itself, directly or indirectly.\n     * Calling a `nonReentrant` function from another `nonReentrant`\n     * function is not supported. It is possible to prevent this from happening\n     * by making the `nonReentrant` function external, and making it call a\n     * `private` function that does the actual work.\n     */\n    modifier nonReentrant() {\n        // On the first call to nonReentrant, _notEntered will be true\n        require(_status != _ENTERED, \"ReentrancyGuard: reentrant call\");\n\n        // Any calls to nonReentrant after this point will fail\n        _status = _ENTERED;\n\n        _;\n\n        // By storing the original value once again, a refund is triggered (see\n        // https://eips.ethereum.org/EIPS/eip-2200)\n        _status = _NOT_ENTERED;\n    }\n}\n"
    },
    "@openzeppelin/contracts/token/ERC20/IERC20.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Interface of the ERC20 standard as defined in the EIP.\n */\ninterface IERC20 {\n    /**\n     * @dev Returns the amount of tokens in existence.\n     */\n    function totalSupply() external view returns (uint256);\n\n    /**\n     * @dev Returns the amount of tokens owned by `account`.\n     */\n    function balanceOf(address account) external view returns (uint256);\n\n    /**\n     * @dev Moves `amount` tokens from the caller's account to `to`.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transfer(address to, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Returns the remaining number of tokens that `spender` will be\n     * allowed to spend on behalf of `owner` through {transferFrom}. This is\n     * zero by default.\n     *\n     * This value changes when {approve} or {transferFrom} are called.\n     */\n    function allowance(address owner, address spender) external view returns (uint256);\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * IMPORTANT: Beware that changing an allowance with this method brings the risk\n     * that someone may use both the old and the new allowance by unfortunate\n     * transaction ordering. One possible solution to mitigate this race\n     * condition is to first reduce the spender's allowance to 0 and set the\n     * desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     *\n     * Emits an {Approval} event.\n     */\n    function approve(address spender, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Moves `amount` tokens from `from` to `to` using the\n     * allowance mechanism. `amount` is then deducted from the caller's\n     * allowance.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transferFrom(\n        address from,\n        address to,\n        uint256 amount\n    ) external returns (bool);\n\n    /**\n     * @dev Emitted when `value` tokens are moved from one account (`from`) to\n     * another (`to`).\n     *\n     * Note that `value` may be zero.\n     */\n    event Transfer(address indexed from, address indexed to, uint256 value);\n\n    /**\n     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\n     * a call to {approve}. `value` is the new allowance.\n     */\n    event Approval(address indexed owner, address indexed spender, uint256 value);\n}\n"
    },
    "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.1 (token/ERC20/utils/SafeERC20.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../IERC20.sol\";\nimport \"../../../utils/Address.sol\";\n\n/**\n * @title SafeERC20\n * @dev Wrappers around ERC20 operations that throw on failure (when the token\n * contract returns false). Tokens that return no value (and instead revert or\n * throw on failure) are also supported, non-reverting calls are assumed to be\n * successful.\n * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,\n * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.\n */\nlibrary SafeERC20 {\n    using Address for address;\n\n    function safeTransfer(\n        IERC20 token,\n        address to,\n        uint256 value\n    ) internal {\n        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));\n    }\n\n    function safeTransferFrom(\n        IERC20 token,\n        address from,\n        address to,\n        uint256 value\n    ) internal {\n        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));\n    }\n\n    /**\n     * @dev Deprecated. This function has issues similar to the ones found in\n     * {IERC20-approve}, and its usage is discouraged.\n     *\n     * Whenever possible, use {safeIncreaseAllowance} and\n     * {safeDecreaseAllowance} instead.\n     */\n    function safeApprove(\n        IERC20 token,\n        address spender,\n        uint256 value\n    ) internal {\n        // safeApprove should only be called when setting an initial allowance,\n        // or when resetting it to zero. To increase and decrease it, use\n        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'\n        require(\n            (value == 0) || (token.allowance(address(this), spender) == 0),\n            \"SafeERC20: approve from non-zero to non-zero allowance\"\n        );\n        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));\n    }\n\n    function safeIncreaseAllowance(\n        IERC20 token,\n        address spender,\n        uint256 value\n    ) internal {\n        uint256 newAllowance = token.allowance(address(this), spender) + value;\n        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));\n    }\n\n    function safeDecreaseAllowance(\n        IERC20 token,\n        address spender,\n        uint256 value\n    ) internal {\n        unchecked {\n            uint256 oldAllowance = token.allowance(address(this), spender);\n            require(oldAllowance >= value, \"SafeERC20: decreased allowance below zero\");\n            uint256 newAllowance = oldAllowance - value;\n            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));\n        }\n    }\n\n    /**\n     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement\n     * on the return value: the return value is optional (but if data is returned, it must not be false).\n     * @param token The token targeted by the call.\n     * @param data The call data (encoded using abi.encode or one of its variants).\n     */\n    function _callOptionalReturn(IERC20 token, bytes memory data) private {\n        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since\n        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that\n        // the target address contains contract code and also asserts for success in the low-level call.\n\n        bytes memory returndata = address(token).functionCall(data, \"SafeERC20: low-level call failed\");\n        if (returndata.length > 0) {\n            // Return data is optional\n            require(abi.decode(returndata, (bool)), \"SafeERC20: ERC20 operation did not succeed\");\n        }\n    }\n}\n"
    },
    "contracts/interfaces/ITiny721.sol": {
      "content": "// SPDX-License-Identifier: GPL-3.0\r\npragma solidity ^0.8.11;\r\n\r\n/**\r\n  @title A minimalistic, gas-efficient ERC-721 implementation forked from the\r\n    `Super721` ERC-721 implementation used by SuperFarm.\r\n  @author Tim Clancy\r\n  @author 0xthrpw\r\n  @author Qazawat Zirak\r\n  @author Rostislav Khlebnikov\r\n\r\n  Compared to the original `Super721` implementation that this contract forked\r\n  from, this is a very pared-down contract that includes simple delegated\r\n  minting and transfer locks.\r\n\r\n  This contract includes the gas efficiency techniques graciously shared with\r\n  the world in the specific ERC-721 implementation by Chiru Labs that is being\r\n  called \"ERC-721A\" (https://github.com/chiru-labs/ERC721A). We have validated\r\n  this contract against their test cases.\r\n\r\n  February 8th, 2022.\r\n*/\r\ninterface ITiny721 {\r\n\r\n  /**\r\n    Return whether or not the transfer of a particular token ID `_id` is locked.\r\n\r\n    @param _id The ID of the token to check the lock status of.\r\n\r\n    @return Whether or not the particular token ID `_id` has transfers locked.\r\n  */\r\n  function transferLocks (\r\n    uint256 _id\r\n  ) external returns (bool);\r\n\r\n  /**\r\n    Provided with an address parameter, this function returns the number of all\r\n    tokens in this collection that are owned by the specified address.\r\n\r\n    @param _owner The address of the account for which we are checking balances\r\n  */\r\n  function balanceOf (\r\n    address _owner\r\n  ) external returns ( uint256 );\r\n\r\n  /**\r\n    Return the address that holds a particular token ID.\r\n\r\n    @param _id The token ID to check for the holding address of.\r\n\r\n    @return The address that holds the token with ID of `_id`.\r\n  */\r\n  function ownerOf (\r\n    uint256 _id\r\n  ) external returns (address);\r\n\r\n  /**\r\n    This function allows permissioned minters of this contract to mint one or\r\n    more tokens dictated by the `_amount` parameter. Any minted tokens are sent\r\n    to the `_recipient` address.\r\n\r\n    Note that tokens are always minted sequentially starting at one. That is,\r\n    the list of token IDs is always increasing and looks like [ 1, 2, 3... ].\r\n    Also note that per our use cases the intended recipient of these minted\r\n    items will always be externally-owned accounts and not other contracts. As a\r\n    result there is no safety check on whether or not the mint destination can\r\n    actually correctly handle an ERC-721 token.\r\n\r\n    @param _recipient The recipient of the tokens being minted.\r\n    @param _amount The amount of tokens to mint.\r\n  */\r\n  function mint_Qgo (\r\n    address _recipient,\r\n    uint256 _amount\r\n  ) external;\r\n\r\n  /**\r\n    This function allows an administrative caller to lock the transfer of\r\n    particular token IDs. This is designed for a non-escrow staking contract\r\n    that comes later to lock a user's NFT while still letting them keep it in\r\n    their wallet.\r\n\r\n    @param _id The ID of the token to lock.\r\n    @param _locked The status of the lock; true to lock, false to unlock.\r\n  */\r\n  function lockTransfer (\r\n    uint256 _id,\r\n    bool _locked\r\n  ) external;\r\n}\r\n"
    },
    "@openzeppelin/contracts/utils/Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal view virtual returns (address) {\n        return msg.sender;\n    }\n\n    function _msgData() internal view virtual returns (bytes calldata) {\n        return msg.data;\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/Address.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts (last updated v4.5.0) (utils/Address.sol)\n\npragma solidity ^0.8.1;\n\n/**\n * @dev Collection of functions related to the address type\n */\nlibrary Address {\n    /**\n     * @dev Returns true if `account` is a contract.\n     *\n     * [IMPORTANT]\n     * ====\n     * It is unsafe to assume that an address for which this function returns\n     * false is an externally-owned account (EOA) and not a contract.\n     *\n     * Among others, `isContract` will return false for the following\n     * types of addresses:\n     *\n     *  - an externally-owned account\n     *  - a contract in construction\n     *  - an address where a contract will be created\n     *  - an address where a contract lived, but was destroyed\n     * ====\n     *\n     * [IMPORTANT]\n     * ====\n     * You shouldn't rely on `isContract` to protect against flash loan attacks!\n     *\n     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets\n     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract\n     * constructor.\n     * ====\n     */\n    function isContract(address account) internal view returns (bool) {\n        // This method relies on extcodesize/address.code.length, which returns 0\n        // for contracts in construction, since the code is only stored at the end\n        // of the constructor execution.\n\n        return account.code.length > 0;\n    }\n\n    /**\n     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to\n     * `recipient`, forwarding all available gas and reverting on errors.\n     *\n     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost\n     * of certain opcodes, possibly making contracts go over the 2300 gas limit\n     * imposed by `transfer`, making them unable to receive funds via\n     * `transfer`. {sendValue} removes this limitation.\n     *\n     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].\n     *\n     * IMPORTANT: because control is transferred to `recipient`, care must be\n     * taken to not create reentrancy vulnerabilities. Consider using\n     * {ReentrancyGuard} or the\n     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].\n     */\n    function sendValue(address payable recipient, uint256 amount) internal {\n        require(address(this).balance >= amount, \"Address: insufficient balance\");\n\n        (bool success, ) = recipient.call{value: amount}(\"\");\n        require(success, \"Address: unable to send value, recipient may have reverted\");\n    }\n\n    /**\n     * @dev Performs a Solidity function call using a low level `call`. A\n     * plain `call` is an unsafe replacement for a function call: use this\n     * function instead.\n     *\n     * If `target` reverts with a revert reason, it is bubbled up by this\n     * function (like regular Solidity function calls).\n     *\n     * Returns the raw returned data. To convert to the expected return value,\n     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].\n     *\n     * Requirements:\n     *\n     * - `target` must be a contract.\n     * - calling `target` with `data` must not revert.\n     *\n     * _Available since v3.1._\n     */\n    function functionCall(address target, bytes memory data) internal returns (bytes memory) {\n        return functionCall(target, data, \"Address: low-level call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with\n     * `errorMessage` as a fallback revert reason when `target` reverts.\n     *\n     * _Available since v3.1._\n     */\n    function functionCall(\n        address target,\n        bytes memory data,\n        string memory errorMessage\n    ) internal returns (bytes memory) {\n        return functionCallWithValue(target, data, 0, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but also transferring `value` wei to `target`.\n     *\n     * Requirements:\n     *\n     * - the calling contract must have an ETH balance of at least `value`.\n     * - the called Solidity function must be `payable`.\n     *\n     * _Available since v3.1._\n     */\n    function functionCallWithValue(\n        address target,\n        bytes memory data,\n        uint256 value\n    ) internal returns (bytes memory) {\n        return functionCallWithValue(target, data, value, \"Address: low-level call with value failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but\n     * with `errorMessage` as a fallback revert reason when `target` reverts.\n     *\n     * _Available since v3.1._\n     */\n    function functionCallWithValue(\n        address target,\n        bytes memory data,\n        uint256 value,\n        string memory errorMessage\n    ) internal returns (bytes memory) {\n        require(address(this).balance >= value, \"Address: insufficient balance for call\");\n        require(isContract(target), \"Address: call to non-contract\");\n\n        (bool success, bytes memory returndata) = target.call{value: value}(data);\n        return verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but performing a static call.\n     *\n     * _Available since v3.3._\n     */\n    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {\n        return functionStaticCall(target, data, \"Address: low-level static call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],\n     * but performing a static call.\n     *\n     * _Available since v3.3._\n     */\n    function functionStaticCall(\n        address target,\n        bytes memory data,\n        string memory errorMessage\n    ) internal view returns (bytes memory) {\n        require(isContract(target), \"Address: static call to non-contract\");\n\n        (bool success, bytes memory returndata) = target.staticcall(data);\n        return verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but performing a delegate call.\n     *\n     * _Available since v3.4._\n     */\n    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {\n        return functionDelegateCall(target, data, \"Address: low-level delegate call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],\n     * but performing a delegate call.\n     *\n     * _Available since v3.4._\n     */\n    function functionDelegateCall(\n        address target,\n        bytes memory data,\n        string memory errorMessage\n    ) internal returns (bytes memory) {\n        require(isContract(target), \"Address: delegate call to non-contract\");\n\n        (bool success, bytes memory returndata) = target.delegatecall(data);\n        return verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the\n     * revert reason using the provided one.\n     *\n     * _Available since v4.3._\n     */\n    function verifyCallResult(\n        bool success,\n        bytes memory returndata,\n        string memory errorMessage\n    ) internal pure returns (bytes memory) {\n        if (success) {\n            return returndata;\n        } else {\n            // Look for revert reason and bubble it up if present\n            if (returndata.length > 0) {\n                // The easiest way to bubble the revert reason is using memory via assembly\n\n                assembly {\n                    let returndata_size := mload(returndata)\n                    revert(add(32, returndata), returndata_size)\n                }\n            } else {\n                revert(errorMessage);\n            }\n        }\n    }\n}\n"
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