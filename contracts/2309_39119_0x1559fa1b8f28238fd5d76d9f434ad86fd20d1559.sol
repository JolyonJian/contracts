{{
  "language": "Solidity",
  "settings": {
    "evmVersion": "berlin",
    "libraries": {},
    "metadata": {
      "bytecodeHash": "ipfs",
      "useLiteralContent": true
    },
    "optimizer": {
      "enabled": true,
      "runs": 999999
    },
    "remappings": [],
    "outputSelection": {
      "*": {
        "*": [
          "evm.bytecode",
          "evm.deployedBytecode",
          "abi"
        ]
      }
    }
  },
  "sources": {
    "contracts/EdenToken.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./interfaces/IEdenToken.sol\";\nimport \"./lib/AccessControl.sol\";\n\n/**\n * @title EdenToken\n * @dev ERC-20 with minting + add-ons to allow for offchain signing\n * See EIP-712, EIP-2612, and EIP-3009 for details\n */\ncontract EdenToken is AccessControl, IEdenToken {\n    /// @notice EIP-20 token name for this token\n    string public override name = \"Eden\";\n\n    /// @notice EIP-20 token symbol for this token\n    string public override symbol = \"EDEN\";\n\n    /// @notice EIP-20 token decimals for this token\n    uint8 public override constant decimals = 18;\n\n    /// @notice Total number of tokens in circulation\n    uint256 public override totalSupply;\n\n    /// @notice Max total supply\n    uint256 public constant override maxSupply = 250_000_000e18; // 250 million\n\n    /// @notice Minter role\n    bytes32 public constant MINTER_ROLE = keccak256(\"MINTER_ROLE\");\n\n    /// @notice Address which may change token metadata\n    address public override metadataManager;\n\n    /// @dev Allowance amounts on behalf of others\n    mapping (address => mapping (address => uint256)) public override allowance;\n\n    /// @dev Official record of token balanceOf for each account\n    mapping (address => uint256) public override balanceOf;\n\n    /// @notice The EIP-712 typehash for the contract's domain\n    /// keccak256(\"EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)\")\n    bytes32 public constant override DOMAIN_TYPEHASH = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f;\n    \n    /// @notice The EIP-712 version hash\n    /// keccak256(\"1\");\n    bytes32 public constant override VERSION_HASH = 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6;\n\n    /// @notice The EIP-712 typehash for permit (EIP-2612)\n    /// keccak256(\"Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)\");\n    bytes32 public constant override PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;\n\n    /// @notice The EIP-712 typehash for transferWithAuthorization (EIP-3009)\n    /// keccak256(\"TransferWithAuthorization(address from,address to,uint256 value,uint256 validAfter,uint256 validBefore,bytes32 nonce)\");\n    bytes32 public constant override TRANSFER_WITH_AUTHORIZATION_TYPEHASH = 0x7c7c6cdb67a18743f49ec6fa9b35f50d52ed05cbed4cc592e13b44501c1a2267;\n\n    /// @notice The EIP-712 typehash for receiveWithAuthorization (EIP-3009)\n    /// keccak256(\"ReceiveWithAuthorization(address from,address to,uint256 value,uint256 validAfter,uint256 validBefore,bytes32 nonce)\")\n    bytes32 public constant override RECEIVE_WITH_AUTHORIZATION_TYPEHASH = 0xd099cc98ef71107a616c4f0f941f04c322d8e254fe26b3c6668db87aae413de8;\n\n    /// @notice A record of states for signing / validating signatures\n    mapping (address => uint) public override nonces;\n\n    /// @dev authorizer address > nonce > state (true = used / false = unused)\n    mapping (address => mapping (bytes32 => bool)) public authorizationState;\n\n    /**\n     * @notice Construct a new Eden token\n     * @param _admin Default admin role\n     */\n    constructor(address _admin) {\n        metadataManager = _admin;\n        emit MetadataManagerChanged(address(0), metadataManager);\n        _setupRole(DEFAULT_ADMIN_ROLE, _admin);\n    }\n\n    /**\n     * @notice Change the metadataManager address\n     * @param newMetadataManager The address of the new metadata manager\n     * @return true if successful\n     */\n    function setMetadataManager(address newMetadataManager) external override returns (bool) {\n        require(msg.sender == metadataManager, \"Eden::setMetadataManager: only MM can change MM\");\n        emit MetadataManagerChanged(metadataManager, newMetadataManager);\n        metadataManager = newMetadataManager;\n        return true;\n    }\n\n    /**\n     * @notice Mint new tokens\n     * @param dst The address of the destination account\n     * @param amount The number of tokens to be minted\n     * @return Boolean indicating success of mint\n     */\n    function mint(address dst, uint256 amount) external override returns (bool) {\n        require(hasRole(MINTER_ROLE, msg.sender), \"Eden::mint: only minters can mint\");\n        require(totalSupply + amount <= maxSupply, \"Eden::mint: exceeds max supply\");\n        require(dst != address(0), \"Eden::mint: cannot transfer to the zero address\");\n\n        totalSupply = totalSupply + amount;\n        balanceOf[dst] = balanceOf[dst] + amount;\n        emit Transfer(address(0), dst, amount);\n        return true;\n    }\n\n    /**\n     * @notice Burn tokens\n     * @param amount The number of tokens to burn\n     * @return Boolean indicating success of burn\n     */\n    function burn(uint256 amount) external override returns (bool) {\n        balanceOf[msg.sender] = balanceOf[msg.sender] - amount;\n        totalSupply = totalSupply - amount;\n        \n        emit Transfer(msg.sender, address(0), amount);\n        return true;\n    }\n\n    /**\n     * @notice Update the token name and symbol\n     * @param tokenName The new name for the token\n     * @param tokenSymbol The new symbol for the token\n     * @return true if successful\n     */\n    function updateTokenMetadata(string memory tokenName, string memory tokenSymbol) external override returns (bool) {\n        require(msg.sender == metadataManager, \"Eden::updateTokenMeta: only MM can update token metadata\");\n        name = tokenName;\n        symbol = tokenSymbol;\n        emit TokenMetaUpdated(name, symbol);\n        return true;\n    }\n\n    /**\n     * @notice Approve `spender` to transfer up to `amount` from `src`\n     * @dev This will overwrite the approval amount for `spender`\n     * and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)\n     * It is recommended to use increaseAllowance and decreaseAllowance instead\n     * @param spender The address of the account which may transfer tokens\n     * @param amount The number of tokens that are approved (2^256-1 means infinite)\n     * @return Whether or not the approval succeeded\n     */\n    function approve(address spender, uint256 amount) external override returns (bool) {\n        _approve(msg.sender, spender, amount);\n        return true;\n    }\n\n    /**\n     * @notice Increase the allowance by a given amount\n     * @param spender Spender's address\n     * @param addedValue Amount of increase in allowance\n     * @return True if successful\n     */\n    function increaseAllowance(address spender, uint256 addedValue)\n        external override\n        returns (bool)\n    {\n        _approve(\n            msg.sender, \n            spender, \n            allowance[msg.sender][spender] + addedValue\n        );\n        return true;\n    }\n\n    /**\n     * @notice Decrease the allowance by a given amount\n     * @param spender Spender's address\n     * @param subtractedValue Amount of decrease in allowance\n     * @return True if successful\n     */\n    function decreaseAllowance(address spender, uint256 subtractedValue)\n        external override\n        returns (bool)\n    {\n        _approve(\n            msg.sender,\n            spender,\n            allowance[msg.sender][spender] - subtractedValue\n        );\n        return true;\n    }\n\n    /**\n     * @notice Triggers an approval from owner to spender\n     * @param owner The address to approve from\n     * @param spender The address to be approved\n     * @param value The number of tokens that are approved (2^256-1 means infinite)\n     * @param deadline The time at which to expire the signature\n     * @param v The recovery byte of the signature\n     * @param r Half of the ECDSA signature pair\n     * @param s Half of the ECDSA signature pair\n     */\n    function permit(\n        address owner, \n        address spender, \n        uint256 value, \n        uint256 deadline, \n        uint8 v, \n        bytes32 r, \n        bytes32 s\n    ) external override {\n        require(deadline >= block.timestamp, \"Eden::permit: signature expired\");\n\n        bytes32 encodeData = keccak256(abi.encode(PERMIT_TYPEHASH, owner, spender, value, nonces[owner]++, deadline));\n        _validateSignedData(owner, encodeData, v, r, s);\n\n        _approve(owner, spender, value);\n    }\n\n    /**\n     * @notice Transfer `amount` tokens from `msg.sender` to `dst`\n     * @param dst The address of the destination account\n     * @param amount The number of tokens to transfer\n     * @return Whether or not the transfer succeeded\n     */\n    function transfer(address dst, uint256 amount) external override returns (bool) {\n        _transferTokens(msg.sender, dst, amount);\n        return true;\n    }\n\n    /**\n     * @notice Transfer `amount` tokens from `src` to `dst`\n     * @param src The address of the source account\n     * @param dst The address of the destination account\n     * @param amount The number of tokens to transfer\n     * @return Whether or not the transfer succeeded\n     */\n    function transferFrom(address src, address dst, uint256 amount) external override returns (bool) {\n        address spender = msg.sender;\n        uint256 spenderAllowance = allowance[src][spender];\n\n        if (spender != src && spenderAllowance != type(uint256).max) {\n            uint256 newAllowance = spenderAllowance - amount;\n            allowance[src][spender] = newAllowance;\n\n            emit Approval(src, spender, newAllowance);\n        }\n\n        _transferTokens(src, dst, amount);\n        return true;\n    }\n\n    /**\n     * @notice Transfer tokens with a signed authorization\n     * @param from Payer's address (Authorizer)\n     * @param to Payee's address\n     * @param value Amount to be transferred\n     * @param validAfter The time after which this is valid (unix time)\n     * @param validBefore The time before which this is valid (unix time)\n     * @param nonce Unique nonce\n     * @param v The recovery byte of the signature\n     * @param r Half of the ECDSA signature pair\n     * @param s Half of the ECDSA signature pair\n     */\n    function transferWithAuthorization(\n        address from,\n        address to,\n        uint256 value,\n        uint256 validAfter,\n        uint256 validBefore,\n        bytes32 nonce,\n        uint8 v,\n        bytes32 r,\n        bytes32 s\n    ) external override {\n        require(block.timestamp > validAfter, \"Eden::transferWithAuth: auth not yet valid\");\n        require(block.timestamp < validBefore, \"Eden::transferWithAuth: auth expired\");\n        require(!authorizationState[from][nonce],  \"Eden::transferWithAuth: auth already used\");\n\n        bytes32 encodeData = keccak256(abi.encode(TRANSFER_WITH_AUTHORIZATION_TYPEHASH, from, to, value, validAfter, validBefore, nonce));\n        _validateSignedData(from, encodeData, v, r, s);\n\n        authorizationState[from][nonce] = true;\n        emit AuthorizationUsed(from, nonce);\n\n        _transferTokens(from, to, value);\n    }\n\n    /**\n     * @notice Receive a transfer with a signed authorization from the payer\n     * @dev This has an additional check to ensure that the payee's address matches\n     * the caller of this function to prevent front-running attacks.\n     * @param from Payer's address (Authorizer)\n     * @param to Payee's address\n     * @param value Amount to be transferred\n     * @param validAfter The time after which this is valid (unix time)\n     * @param validBefore The time before which this is valid (unix time)\n     * @param nonce Unique nonce\n     * @param v v of the signature\n     * @param r r of the signature\n     * @param s s of the signature\n     */\n    function receiveWithAuthorization(\n        address from,\n        address to,\n        uint256 value,\n        uint256 validAfter,\n        uint256 validBefore,\n        bytes32 nonce,\n        uint8 v,\n        bytes32 r,\n        bytes32 s\n    ) external override {\n        require(to == msg.sender, \"Eden::receiveWithAuth: caller must be the payee\");\n        require(block.timestamp > validAfter, \"Eden::receiveWithAuth: auth not yet valid\");\n        require(block.timestamp < validBefore, \"Eden::receiveWithAuth: auth expired\");\n        require(!authorizationState[from][nonce],  \"Eden::receiveWithAuth: auth already used\");\n\n        bytes32 encodeData = keccak256(abi.encode(RECEIVE_WITH_AUTHORIZATION_TYPEHASH, from, to, value, validAfter, validBefore, nonce));\n        _validateSignedData(from, encodeData, v, r, s);\n\n        authorizationState[from][nonce] = true;\n        emit AuthorizationUsed(from, nonce);\n\n        _transferTokens(from, to, value);\n    }\n\n    /**\n     * @notice EIP-712 Domain separator\n     * @return Separator\n     */\n    function getDomainSeparator() public view override returns (bytes32) {\n        return keccak256(\n            abi.encode(\n                DOMAIN_TYPEHASH,\n                keccak256(bytes(name)),\n                VERSION_HASH,\n                block.chainid,\n                address(this)\n            )\n        );\n    }\n\n    /**\n     * @notice Recovers address from signed data and validates the signature\n     * @param signer Address that signed the data\n     * @param encodeData Data signed by the address\n     * @param v The recovery byte of the signature\n     * @param r Half of the ECDSA signature pair\n     * @param s Half of the ECDSA signature pair\n     */\n    function _validateSignedData(address signer, bytes32 encodeData, uint8 v, bytes32 r, bytes32 s) internal view {\n        bytes32 digest = keccak256(\n            abi.encodePacked(\n                \"\\x19\\x01\",\n                getDomainSeparator(),\n                encodeData\n            )\n        );\n        address recoveredAddress = ecrecover(digest, v, r, s);\n        // Explicitly disallow authorizations for address(0) as ecrecover returns address(0) on malformed messages\n        require(recoveredAddress != address(0) && recoveredAddress == signer, \"Eden::validateSig: invalid signature\");\n    }\n\n    /**\n     * @notice Approval implementation\n     * @param owner The address of the account which owns tokens\n     * @param spender The address of the account which may transfer tokens\n     * @param amount The number of tokens that are approved (2^256-1 means infinite)\n     */\n    function _approve(address owner, address spender, uint256 amount) internal {\n        require(owner != address(0), \"Eden::_approve: approve from the zero address\");\n        require(spender != address(0), \"Eden::_approve: approve to the zero address\");\n        allowance[owner][spender] = amount;\n        emit Approval(owner, spender, amount);\n    }\n\n    /**\n     * @notice Transfer implementation\n     * @param from The address of the account which owns tokens\n     * @param to The address of the account which is receiving tokens\n     * @param value The number of tokens that are being transferred\n     */\n    function _transferTokens(address from, address to, uint256 value) internal {\n        require(to != address(0), \"Eden::_transferTokens: cannot transfer to the zero address\");\n\n        balanceOf[from] = balanceOf[from] - value;\n        balanceOf[to] = balanceOf[to] + value;\n        emit Transfer(from, to, value);\n    }\n}"
    },
    "contracts/interfaces/IAccessControl.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\n/**\n * @dev External interface of AccessControl declared to support ERC165 detection.\n */\ninterface IAccessControl {\n    function hasRole(bytes32 role, address account) external view returns (bool);\n\n    function getRoleAdmin(bytes32 role) external view returns (bytes32);\n\n    function grantRole(bytes32 role, address account) external;\n\n    function revokeRole(bytes32 role, address account) external;\n\n    function renounceRole(bytes32 role, address account) external;\n}"
    },
    "contracts/interfaces/IERC165.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\n/**\n * @dev Interface of the ERC165 standard, as defined in the\n * https://eips.ethereum.org/EIPS/eip-165[EIP].\n *\n * Implementers can declare support of contract interfaces, which can then be\n * queried by others ({ERC165Checker}).\n *\n * For an implementation, see {ERC165}.\n */\ninterface IERC165 {\n    /**\n     * @dev Returns true if this contract implements the interface defined by\n     * `interfaceId`. See the corresponding\n     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]\n     * to learn more about how these ids are created.\n     *\n     * This function call must use less than 30 000 gas.\n     */\n    function supportsInterface(bytes4 interfaceId) external view returns (bool);\n}\n"
    },
    "contracts/interfaces/IERC20.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Interface of the ERC20 standard as defined in the EIP.\n */\ninterface IERC20 {\n    /**\n     * @dev Returns the amount of tokens in existence.\n     */\n    function totalSupply() external view returns (uint256);\n\n    /**\n     * @dev Returns the amount of tokens owned by `account`.\n     */\n    function balanceOf(address account) external view returns (uint256);\n\n    /**\n     * @dev Moves `amount` tokens from the caller's account to `recipient`.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transfer(address recipient, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Returns the remaining number of tokens that `spender` will be\n     * allowed to spend on behalf of `owner` through {transferFrom}. This is\n     * zero by default.\n     *\n     * This value changes when {approve} or {transferFrom} are called.\n     */\n    function allowance(address owner, address spender) external view returns (uint256);\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * IMPORTANT: Beware that changing an allowance with this method brings the risk\n     * that someone may use both the old and the new allowance by unfortunate\n     * transaction ordering. One possible solution to mitigate this race\n     * condition is to first reduce the spender's allowance to 0 and set the\n     * desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     *\n     * Emits an {Approval} event.\n     */\n    function approve(address spender, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Moves `amount` tokens from `sender` to `recipient` using the\n     * allowance mechanism. `amount` is then deducted from the caller's\n     * allowance.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transferFrom(\n        address sender,\n        address recipient,\n        uint256 amount\n    ) external returns (bool);\n\n    /**\n     * @dev Emitted when `value` tokens are moved from one account (`from`) to\n     * another (`to`).\n     *\n     * Note that `value` may be zero.\n     */\n    event Transfer(address indexed from, address indexed to, uint256 value);\n\n    /**\n     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\n     * a call to {approve}. `value` is the new allowance.\n     */\n    event Approval(address indexed owner, address indexed spender, uint256 value);\n}\n"
    },
    "contracts/interfaces/IERC20Burnable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"./IERC20.sol\";\n\ninterface IERC20Burnable is IERC20 {\n    function burn(uint256 amount) external returns (bool);\n}\n"
    },
    "contracts/interfaces/IERC20Extended.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./IERC20Metadata.sol\";\nimport \"./IERC20Mintable.sol\";\nimport \"./IERC20Burnable.sol\";\nimport \"./IERC20Permit.sol\";\nimport \"./IERC20TransferWithAuth.sol\";\nimport \"./IERC20SafeAllowance.sol\";\n\ninterface IERC20Extended is \n    IERC20Metadata, \n    IERC20Mintable, \n    IERC20Burnable, \n    IERC20Permit,\n    IERC20TransferWithAuth,\n    IERC20SafeAllowance \n{}\n    "
    },
    "contracts/interfaces/IERC20Metadata.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./IERC20.sol\";\n\ninterface IERC20Metadata is IERC20 {\n    /**\n     * @dev Returns the name of the token.\n     */\n    function name() external view returns (string memory);\n\n    /**\n     * @dev Returns the symbol of the token.\n     */\n    function symbol() external view returns (string memory);\n\n    /**\n     * @dev Returns the decimals places of the token.\n     */\n    function decimals() external view returns (uint8);\n}\n"
    },
    "contracts/interfaces/IERC20Mintable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"./IERC20.sol\";\n\ninterface IERC20Mintable is IERC20 {\n    function mint(address dst, uint256 amount) external returns (bool);\n}\n"
    },
    "contracts/interfaces/IERC20Permit.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./IERC20.sol\";\n\ninterface IERC20Permit is IERC20 {\n    function getDomainSeparator() external view returns (bytes32);\n    function DOMAIN_TYPEHASH() external view returns (bytes32);\n    function VERSION_HASH() external view returns (bytes32);\n    function PERMIT_TYPEHASH() external view returns (bytes32);\n    function nonces(address) external view returns (uint);\n    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;\n}"
    },
    "contracts/interfaces/IERC20SafeAllowance.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./IERC20.sol\";\n\ninterface IERC20SafeAllowance is IERC20 {\n    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);\n    function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool);\n}"
    },
    "contracts/interfaces/IERC20TransferWithAuth.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./IERC20.sol\";\n\ninterface IERC20TransferWithAuth is IERC20 {\n    function transferWithAuthorization(address from, address to, uint256 value, uint256 validAfter, uint256 validBefore, bytes32 nonce, uint8 v, bytes32 r, bytes32 s) external;\n    function receiveWithAuthorization(address from, address to, uint256 value, uint256 validAfter, uint256 validBefore, bytes32 nonce, uint8 v, bytes32 r, bytes32 s) external;\n    function TRANSFER_WITH_AUTHORIZATION_TYPEHASH() external view returns (bytes32);\n    function RECEIVE_WITH_AUTHORIZATION_TYPEHASH() external view returns (bytes32);\n    event AuthorizationUsed(address indexed authorizer, bytes32 indexed nonce);\n}"
    },
    "contracts/interfaces/IEdenToken.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"./IERC20Extended.sol\";\n\ninterface IEdenToken is IERC20Extended {\n    function maxSupply() external view returns (uint256);\n    function updateTokenMetadata(string memory tokenName, string memory tokenSymbol) external returns (bool);\n    function metadataManager() external view returns (address);\n    function setMetadataManager(address newMetadataManager) external returns (bool);\n    event MetadataManagerChanged(address indexed oldManager, address indexed newManager);\n    event TokenMetaUpdated(string indexed name, string indexed symbol);\n}"
    },
    "contracts/lib/AccessControl.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\nimport \"../interfaces/IAccessControl.sol\";\nimport \"./Context.sol\";\nimport \"./Strings.sol\";\nimport \"./ERC165.sol\";\n\n/**\n * @dev Contract module that allows children to implement role-based access\n * control mechanisms. This is a lightweight version that doesn't allow enumerating role\n * members except through off-chain means by accessing the contract event logs. Some\n * applications may benefit from on-chain enumerability, for those cases see\n * {AccessControlEnumerable}.\n *\n * Roles are referred to by their `bytes32` identifier. These should be exposed\n * in the external API and be unique. The best way to achieve this is by\n * using `public constant` hash digests:\n *\n * ```\n * bytes32 public constant MY_ROLE = keccak256(\"MY_ROLE\");\n * ```\n *\n * Roles can be used to represent a set of permissions. To restrict access to a\n * function call, use {hasRole}:\n *\n * ```\n * function foo() public {\n *     require(hasRole(MY_ROLE, msg.sender));\n *     ...\n * }\n * ```\n *\n * Roles can be granted and revoked dynamically via the {grantRole} and\n * {revokeRole} functions. Each role has an associated admin role, and only\n * accounts that have a role's admin role can call {grantRole} and {revokeRole}.\n *\n * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means\n * that only accounts with this role will be able to grant or revoke other\n * roles. More complex role relationships can be created by using\n * {_setRoleAdmin}.\n *\n * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to\n * grant and revoke this role. Extra precautions should be taken to secure\n * accounts that have been granted it.\n */\nabstract contract AccessControl is Context, IAccessControl, ERC165 {\n    struct RoleData {\n        mapping(address => bool) members;\n        bytes32 adminRole;\n    }\n\n    mapping(bytes32 => RoleData) private _roles;\n\n    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;\n\n    /**\n     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`\n     *\n     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite\n     * {RoleAdminChanged} not being emitted signaling this.\n     *\n     * _Available since v3.1._\n     */\n    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);\n\n    /**\n     * @dev Emitted when `account` is granted `role`.\n     *\n     * `sender` is the account that originated the contract call, an admin role\n     * bearer except when using {_setupRole}.\n     */\n    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);\n\n    /**\n     * @dev Emitted when `account` is revoked `role`.\n     *\n     * `sender` is the account that originated the contract call:\n     *   - if using `revokeRole`, it is the admin role bearer\n     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)\n     */\n    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);\n\n    /**\n     * @dev Modifier that checks that an account has a specific role. Reverts\n     * with a standardized message including the required role.\n     *\n     * The format of the revert reason is given by the following regular expression:\n     *\n     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/\n     *\n     * _Available since v4.1._\n     */\n    modifier onlyRole(bytes32 role) {\n        _checkRole(role, _msgSender());\n        _;\n    }\n\n    /**\n     * @dev See {IERC165-supportsInterface}.\n     */\n    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {\n        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);\n    }\n\n    /**\n     * @dev Returns `true` if `account` has been granted `role`.\n     */\n    function hasRole(bytes32 role, address account) public view override returns (bool) {\n        return _roles[role].members[account];\n    }\n\n    /**\n     * @dev Revert with a standard message if `account` is missing `role`.\n     *\n     * The format of the revert reason is given by the following regular expression:\n     *\n     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/\n     */\n    function _checkRole(bytes32 role, address account) internal view {\n        if (!hasRole(role, account)) {\n            revert(\n                string(\n                    abi.encodePacked(\n                        \"AccessControl: account \",\n                        Strings.toHexString(uint160(account), 20),\n                        \" is missing role \",\n                        Strings.toHexString(uint256(role), 32)\n                    )\n                )\n            );\n        }\n    }\n\n    /**\n     * @dev Returns the admin role that controls `role`. See {grantRole} and\n     * {revokeRole}.\n     *\n     * To change a role's admin, use {_setRoleAdmin}.\n     */\n    function getRoleAdmin(bytes32 role) public view override returns (bytes32) {\n        return _roles[role].adminRole;\n    }\n\n    /**\n     * @dev Grants `role` to `account`.\n     *\n     * If `account` had not been already granted `role`, emits a {RoleGranted}\n     * event.\n     *\n     * Requirements:\n     *\n     * - the caller must have ``role``'s admin role.\n     */\n    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {\n        _grantRole(role, account);\n    }\n\n    /**\n     * @dev Revokes `role` from `account`.\n     *\n     * If `account` had been granted `role`, emits a {RoleRevoked} event.\n     *\n     * Requirements:\n     *\n     * - the caller must have ``role``'s admin role.\n     */\n    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {\n        _revokeRole(role, account);\n    }\n\n    /**\n     * @dev Revokes `role` from the calling account.\n     *\n     * Roles are often managed via {grantRole} and {revokeRole}: this function's\n     * purpose is to provide a mechanism for accounts to lose their privileges\n     * if they are compromised (such as when a trusted device is misplaced).\n     *\n     * If the calling account had been granted `role`, emits a {RoleRevoked}\n     * event.\n     *\n     * Requirements:\n     *\n     * - the caller must be `account`.\n     */\n    function renounceRole(bytes32 role, address account) public virtual override {\n        require(account == _msgSender(), \"AccessControl: can only renounce roles for self\");\n\n        _revokeRole(role, account);\n    }\n\n    /**\n     * @dev Grants `role` to `account`.\n     *\n     * If `account` had not been already granted `role`, emits a {RoleGranted}\n     * event. Note that unlike {grantRole}, this function doesn't perform any\n     * checks on the calling account.\n     *\n     * [WARNING]\n     * ====\n     * This function should only be called from the constructor when setting\n     * up the initial roles for the system.\n     *\n     * Using this function in any other way is effectively circumventing the admin\n     * system imposed by {AccessControl}.\n     * ====\n     */\n    function _setupRole(bytes32 role, address account) internal virtual {\n        _grantRole(role, account);\n    }\n\n    /**\n     * @dev Sets `adminRole` as ``role``'s admin role.\n     *\n     * Emits a {RoleAdminChanged} event.\n     */\n    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {\n        bytes32 previousAdminRole = getRoleAdmin(role);\n        _roles[role].adminRole = adminRole;\n        emit RoleAdminChanged(role, previousAdminRole, adminRole);\n    }\n\n    function _grantRole(bytes32 role, address account) private {\n        if (!hasRole(role, account)) {\n            _roles[role].members[account] = true;\n            emit RoleGranted(role, account, _msgSender());\n        }\n    }\n\n    function _revokeRole(bytes32 role, address account) private {\n        if (hasRole(role, account)) {\n            _roles[role].members[account] = false;\n            emit RoleRevoked(role, account, _msgSender());\n        }\n    }\n}"
    },
    "contracts/lib/Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity ^0.8.0;\n\n/**\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal view virtual returns (address) {\n        return msg.sender;\n    }\n\n    function _msgData() internal view virtual returns (bytes calldata) {\n        return msg.data;\n    }\n}"
    },
    "contracts/lib/ERC165.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"../interfaces/IERC165.sol\";\n\n/**\n * @dev Implementation of the {IERC165} interface.\n *\n * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check\n * for the additional interface id that will be supported. For example:\n *\n * ```solidity\n * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {\n *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);\n * }\n * ```\n *\n * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.\n */\nabstract contract ERC165 is IERC165 {\n    /**\n     * @dev See {IERC165-supportsInterface}.\n     */\n    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {\n        return interfaceId == type(IERC165).interfaceId;\n    }\n}\n"
    },
    "contracts/lib/Strings.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev String operations.\n */\nlibrary Strings {\n    bytes16 private constant _HEX_SYMBOLS = \"0123456789abcdef\";\n\n    /**\n     * @dev Converts a `uint256` to its ASCII `string` decimal representation.\n     */\n    function toString(uint256 value) internal pure returns (string memory) {\n        // Inspired by OraclizeAPI's implementation - MIT licence\n        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol\n\n        if (value == 0) {\n            return \"0\";\n        }\n        uint256 temp = value;\n        uint256 digits;\n        while (temp != 0) {\n            digits++;\n            temp /= 10;\n        }\n        bytes memory buffer = new bytes(digits);\n        while (value != 0) {\n            digits -= 1;\n            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));\n            value /= 10;\n        }\n        return string(buffer);\n    }\n\n    /**\n     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.\n     */\n    function toHexString(uint256 value) internal pure returns (string memory) {\n        if (value == 0) {\n            return \"0x00\";\n        }\n        uint256 temp = value;\n        uint256 length = 0;\n        while (temp != 0) {\n            length++;\n            temp >>= 8;\n        }\n        return toHexString(value, length);\n    }\n\n    /**\n     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.\n     */\n    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {\n        bytes memory buffer = new bytes(2 * length + 2);\n        buffer[0] = \"0\";\n        buffer[1] = \"x\";\n        for (uint256 i = 2 * length + 1; i > 1; --i) {\n            buffer[i] = _HEX_SYMBOLS[value & 0xf];\n            value >>= 4;\n        }\n        require(value == 0, \"Strings: hex length insufficient\");\n        return string(buffer);\n    }\n}\n"
    }
  }
}}