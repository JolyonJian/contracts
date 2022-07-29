{{
  "language": "Solidity",
  "settings": {
    "evmVersion": "istanbul",
    "libraries": {},
    "metadata": {
      "bytecodeHash": "ipfs",
      "useLiteralContent": true
    },
    "optimizer": {
      "enabled": true,
      "runs": 200
    },
    "remappings": [],
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
    }
  },
  "sources": {
    "@openzeppelin/contracts/access/Ownable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (access/Ownable.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which provides a basic access control mechanism, where\n * there is an account (an owner) that can be granted exclusive access to\n * specific functions.\n *\n * By default, the owner account will be the one that deploys the contract. This\n * can later be changed with {transferOwnership}.\n *\n * This module is used through inheritance. It will make available the modifier\n * `onlyOwner`, which can be applied to your functions to restrict their use to\n * the owner.\n */\nabstract contract Ownable is Context {\n    address private _owner;\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    /**\n     * @dev Initializes the contract setting the deployer as the initial owner.\n     */\n    constructor() {\n        _transferOwnership(_msgSender());\n    }\n\n    /**\n     * @dev Returns the address of the current owner.\n     */\n    function owner() public view virtual returns (address) {\n        return _owner;\n    }\n\n    /**\n     * @dev Throws if called by any account other than the owner.\n     */\n    modifier onlyOwner() {\n        require(owner() == _msgSender(), \"Ownable: caller is not the owner\");\n        _;\n    }\n\n    /**\n     * @dev Leaves the contract without owner. It will not be possible to call\n     * `onlyOwner` functions anymore. Can only be called by the current owner.\n     *\n     * NOTE: Renouncing ownership will leave the contract without an owner,\n     * thereby removing any functionality that is only available to the owner.\n     */\n    function renounceOwnership() public virtual onlyOwner {\n        _transferOwnership(address(0));\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Can only be called by the current owner.\n     */\n    function transferOwnership(address newOwner) public virtual onlyOwner {\n        require(newOwner != address(0), \"Ownable: new owner is the zero address\");\n        _transferOwnership(newOwner);\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Internal function without access restriction.\n     */\n    function _transferOwnership(address newOwner) internal virtual {\n        address oldOwner = _owner;\n        _owner = newOwner;\n        emit OwnershipTransferred(oldOwner, newOwner);\n    }\n}\n"
    },
    "@openzeppelin/contracts/security/ReentrancyGuard.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (security/ReentrancyGuard.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Contract module that helps prevent reentrant calls to a function.\n *\n * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier\n * available, which can be applied to functions to make sure there are no nested\n * (reentrant) calls to them.\n *\n * Note that because there is a single `nonReentrant` guard, functions marked as\n * `nonReentrant` may not call one another. This can be worked around by making\n * those functions `private`, and then adding `external` `nonReentrant` entry\n * points to them.\n *\n * TIP: If you would like to learn more about reentrancy and alternative ways\n * to protect against it, check out our blog post\n * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].\n */\nabstract contract ReentrancyGuard {\n    // Booleans are more expensive than uint256 or any type that takes up a full\n    // word because each write operation emits an extra SLOAD to first read the\n    // slot's contents, replace the bits taken up by the boolean, and then write\n    // back. This is the compiler's defense against contract upgrades and\n    // pointer aliasing, and it cannot be disabled.\n\n    // The values being non-zero value makes deployment a bit more expensive,\n    // but in exchange the refund on every call to nonReentrant will be lower in\n    // amount. Since refunds are capped to a percentage of the total\n    // transaction's gas, it is best to keep them low in cases like this one, to\n    // increase the likelihood of the full refund coming into effect.\n    uint256 private constant _NOT_ENTERED = 1;\n    uint256 private constant _ENTERED = 2;\n\n    uint256 private _status;\n\n    constructor() {\n        _status = _NOT_ENTERED;\n    }\n\n    /**\n     * @dev Prevents a contract from calling itself, directly or indirectly.\n     * Calling a `nonReentrant` function from another `nonReentrant`\n     * function is not supported. It is possible to prevent this from happening\n     * by making the `nonReentrant` function external, and making it call a\n     * `private` function that does the actual work.\n     */\n    modifier nonReentrant() {\n        // On the first call to nonReentrant, _notEntered will be true\n        require(_status != _ENTERED, \"ReentrancyGuard: reentrant call\");\n\n        // Any calls to nonReentrant after this point will fail\n        _status = _ENTERED;\n\n        _;\n\n        // By storing the original value once again, a refund is triggered (see\n        // https://eips.ethereum.org/EIPS/eip-2200)\n        _status = _NOT_ENTERED;\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (utils/Context.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal view virtual returns (address) {\n        return msg.sender;\n    }\n\n    function _msgData() internal view virtual returns (bytes calldata) {\n        return msg.data;\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/Strings.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (utils/Strings.sol)\n\npragma solidity ^0.8.0;\n\n/**\n * @dev String operations.\n */\nlibrary Strings {\n    bytes16 private constant _HEX_SYMBOLS = \"0123456789abcdef\";\n\n    /**\n     * @dev Converts a `uint256` to its ASCII `string` decimal representation.\n     */\n    function toString(uint256 value) internal pure returns (string memory) {\n        // Inspired by OraclizeAPI's implementation - MIT licence\n        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol\n\n        if (value == 0) {\n            return \"0\";\n        }\n        uint256 temp = value;\n        uint256 digits;\n        while (temp != 0) {\n            digits++;\n            temp /= 10;\n        }\n        bytes memory buffer = new bytes(digits);\n        while (value != 0) {\n            digits -= 1;\n            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));\n            value /= 10;\n        }\n        return string(buffer);\n    }\n\n    /**\n     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.\n     */\n    function toHexString(uint256 value) internal pure returns (string memory) {\n        if (value == 0) {\n            return \"0x00\";\n        }\n        uint256 temp = value;\n        uint256 length = 0;\n        while (temp != 0) {\n            length++;\n            temp >>= 8;\n        }\n        return toHexString(value, length);\n    }\n\n    /**\n     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.\n     */\n    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {\n        bytes memory buffer = new bytes(2 * length + 2);\n        buffer[0] = \"0\";\n        buffer[1] = \"x\";\n        for (uint256 i = 2 * length + 1; i > 1; --i) {\n            buffer[i] = _HEX_SYMBOLS[value & 0xf];\n            value >>= 4;\n        }\n        require(value == 0, \"Strings: hex length insufficient\");\n        return string(buffer);\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/cryptography/ECDSA.sol": {
      "content": "// SPDX-License-Identifier: MIT\n// OpenZeppelin Contracts v4.4.0 (utils/cryptography/ECDSA.sol)\n\npragma solidity ^0.8.0;\n\nimport \"../Strings.sol\";\n\n/**\n * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.\n *\n * These functions can be used to verify that a message was signed by the holder\n * of the private keys of a given address.\n */\nlibrary ECDSA {\n    enum RecoverError {\n        NoError,\n        InvalidSignature,\n        InvalidSignatureLength,\n        InvalidSignatureS,\n        InvalidSignatureV\n    }\n\n    function _throwError(RecoverError error) private pure {\n        if (error == RecoverError.NoError) {\n            return; // no error: do nothing\n        } else if (error == RecoverError.InvalidSignature) {\n            revert(\"ECDSA: invalid signature\");\n        } else if (error == RecoverError.InvalidSignatureLength) {\n            revert(\"ECDSA: invalid signature length\");\n        } else if (error == RecoverError.InvalidSignatureS) {\n            revert(\"ECDSA: invalid signature 's' value\");\n        } else if (error == RecoverError.InvalidSignatureV) {\n            revert(\"ECDSA: invalid signature 'v' value\");\n        }\n    }\n\n    /**\n     * @dev Returns the address that signed a hashed message (`hash`) with\n     * `signature` or error string. This address can then be used for verification purposes.\n     *\n     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:\n     * this function rejects them by requiring the `s` value to be in the lower\n     * half order, and the `v` value to be either 27 or 28.\n     *\n     * IMPORTANT: `hash` _must_ be the result of a hash operation for the\n     * verification to be secure: it is possible to craft signatures that\n     * recover to arbitrary addresses for non-hashed data. A safe way to ensure\n     * this is by receiving a hash of the original message (which may otherwise\n     * be too long), and then calling {toEthSignedMessageHash} on it.\n     *\n     * Documentation for signature generation:\n     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]\n     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]\n     *\n     * _Available since v4.3._\n     */\n    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError) {\n        // Check the signature length\n        // - case 65: r,s,v signature (standard)\n        // - case 64: r,vs signature (cf https://eips.ethereum.org/EIPS/eip-2098) _Available since v4.1._\n        if (signature.length == 65) {\n            bytes32 r;\n            bytes32 s;\n            uint8 v;\n            // ecrecover takes the signature parameters, and the only way to get them\n            // currently is to use assembly.\n            assembly {\n                r := mload(add(signature, 0x20))\n                s := mload(add(signature, 0x40))\n                v := byte(0, mload(add(signature, 0x60)))\n            }\n            return tryRecover(hash, v, r, s);\n        } else if (signature.length == 64) {\n            bytes32 r;\n            bytes32 vs;\n            // ecrecover takes the signature parameters, and the only way to get them\n            // currently is to use assembly.\n            assembly {\n                r := mload(add(signature, 0x20))\n                vs := mload(add(signature, 0x40))\n            }\n            return tryRecover(hash, r, vs);\n        } else {\n            return (address(0), RecoverError.InvalidSignatureLength);\n        }\n    }\n\n    /**\n     * @dev Returns the address that signed a hashed message (`hash`) with\n     * `signature`. This address can then be used for verification purposes.\n     *\n     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:\n     * this function rejects them by requiring the `s` value to be in the lower\n     * half order, and the `v` value to be either 27 or 28.\n     *\n     * IMPORTANT: `hash` _must_ be the result of a hash operation for the\n     * verification to be secure: it is possible to craft signatures that\n     * recover to arbitrary addresses for non-hashed data. A safe way to ensure\n     * this is by receiving a hash of the original message (which may otherwise\n     * be too long), and then calling {toEthSignedMessageHash} on it.\n     */\n    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {\n        (address recovered, RecoverError error) = tryRecover(hash, signature);\n        _throwError(error);\n        return recovered;\n    }\n\n    /**\n     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.\n     *\n     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]\n     *\n     * _Available since v4.3._\n     */\n    function tryRecover(\n        bytes32 hash,\n        bytes32 r,\n        bytes32 vs\n    ) internal pure returns (address, RecoverError) {\n        bytes32 s;\n        uint8 v;\n        assembly {\n            s := and(vs, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)\n            v := add(shr(255, vs), 27)\n        }\n        return tryRecover(hash, v, r, s);\n    }\n\n    /**\n     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.\n     *\n     * _Available since v4.2._\n     */\n    function recover(\n        bytes32 hash,\n        bytes32 r,\n        bytes32 vs\n    ) internal pure returns (address) {\n        (address recovered, RecoverError error) = tryRecover(hash, r, vs);\n        _throwError(error);\n        return recovered;\n    }\n\n    /**\n     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,\n     * `r` and `s` signature fields separately.\n     *\n     * _Available since v4.3._\n     */\n    function tryRecover(\n        bytes32 hash,\n        uint8 v,\n        bytes32 r,\n        bytes32 s\n    ) internal pure returns (address, RecoverError) {\n        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature\n        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines\n        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most\n        // signatures from current libraries generate a unique signature with an s-value in the lower half order.\n        //\n        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value\n        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or\n        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept\n        // these malleable signatures as well.\n        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {\n            return (address(0), RecoverError.InvalidSignatureS);\n        }\n        if (v != 27 && v != 28) {\n            return (address(0), RecoverError.InvalidSignatureV);\n        }\n\n        // If the signature is valid (and not malleable), return the signer address\n        address signer = ecrecover(hash, v, r, s);\n        if (signer == address(0)) {\n            return (address(0), RecoverError.InvalidSignature);\n        }\n\n        return (signer, RecoverError.NoError);\n    }\n\n    /**\n     * @dev Overload of {ECDSA-recover} that receives the `v`,\n     * `r` and `s` signature fields separately.\n     */\n    function recover(\n        bytes32 hash,\n        uint8 v,\n        bytes32 r,\n        bytes32 s\n    ) internal pure returns (address) {\n        (address recovered, RecoverError error) = tryRecover(hash, v, r, s);\n        _throwError(error);\n        return recovered;\n    }\n\n    /**\n     * @dev Returns an Ethereum Signed Message, created from a `hash`. This\n     * produces hash corresponding to the one signed with the\n     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]\n     * JSON-RPC method as part of EIP-191.\n     *\n     * See {recover}.\n     */\n    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32) {\n        // 32 is the length in bytes of hash,\n        // enforced by the type signature above\n        return keccak256(abi.encodePacked(\"\\x19Ethereum Signed Message:\\n32\", hash));\n    }\n\n    /**\n     * @dev Returns an Ethereum Signed Message, created from `s`. This\n     * produces hash corresponding to the one signed with the\n     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]\n     * JSON-RPC method as part of EIP-191.\n     *\n     * See {recover}.\n     */\n    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32) {\n        return keccak256(abi.encodePacked(\"\\x19Ethereum Signed Message:\\n\", Strings.toString(s.length), s));\n    }\n\n    /**\n     * @dev Returns an Ethereum Signed Typed Data, created from a\n     * `domainSeparator` and a `structHash`. This produces hash corresponding\n     * to the one signed with the\n     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`]\n     * JSON-RPC method as part of EIP-712.\n     *\n     * See {recover}.\n     */\n    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32) {\n        return keccak256(abi.encodePacked(\"\\x19\\x01\", domainSeparator, structHash));\n    }\n}\n"
    },
    "contracts/ASMAIFAAllStarsUnbox.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.4;\n\nimport '@openzeppelin/contracts/utils/Strings.sol';\nimport '@openzeppelin/contracts/security/ReentrancyGuard.sol';\nimport '@openzeppelin/contracts/utils/cryptography/ECDSA.sol';\nimport './WhitelistTimelock.sol';\n\ninterface IBox {\n  function ownerOf(uint256 tokenId) external view returns (address);\n\n  function transferFrom(\n    address from,\n    address to,\n    uint256 tokenId\n  ) external;\n}\n\ninterface IBrain {\n  function mint(string calldata hash, address recipient) external;\n}\n\ninterface ICharacter {\n  function mint(string[4] calldata hashes, address recipient) external;\n\n  function mintSpecial(string[4] calldata hashes, address recipient) external;\n}\n\ncontract ASMAIFAAllStarsUnbox is WhitelistTimelock, ReentrancyGuard {\n  using ECDSA for bytes32;\n  using Strings for uint256;\n\n  address private _signer;\n  address public boxContract;\n  address public brainContract;\n  address public characterContract;\n  uint256 public specialBoxId;\n\n  address public constant BURN_ADDRESS =\n    address(0x000000000000000000000000000000000000dEaD);\n\n  mapping(uint256 => bool) public isOpened;\n  bool public isOpenAllowed;\n\n  struct UnboxingContentHash {\n    string brain;\n    string character1;\n    string character2;\n    string character3;\n    string character4;\n  }\n\n  event BoxOpened(address operator, uint256 boxTokenId);\n  event OpenAllowed(bool allowed);\n  event BrainContractSet(address _contract);\n  event CharacterContractSet(address _contract);\n\n  constructor(\n    address signer,\n    address _boxContract,\n    address _brainContract,\n    address _characterContract,\n    uint256 _specialBoxId\n  ) {\n    require(signer != address(0), 'Signer should not be a zero address.');\n    _signer = signer;\n    boxContract = _boxContract;\n    brainContract = _brainContract;\n    characterContract = _characterContract;\n    specialBoxId = _specialBoxId;\n  }\n\n  function _hash(UnboxingContentHash calldata hash, uint256 boxTokenId)\n    internal\n    pure\n    returns (bytes32)\n  {\n    return\n      keccak256(\n        abi.encode(\n          hash.brain,\n          hash.character1,\n          hash.character2,\n          hash.character3,\n          hash.character4,\n          boxTokenId\n        )\n      );\n  }\n\n  function _verify(bytes32 hash, bytes memory token)\n    internal\n    view\n    returns (bool)\n  {\n    return (_recover(hash, token) == _signer);\n  }\n\n  function _recover(bytes32 hash, bytes memory token)\n    internal\n    pure\n    returns (address)\n  {\n    return hash.toEthSignedMessageHash().recover(token);\n  }\n\n  function openBox(\n    UnboxingContentHash calldata hash,\n    bytes calldata signature,\n    uint256 boxTokenId\n  ) external nonReentrant {\n    require(isOpenAllowed, 'Box is not allowed to open.');\n    require(!isOpened[boxTokenId], 'Box already opened.');\n    require(\n      IBox(boxContract).ownerOf(boxTokenId) == msg.sender,\n      'Box can only be openned by the owner.'\n    );\n    require(_verify(_hash(hash, boxTokenId), signature), 'Invalid signature.');\n\n    IBrain(brainContract).mint(hash.brain, msg.sender);\n\n    if (boxTokenId == specialBoxId) {\n      ICharacter(characterContract).mintSpecial(\n        [hash.character1, hash.character2, hash.character3, hash.character4],\n        msg.sender\n      );\n    } else {\n      ICharacter(characterContract).mint(\n        [hash.character1, hash.character2, hash.character3, hash.character4],\n        msg.sender\n      );\n    }\n\n    IBox(boxContract).transferFrom(msg.sender, BURN_ADDRESS, boxTokenId);\n\n    isOpened[boxTokenId] = true;\n\n    emit BoxOpened(msg.sender, boxTokenId);\n  }\n\n  function setOpenAllowed(bool allowed) external onlyWhitelisted {\n    isOpenAllowed = allowed;\n    emit OpenAllowed(allowed);\n  }\n\n  function setBrainContract(address _contract) external onlyWhitelisted {\n    brainContract = _contract;\n    emit BrainContractSet(_contract);\n  }\n\n  function setCharacterContract(address _contract) external onlyWhitelisted {\n    characterContract = _contract;\n    emit CharacterContractSet(_contract);\n  }\n}\n"
    },
    "contracts/WhitelistTimelock.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.4;\n\nimport '@openzeppelin/contracts/access/Ownable.sol';\n\ncontract WhitelistTimelock is Ownable {\n  mapping(address => uint256) public whitelistTimelock;\n  uint256 public constant MIN_LOCK_DURATION = 1 days;\n  uint256 public lockDuration = 1 days;\n\n  event AddedToWhitelist(address indexed account);\n  event RemovedFromWhitelist(address indexed account);\n  event LockDurationUpdated(uint256 duration);\n\n  modifier onlyWhitelisted() {\n    require(\n      isWhitelisted(msg.sender),\n      'Address not whitelisted or in lock-up period.'\n    );\n    _;\n  }\n\n  function addToWhitelist(address _address) public onlyOwner {\n    whitelistTimelock[_address] = block.timestamp + lockDuration;\n    emit AddedToWhitelist(_address);\n  }\n\n  function removeFromWhitelist(address _address) public onlyOwner {\n    whitelistTimelock[_address] = 0;\n    emit RemovedFromWhitelist(_address);\n  }\n\n  function updateLockDuration(uint256 duration) public onlyOwner {\n    require(\n      duration >= MIN_LOCK_DURATION,\n      'Duration should be longer than MIN_LOCK_DURATION.'\n    );\n\n    lockDuration = duration;\n    emit LockDurationUpdated(duration);\n  }\n\n  function isWhitelisted(address _address) public view returns (bool) {\n    return\n      whitelistTimelock[_address] > 0 &&\n      block.timestamp >= whitelistTimelock[_address];\n  }\n}\n"
    }
  }
}}