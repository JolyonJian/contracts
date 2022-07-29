{{
  "language": "Solidity",
  "sources": {
    "@nomad-xyz/nomad-core-sol/contracts/upgrade/UpgradeBeaconProxy.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity >=0.6.11;\n\n// ============ External Imports ============\nimport {Address} from \"@openzeppelin/contracts/utils/Address.sol\";\n\n/**\n * @title UpgradeBeaconProxy\n * @notice\n * Proxy contract which delegates all logic, including initialization,\n * to an implementation contract.\n * The implementation contract is stored within an Upgrade Beacon contract;\n * the implementation contract can be changed by performing an upgrade on the Upgrade Beacon contract.\n * The Upgrade Beacon contract for this Proxy is immutably specified at deployment.\n * @dev This implementation combines the gas savings of keeping the UpgradeBeacon address outside of contract storage\n * found in 0age's implementation:\n * https://github.com/dharma-eng/dharma-smart-wallet/blob/master/contracts/proxies/smart-wallet/UpgradeBeaconProxyV1.sol\n * With the added safety checks that the UpgradeBeacon and implementation are contracts at time of deployment\n * found in OpenZeppelin's implementation:\n * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/proxy/beacon/BeaconProxy.sol\n */\ncontract UpgradeBeaconProxy {\n    // ============ Immutables ============\n\n    // Upgrade Beacon address is immutable (therefore not kept in contract storage)\n    address private immutable upgradeBeacon;\n\n    // ============ Constructor ============\n\n    /**\n     * @notice Validate that the Upgrade Beacon is a contract, then set its\n     * address immutably within this contract.\n     * Validate that the implementation is also a contract,\n     * Then call the initialization function defined at the implementation.\n     * The deployment will revert and pass along the\n     * revert reason if the initialization function reverts.\n     * @param _upgradeBeacon Address of the Upgrade Beacon to be stored immutably in the contract\n     * @param _initializationCalldata Calldata supplied when calling the initialization function\n     */\n    constructor(address _upgradeBeacon, bytes memory _initializationCalldata)\n        payable\n    {\n        // Validate the Upgrade Beacon is a contract\n        require(Address.isContract(_upgradeBeacon), \"beacon !contract\");\n        // set the Upgrade Beacon\n        upgradeBeacon = _upgradeBeacon;\n        // Validate the implementation is a contract\n        address _implementation = _getImplementation(_upgradeBeacon);\n        require(\n            Address.isContract(_implementation),\n            \"beacon implementation !contract\"\n        );\n        // Call the initialization function on the implementation\n        if (_initializationCalldata.length > 0) {\n            _initialize(_implementation, _initializationCalldata);\n        }\n    }\n\n    // ============ External Functions ============\n\n    /**\n     * @notice Forwards all calls with data to _fallback()\n     * No public functions are declared on the contract, so all calls hit fallback\n     */\n    fallback() external payable {\n        _fallback();\n    }\n\n    /**\n     * @notice Forwards all calls with no data to _fallback()\n     */\n    receive() external payable {\n        _fallback();\n    }\n\n    // ============ Private Functions ============\n\n    /**\n     * @notice Call the initialization function on the implementation\n     * Used at deployment to initialize the proxy\n     * based on the logic for initialization defined at the implementation\n     * @param _implementation - Contract to which the initalization is delegated\n     * @param _initializationCalldata - Calldata supplied when calling the initialization function\n     */\n    function _initialize(\n        address _implementation,\n        bytes memory _initializationCalldata\n    ) private {\n        // Delegatecall into the implementation, supplying initialization calldata.\n        (bool _ok, ) = _implementation.delegatecall(_initializationCalldata);\n        // Revert and include revert data if delegatecall to implementation reverts.\n        if (!_ok) {\n            assembly {\n                returndatacopy(0, 0, returndatasize())\n                revert(0, returndatasize())\n            }\n        }\n    }\n\n    /**\n     * @notice Delegates function calls to the implementation contract returned by the Upgrade Beacon\n     */\n    function _fallback() private {\n        _delegate(_getImplementation());\n    }\n\n    /**\n     * @notice Delegate function execution to the implementation contract\n     * @dev This is a low level function that doesn't return to its internal\n     * call site. It will return whatever is returned by the implementation to the\n     * external caller, reverting and returning the revert data if implementation\n     * reverts.\n     * @param _implementation - Address to which the function execution is delegated\n     */\n    function _delegate(address _implementation) private {\n        assembly {\n            // Copy msg.data. We take full control of memory in this inline assembly\n            // block because it will not return to Solidity code. We overwrite the\n            // Solidity scratch pad at memory position 0.\n            calldatacopy(0, 0, calldatasize())\n            // Delegatecall to the implementation, supplying calldata and gas.\n            // Out and outsize are set to zero - instead, use the return buffer.\n            let result := delegatecall(\n                gas(),\n                _implementation,\n                0,\n                calldatasize(),\n                0,\n                0\n            )\n            // Copy the returned data from the return buffer.\n            returndatacopy(0, 0, returndatasize())\n            switch result\n            // Delegatecall returns 0 on error.\n            case 0 {\n                revert(0, returndatasize())\n            }\n            default {\n                return(0, returndatasize())\n            }\n        }\n    }\n\n    /**\n     * @notice Call the Upgrade Beacon to get the current implementation contract address\n     * @return _implementation Address of the current implementation.\n     */\n    function _getImplementation()\n        private\n        view\n        returns (address _implementation)\n    {\n        _implementation = _getImplementation(upgradeBeacon);\n    }\n\n    /**\n     * @notice Call the Upgrade Beacon to get the current implementation contract address\n     * @dev _upgradeBeacon is passed as a parameter so that\n     * we can also use this function in the constructor,\n     * where we can't access immutable variables.\n     * @param _upgradeBeacon Address of the UpgradeBeacon storing the current implementation\n     * @return _implementation Address of the current implementation.\n     */\n    function _getImplementation(address _upgradeBeacon)\n        private\n        view\n        returns (address _implementation)\n    {\n        // Get the current implementation address from the upgrade beacon.\n        (bool _ok, bytes memory _returnData) = _upgradeBeacon.staticcall(\"\");\n        // Revert and pass along revert message if call to upgrade beacon reverts.\n        require(_ok, string(_returnData));\n        // Set the implementation to the address returned from the upgrade beacon.\n        _implementation = abi.decode(_returnData, (address));\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/Address.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity >=0.6.2 <0.8.0;\n\n/**\n * @dev Collection of functions related to the address type\n */\nlibrary Address {\n    /**\n     * @dev Returns true if `account` is a contract.\n     *\n     * [IMPORTANT]\n     * ====\n     * It is unsafe to assume that an address for which this function returns\n     * false is an externally-owned account (EOA) and not a contract.\n     *\n     * Among others, `isContract` will return false for the following\n     * types of addresses:\n     *\n     *  - an externally-owned account\n     *  - a contract in construction\n     *  - an address where a contract will be created\n     *  - an address where a contract lived, but was destroyed\n     * ====\n     */\n    function isContract(address account) internal view returns (bool) {\n        // This method relies on extcodesize, which returns 0 for contracts in\n        // construction, since the code is only stored at the end of the\n        // constructor execution.\n\n        uint256 size;\n        // solhint-disable-next-line no-inline-assembly\n        assembly { size := extcodesize(account) }\n        return size > 0;\n    }\n\n    /**\n     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to\n     * `recipient`, forwarding all available gas and reverting on errors.\n     *\n     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost\n     * of certain opcodes, possibly making contracts go over the 2300 gas limit\n     * imposed by `transfer`, making them unable to receive funds via\n     * `transfer`. {sendValue} removes this limitation.\n     *\n     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].\n     *\n     * IMPORTANT: because control is transferred to `recipient`, care must be\n     * taken to not create reentrancy vulnerabilities. Consider using\n     * {ReentrancyGuard} or the\n     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].\n     */\n    function sendValue(address payable recipient, uint256 amount) internal {\n        require(address(this).balance >= amount, \"Address: insufficient balance\");\n\n        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value\n        (bool success, ) = recipient.call{ value: amount }(\"\");\n        require(success, \"Address: unable to send value, recipient may have reverted\");\n    }\n\n    /**\n     * @dev Performs a Solidity function call using a low level `call`. A\n     * plain`call` is an unsafe replacement for a function call: use this\n     * function instead.\n     *\n     * If `target` reverts with a revert reason, it is bubbled up by this\n     * function (like regular Solidity function calls).\n     *\n     * Returns the raw returned data. To convert to the expected return value,\n     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].\n     *\n     * Requirements:\n     *\n     * - `target` must be a contract.\n     * - calling `target` with `data` must not revert.\n     *\n     * _Available since v3.1._\n     */\n    function functionCall(address target, bytes memory data) internal returns (bytes memory) {\n      return functionCall(target, data, \"Address: low-level call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with\n     * `errorMessage` as a fallback revert reason when `target` reverts.\n     *\n     * _Available since v3.1._\n     */\n    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {\n        return functionCallWithValue(target, data, 0, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but also transferring `value` wei to `target`.\n     *\n     * Requirements:\n     *\n     * - the calling contract must have an ETH balance of at least `value`.\n     * - the called Solidity function must be `payable`.\n     *\n     * _Available since v3.1._\n     */\n    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {\n        return functionCallWithValue(target, data, value, \"Address: low-level call with value failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but\n     * with `errorMessage` as a fallback revert reason when `target` reverts.\n     *\n     * _Available since v3.1._\n     */\n    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {\n        require(address(this).balance >= value, \"Address: insufficient balance for call\");\n        require(isContract(target), \"Address: call to non-contract\");\n\n        // solhint-disable-next-line avoid-low-level-calls\n        (bool success, bytes memory returndata) = target.call{ value: value }(data);\n        return _verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but performing a static call.\n     *\n     * _Available since v3.3._\n     */\n    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {\n        return functionStaticCall(target, data, \"Address: low-level static call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],\n     * but performing a static call.\n     *\n     * _Available since v3.3._\n     */\n    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {\n        require(isContract(target), \"Address: static call to non-contract\");\n\n        // solhint-disable-next-line avoid-low-level-calls\n        (bool success, bytes memory returndata) = target.staticcall(data);\n        return _verifyCallResult(success, returndata, errorMessage);\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],\n     * but performing a delegate call.\n     *\n     * _Available since v3.4._\n     */\n    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {\n        return functionDelegateCall(target, data, \"Address: low-level delegate call failed\");\n    }\n\n    /**\n     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],\n     * but performing a delegate call.\n     *\n     * _Available since v3.4._\n     */\n    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {\n        require(isContract(target), \"Address: delegate call to non-contract\");\n\n        // solhint-disable-next-line avoid-low-level-calls\n        (bool success, bytes memory returndata) = target.delegatecall(data);\n        return _verifyCallResult(success, returndata, errorMessage);\n    }\n\n    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {\n        if (success) {\n            return returndata;\n        } else {\n            // Look for revert reason and bubble it up if present\n            if (returndata.length > 0) {\n                // The easiest way to bubble the revert reason is using memory via assembly\n\n                // solhint-disable-next-line no-inline-assembly\n                assembly {\n                    let returndata_size := mload(returndata)\n                    revert(add(32, returndata), returndata_size)\n                }\n            } else {\n                revert(errorMessage);\n            }\n        }\n    }\n}\n"
    }
  },
  "settings": {
    "optimizer": {
      "enabled": true,
      "runs": 999999
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