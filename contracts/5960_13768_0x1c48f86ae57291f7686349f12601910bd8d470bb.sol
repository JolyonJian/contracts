{"Address.sol":{"content":"pragma solidity ^0.4.24;\n\nlibrary Address {\n    /**\n     * Returns whether the target address is a contract\n     * @dev This function will return false if invoked during the constructor of a contract,\n     * as the code is not actually created until after the constructor finishes.\n     * @param account address of the account to check\n     * @return whether the target address is a contract\n     */\n    function isContract(address account) internal view returns (bool) {\n        uint256 size;\n        // XXX Currently there is no better way to check if there is a contract in an address\n        // than to check the size of the code at that address.\n        // See https://ethereum.stackexchange.com/a/14016/36603\n        // for more details about how this works.\n        // TODO Check this again before the Serenity release, because all addresses will be\n        // contracts then.\n        // solhint-disable-next-line no-inline-assembly\n        assembly { size := extcodesize(account) }\n        return size \u003e 0;\n    }\n}"},"OwnedUpgradeabilityProxy.sol":{"content":"pragma solidity ^0.4.24;\n\nimport \u0027./UpgradeabilityProxy.sol\u0027;\n\n\n/**\n * @title OwnedUpgradeabilityProxy\n * @dev This contract combines an upgradeability proxy with basic authorization control functionalities\n */\ncontract OwnedUpgradeabilityProxy is UpgradeabilityProxy {\n  /**\n  * @dev Event to show ownership has been transferred\n  * @param previousOwner representing the address of the previous owner\n  * @param newOwner representing the address of the new owner\n  */\n  event ProxyOwnershipTransferred(address previousOwner, address newOwner);\n\n  // Storage position of the owner of the contract\n  bytes32 private constant proxyOwnerPosition = keccak256(\"org.zeppelinos.proxy.owner\");\n\n  /**\n  * @dev the constructor sets the original owner of the contract to the sender account.\n  */\n  constructor() public {\n    setUpgradeabilityOwner(msg.sender);\n  }\n\n  /**\n  * @dev Throws if called by any account other than the owner.\n  */\n  modifier onlyProxyOwner() {\n    require(msg.sender == proxyOwner());\n    _;\n  }\n\n  /**\n   * @dev Tells the address of the owner\n   * @return the address of the owner\n   */\n  function proxyOwner() public view returns (address owner) {\n    bytes32 position = proxyOwnerPosition;\n    assembly {\n      owner := sload(position)\n    }\n  }\n\n  /**\n   * @dev Sets the address of the owner\n   */\n  function setUpgradeabilityOwner(address newProxyOwner) internal {\n    bytes32 position = proxyOwnerPosition;\n    assembly {\n      sstore(position, newProxyOwner)\n    }\n  }\n\n  /**\n   * @dev Allows the current owner to transfer control of the contract to a newOwner.\n   * @param newOwner The address to transfer ownership to.\n   */\n  function transferProxyOwnership(address newOwner) public onlyProxyOwner {\n    require(newOwner != address(0));\n    emit ProxyOwnershipTransferred(proxyOwner(), newOwner);\n    setUpgradeabilityOwner(newOwner);\n  }\n\n  /**\n   * @dev Allows the proxy owner to upgrade the current version of the proxy.\n   * @param implementation representing the address of the new implementation to be set.\n   */\n  function upgradeTo(address implementation) public onlyProxyOwner {\n    _upgradeTo(implementation);\n  }\n\n  /**\n   * @dev Allows the proxy owner to upgrade the current version of the proxy and call the new implementation\n   * to initialize whatever is needed through a low level call.\n   * @param implementation representing the address of the new implementation to be set.\n   * @param data represents the msg.data to bet sent in the low level call. This parameter may include the function\n   * signature of the implementation to be called with the needed payload\n   */\n  function upgradeToAndCall(address implementation, bytes data) payable public onlyProxyOwner {\n    upgradeTo(implementation);\n    require(implementation.delegatecall(data));\n}\n}"},"Proxy.sol":{"content":"pragma solidity ^0.4.24;\n\n/**\n * @title Proxy\n * @dev Gives the possibility to delegate any call to a foreign implementation.\n */\ncontract Proxy {\n  /**\n  * @dev Tells the address of the implementation where every call will be delegated.\n  * @return address of the implementation to which it will be delegated\n  */\n  function implementation() public view returns (address);\n\n  /**\n  * @dev Fallback function allowing to perform a delegatecall to the given implementation.\n  * This function will return whatever the implementation call returns\n  */\n  function () payable public {\n    address _impl = implementation();\n    require(_impl != address(0));\n\n    assembly {\n      let ptr := mload(0x40)\n      calldatacopy(ptr, 0, calldatasize)\n      let result := delegatecall(gas, _impl, ptr, calldatasize, 0, 0)\n      let size := returndatasize\n      returndatacopy(ptr, 0, size)\n\n      switch result\n      case 0 { revert(ptr, size) }\n      default { return(ptr, size) }\n    }\n  }\n}"},"SafeMath.sol":{"content":"pragma solidity ^0.4.24;\n\n\n/**\n * @title SafeMath\n * @dev Math operations with safety checks that throw on error\n */\nlibrary SafeMath {\n    /**\n    * @dev Subtracts two numbers, reverts on overflow (i.e. if subtrahend is greater than minuend).\n    */\n    function sub(uint256 a, uint256 b) internal pure returns (uint256) {\n        require(b \u003c= a);\n        uint256 c = a - b;\n\n        return c;\n    }\n\n    /**\n    * @dev Adds two numbers, reverts on overflow.\n    */\n    function add(uint256 a, uint256 b) internal pure returns (uint256) {\n        uint256 c = a + b;\n        require(c \u003e= a);\n\n        return c;\n    }\n}\n"},"UpgradeabilityProxy.sol":{"content":"pragma solidity ^0.4.24;\n\nimport \u0027./Proxy.sol\u0027;\nimport \u0027./Address.sol\u0027;\n\n\n/**\n * @title UpgradeabilityProxy\n * @dev This contract represents a proxy where the implementation address to which it will delegate can be upgraded\n */\ncontract UpgradeabilityProxy is Proxy {\n  /**\n   * @dev This event will be emitted every time the implementation gets upgraded\n   * @param implementation representing the address of the upgraded implementation\n   */\n  event Upgraded(address indexed implementation);\n\n  // Storage position of the address of the current implementation\n  bytes32 private constant implementationPosition = keccak256(\"org.zeppelinos.proxy.implementation\");\n\n  /**\n   * @dev Constructor function\n   */\n  constructor() public {}\n\n  /**\n   * @dev Tells the address of the current implementation\n   * @return address of the current implementation\n   */\n  function implementation() public view returns (address impl) {\n    bytes32 position = implementationPosition;\n    assembly {\n      impl := sload(position)\n    }\n  }\n\n  /**\n   * @dev Sets the address of the current implementation\n   * @param newImplementation address representing the new implementation to be set\n   */\n  function setImplementation(address newImplementation) internal {\n    require(Address.isContract(newImplementation),\"newImplementation is not a contractAddress\");\n    bytes32 position = implementationPosition;\n    assembly {\n      sstore(position, newImplementation)\n    }\n  }\n\n  /**\n   * @dev Upgrades the implementation address\n   * @param newImplementation representing the address of the new implementation to be set\n   */\n  function _upgradeTo(address newImplementation) internal {\n    address currentImplementation = implementation();\n    require(currentImplementation != newImplementation);\n    setImplementation(newImplementation);\n    emit Upgraded(newImplementation);\n  }\n}"}}