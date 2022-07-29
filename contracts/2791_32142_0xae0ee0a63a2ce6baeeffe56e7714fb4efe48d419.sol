{"Common.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\n/*\n  Common Utility librarries.\n  I. Addresses (extending address).\n*/\nlibrary Addresses {\n    function isContract(address account) internal view returns (bool) {\n        uint256 size;\n        assembly {\n            size := extcodesize(account)\n        }\n        return size \u003e 0;\n    }\n\n    function performEthTransfer(address recipient, uint256 amount) internal {\n        (bool success, ) = recipient.call{value: amount}(\"\"); // NOLINT: low-level-calls.\n        require(success, \"ETH_TRANSFER_FAILED\");\n    }\n\n    /*\n      Safe wrapper around ERC20/ERC721 calls.\n      This is required because many deployed ERC20 contracts don\u0027t return a value.\n      See https://github.com/ethereum/solidity/issues/4116.\n    */\n    function safeTokenContractCall(address tokenAddress, bytes memory callData) internal {\n        require(isContract(tokenAddress), \"BAD_TOKEN_ADDRESS\");\n        // NOLINTNEXTLINE: low-level-calls.\n        (bool success, bytes memory returndata) = tokenAddress.call(callData);\n        require(success, string(returndata));\n\n        if (returndata.length \u003e 0) {\n            require(abi.decode(returndata, (bool)), \"TOKEN_OPERATION_FAILED\");\n        }\n    }\n\n    /*\n      Validates that the passed contract address is of a real contract,\n      and that its id hash (as infered fromn identify()) matched the expected one.\n    */\n    function validateContractId(address contractAddress, bytes32 expectedIdHash) internal {\n        require(isContract(contractAddress), \"ADDRESS_NOT_CONTRACT\");\n        (bool success, bytes memory returndata) = contractAddress.call( // NOLINT: low-level-calls.\n            abi.encodeWithSignature(\"identify()\")\n        );\n        require(success, \"FAILED_TO_IDENTIFY_CONTRACT\");\n        string memory realContractId = abi.decode(returndata, (string));\n        require(\n            keccak256(abi.encodePacked(realContractId)) == expectedIdHash,\n            \"UNEXPECTED_CONTRACT_IDENTIFIER\"\n        );\n    }\n}\n\n/*\n  II. StarkExTypes - Common data types.\n*/\nlibrary StarkExTypes {\n    // Structure representing a list of verifiers (validity/availability).\n    // A statement is valid only if all the verifiers in the list agree on it.\n    // Adding a verifier to the list is immediate - this is used for fast resolution of\n    // any soundness issues.\n    // Removing from the list is time-locked, to ensure that any user of the system\n    // not content with the announced removal has ample time to leave the system before it is\n    // removed.\n    struct ApprovalChainData {\n        address[] list;\n        // Represents the time after which the verifier with the given address can be removed.\n        // Removal of the verifier with address A is allowed only in the case the value\n        // of unlockedForRemovalTime[A] != 0 and unlockedForRemovalTime[A] \u003c (current time).\n        mapping(address =\u003e uint256) unlockedForRemovalTime;\n    }\n}\n"},"Governance.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\nimport \"MGovernance.sol\";\n\n/*\n  Implements Generic Governance, applicable for both proxy and main contract, and possibly others.\n  Notes:\n   The use of the same function names by both the Proxy and a delegated implementation\n   is not possible since calling the implementation functions is done via the default function\n   of the Proxy. For this reason, for example, the implementation of MainContract (MainGovernance)\n   exposes mainIsGovernor, which calls the internal _isGovernor method.\n*/\nabstract contract Governance is MGovernance {\n    event LogNominatedGovernor(address nominatedGovernor);\n    event LogNewGovernorAccepted(address acceptedGovernor);\n    event LogRemovedGovernor(address removedGovernor);\n    event LogNominationCancelled();\n\n    function getGovernanceInfo() internal view virtual returns (GovernanceInfoStruct storage);\n\n    /*\n      Current code intentionally prevents governance re-initialization.\n      This may be a problem in an upgrade situation, in a case that the upgrade-to implementation\n      performs an initialization (for real) and within that calls initGovernance().\n\n      Possible workarounds:\n      1. Clearing the governance info altogether by changing the MAIN_GOVERNANCE_INFO_TAG.\n         This will remove existing main governance information.\n      2. Modify the require part in this function, so that it will exit quietly\n         when trying to re-initialize (uncomment the lines below).\n    */\n    function initGovernance() internal {\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        require(!gub.initialized, \"ALREADY_INITIALIZED\");\n        gub.initialized = true; // to ensure addGovernor() won\u0027t fail.\n        // Add the initial governer.\n        addGovernor(msg.sender);\n    }\n\n    function _isGovernor(address testGovernor) internal view override returns (bool) {\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        return gub.effectiveGovernors[testGovernor];\n    }\n\n    /*\n      Cancels the nomination of a governor candidate.\n    */\n    function _cancelNomination() internal onlyGovernance {\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        gub.candidateGovernor = address(0x0);\n        emit LogNominationCancelled();\n    }\n\n    function _nominateNewGovernor(address newGovernor) internal onlyGovernance {\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        require(!_isGovernor(newGovernor), \"ALREADY_GOVERNOR\");\n        gub.candidateGovernor = newGovernor;\n        emit LogNominatedGovernor(newGovernor);\n    }\n\n    /*\n      The addGovernor is called in two cases:\n      1. by _acceptGovernance when a new governor accepts its role.\n      2. by initGovernance to add the initial governor.\n      The difference is that the init path skips the nominate step\n      that would fail because of the onlyGovernance modifier.\n    */\n    function addGovernor(address newGovernor) private {\n        require(!_isGovernor(newGovernor), \"ALREADY_GOVERNOR\");\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        gub.effectiveGovernors[newGovernor] = true;\n    }\n\n    function _acceptGovernance() internal {\n        // The new governor was proposed as a candidate by the current governor.\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        require(msg.sender == gub.candidateGovernor, \"ONLY_CANDIDATE_GOVERNOR\");\n\n        // Update state.\n        addGovernor(gub.candidateGovernor);\n        gub.candidateGovernor = address(0x0);\n\n        // Send a notification about the change of governor.\n        emit LogNewGovernorAccepted(msg.sender);\n    }\n\n    /*\n      Remove a governor from office.\n    */\n    function _removeGovernor(address governorForRemoval) internal onlyGovernance {\n        require(msg.sender != governorForRemoval, \"GOVERNOR_SELF_REMOVE\");\n        GovernanceInfoStruct storage gub = getGovernanceInfo();\n        require(_isGovernor(governorForRemoval), \"NOT_GOVERNOR\");\n        gub.effectiveGovernors[governorForRemoval] = false;\n        emit LogRemovedGovernor(governorForRemoval);\n    }\n}\n"},"GovernanceStorage.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\nimport \"MGovernance.sol\";\n\n/*\n  Holds the governance slots for ALL entities, including proxy and the main contract.\n*/\ncontract GovernanceStorage {\n    // A map from a Governor tag to its own GovernanceInfoStruct.\n    mapping(string =\u003e GovernanceInfoStruct) internal governanceInfo; //NOLINT uninitialized-state.\n}\n"},"MGovernance.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\nstruct GovernanceInfoStruct {\n    mapping(address =\u003e bool) effectiveGovernors;\n    address candidateGovernor;\n    bool initialized;\n}\n\nabstract contract MGovernance {\n    function _isGovernor(address testGovernor) internal view virtual returns (bool);\n\n    /*\n      Allows calling the function only by a Governor.\n    */\n    modifier onlyGovernance() {\n        require(_isGovernor(msg.sender), \"ONLY_GOVERNANCE\");\n        _;\n    }\n}\n"},"Proxy.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\nimport \"ProxyGovernance.sol\";\nimport \"ProxyStorage.sol\";\nimport \"StorageSlots.sol\";\nimport \"Common.sol\";\n\n/**\n  The Proxy contract implements delegation of calls to other contracts (`implementations`), with\n  proper forwarding of return values and revert reasons. This pattern allows retaining the contract\n  storage while replacing implementation code.\n\n  The following operations are supported by the proxy contract:\n\n  - :sol:func:`addImplementation`: Defines a new implementation, the data with which it should be initialized and whether this will be the last version of implementation.\n  - :sol:func:`upgradeTo`: Once an implementation is added, the governor may upgrade to that implementation only after a safety time period has passed (time lock), the current implementation is not the last version and the implementation is not frozen (see :sol:mod:`FullWithdrawals`).\n  - :sol:func:`removeImplementation`: Any announced implementation may be removed. Removing an implementation is especially important once it has been used for an upgrade in order to avoid an additional unwanted revert to an older version.\n\n  The only entity allowed to perform the above operations is the proxy governor\n  (see :sol:mod:`ProxyGovernance`).\n\n  Every implementation is required to have an `initialize` function that replaces the constructor\n  of a normal contract. Furthermore, the only parameter of this function is an array of bytes\n  (`data`) which may be decoded arbitrarily by the `initialize` function. It is up to the\n  implementation to ensure that this function cannot be run more than once if so desired.\n\n  When an implementation is added (:sol:func:`addImplementation`) the initialization `data` is also\n  announced, allowing users of the contract to analyze the full effect of an upgrade to the new\n  implementation. During an :sol:func:`upgradeTo`, the `data` is provided again and only if it is\n  identical to the announced `data` is the upgrade performed by pointing the proxy to the new\n  implementation and calling its `initialize` function with this `data`.\n\n  It is the responsibility of the implementation not to overwrite any storage belonging to the\n  proxy (`ProxyStorage`). In addition, upon upgrade, the new implementation is assumed to be\n  backward compatible with previous implementations with respect to the storage used until that\n  point.\n*/\ncontract Proxy is ProxyStorage, ProxyGovernance, StorageSlots {\n    // Emitted when the active implementation is replaced.\n    event ImplementationUpgraded(address indexed implementation, bytes initializer);\n\n    // Emitted when an implementation is submitted as an upgrade candidate and a time lock\n    // is activated.\n    event ImplementationAdded(address indexed implementation, bytes initializer, bool finalize);\n\n    // Emitted when an implementation is removed from the list of upgrade candidates.\n    event ImplementationRemoved(address indexed implementation, bytes initializer, bool finalize);\n\n    // Emitted when the implementation is finalized.\n    event FinalizedImplementation(address indexed implementation);\n\n    using Addresses for address;\n\n    string public constant PROXY_VERSION = \"3.0.1\";\n\n    constructor(uint256 upgradeActivationDelay) public {\n        initGovernance();\n        setUpgradeActivationDelay(upgradeActivationDelay);\n    }\n\n    function setUpgradeActivationDelay(uint256 delayInSeconds) private {\n        bytes32 slot = UPGRADE_DELAY_SLOT;\n        assembly {\n            sstore(slot, delayInSeconds)\n        }\n    }\n\n    function getUpgradeActivationDelay() public view returns (uint256 delay) {\n        bytes32 slot = UPGRADE_DELAY_SLOT;\n        assembly {\n            delay := sload(slot)\n        }\n        return delay;\n    }\n\n    /*\n      Returns the address of the current implementation.\n    */\n    // NOLINTNEXTLINE external-function.\n    function implementation() public view returns (address _implementation) {\n        bytes32 slot = IMPLEMENTATION_SLOT;\n        assembly {\n            _implementation := sload(slot)\n        }\n    }\n\n    /*\n      Returns true if the implementation is frozen.\n      If the implementation was not assigned yet, returns false.\n    */\n    function implementationIsFrozen() private returns (bool) {\n        address _implementation = implementation();\n\n        // We can\u0027t call low level implementation before it\u0027s assigned. (i.e. ZERO).\n        if (_implementation == address(0x0)) {\n            return false;\n        }\n\n        // NOLINTNEXTLINE: low-level-calls.\n        (bool success, bytes memory returndata) = _implementation.delegatecall(\n            abi.encodeWithSignature(\"isFrozen()\")\n        );\n        require(success, string(returndata));\n        return abi.decode(returndata, (bool));\n    }\n\n    /*\n      This method blocks delegation to initialize().\n      Only upgradeTo should be able to delegate call to initialize().\n    */\n    function initialize(\n        bytes calldata /*data*/\n    ) external pure {\n        revert(\"CANNOT_CALL_INITIALIZE\");\n    }\n\n    modifier notFinalized() {\n        require(isNotFinalized(), \"IMPLEMENTATION_FINALIZED\");\n        _;\n    }\n\n    /*\n      Forbids calling the function if the implementation is frozen.\n      This modifier relies on the lower level (logical contract) implementation of isFrozen().\n    */\n    modifier notFrozen() {\n        require(!implementationIsFrozen(), \"STATE_IS_FROZEN\");\n        _;\n    }\n\n    /*\n      This entry point serves only transactions with empty calldata. (i.e. pure value transfer tx).\n      We don\u0027t expect to receive such, thus block them.\n    */\n    receive() external payable {\n        revert(\"CONTRACT_NOT_EXPECTED_TO_RECEIVE\");\n    }\n\n    /*\n      Contract\u0027s default function. Delegates execution to the implementation contract.\n      It returns back to the external caller whatever the implementation delegated code returns.\n    */\n    fallback() external payable {\n        address _implementation = implementation();\n        require(_implementation != address(0x0), \"MISSING_IMPLEMENTATION\");\n\n        assembly {\n            // Copy msg.data. We take full control of memory in this inline assembly\n            // block because it will not return to Solidity code. We overwrite the\n            // Solidity scratch pad at memory position 0.\n            calldatacopy(0, 0, calldatasize())\n\n            // Call the implementation.\n            // out and outsize are 0 for now, as we don\u0027t know the out size yet.\n            let result := delegatecall(gas(), _implementation, 0, calldatasize(), 0, 0)\n\n            // Copy the returned data.\n            returndatacopy(0, 0, returndatasize())\n\n            switch result\n            // delegatecall returns 0 on error.\n            case 0 {\n                revert(0, returndatasize())\n            }\n            default {\n                return(0, returndatasize())\n            }\n        }\n    }\n\n    /*\n      Sets the implementation address of the proxy.\n    */\n    function setImplementation(address newImplementation) private {\n        bytes32 slot = IMPLEMENTATION_SLOT;\n        assembly {\n            sstore(slot, newImplementation)\n        }\n    }\n\n    /*\n      Returns true if the contract is not in the finalized state.\n    */\n    function isNotFinalized() public view returns (bool notFinal) {\n        bytes32 slot = FINALIZED_STATE_SLOT;\n        uint256 slotValue;\n        assembly {\n            slotValue := sload(slot)\n        }\n        notFinal = (slotValue == 0);\n    }\n\n    /*\n      Marks the current implementation as finalized.\n    */\n    function setFinalizedFlag() private {\n        bytes32 slot = FINALIZED_STATE_SLOT;\n        assembly {\n            sstore(slot, 0x1)\n        }\n    }\n\n    /*\n      Introduce an implementation and its initialization vector,\n      and start the time-lock before it can be upgraded to.\n      addImplementation is not blocked when frozen or finalized.\n      (upgradeTo API is blocked when finalized or frozen).\n    */\n    function addImplementation(\n        address newImplementation,\n        bytes calldata data,\n        bool finalize\n    ) external onlyGovernance {\n        require(newImplementation.isContract(), \"ADDRESS_NOT_CONTRACT\");\n\n        bytes32 implVectorHash = keccak256(abi.encode(newImplementation, data, finalize));\n\n        uint256 activationTime = block.timestamp + getUpgradeActivationDelay();\n\n        enabledTime[implVectorHash] = activationTime;\n        emit ImplementationAdded(newImplementation, data, finalize);\n    }\n\n    /*\n      Removes a candidate implementation.\n      Note that it is possible to remove the current implementation. Doing so doesn\u0027t affect the\n      current implementation, but rather revokes it as a future candidate.\n    */\n    function removeImplementation(\n        address removedImplementation,\n        bytes calldata data,\n        bool finalize\n    ) external onlyGovernance {\n        bytes32 implVectorHash = keccak256(abi.encode(removedImplementation, data, finalize));\n\n        // If we have initializer, we set the hash of it.\n        uint256 activationTime = enabledTime[implVectorHash];\n        require(activationTime \u003e 0, \"UNKNOWN_UPGRADE_INFORMATION\");\n        delete enabledTime[implVectorHash];\n        emit ImplementationRemoved(removedImplementation, data, finalize);\n    }\n\n    /*\n      Upgrades the proxy to a new implementation, with its initialization.\n      to upgrade successfully, implementation must have been added time-lock agreeably\n      before, and the init vector must be identical ot the one submitted before.\n\n      Upon assignment of new implementation address,\n      its initialize will be called with the initializing vector (even if empty).\n      Therefore, the implementation MUST must have such a method.\n\n      Note - Initialization data is committed to in advance, therefore it must remain valid\n      until the actual contract upgrade takes place.\n\n      Care should be taken regarding initialization data and flow when planning the contract upgrade.\n\n      When planning contract upgrade, special care is also needed with regard to governance\n      (See comments in Governance.sol).\n    */\n    // NOLINTNEXTLINE: reentrancy-events timestamp.\n    function upgradeTo(\n        address newImplementation,\n        bytes calldata data,\n        bool finalize\n    ) external payable onlyGovernance notFinalized notFrozen {\n        bytes32 implVectorHash = keccak256(abi.encode(newImplementation, data, finalize));\n        uint256 activationTime = enabledTime[implVectorHash];\n        require(activationTime \u003e 0, \"UNKNOWN_UPGRADE_INFORMATION\");\n        require(newImplementation.isContract(), \"ADDRESS_NOT_CONTRACT\");\n\n        // On the first time an implementation is set - time-lock should not be enforced.\n        require(\n            activationTime \u003c= block.timestamp || implementation() == address(0x0),\n            \"UPGRADE_NOT_ENABLED_YET\"\n        );\n\n        setImplementation(newImplementation);\n\n        // NOLINTNEXTLINE: low-level-calls controlled-delegatecall.\n        (bool success, bytes memory returndata) = newImplementation.delegatecall(\n            abi.encodeWithSelector(this.initialize.selector, data)\n        );\n        require(success, string(returndata));\n\n        // Verify that the new implementation is not frozen post initialization.\n        // NOLINTNEXTLINE: low-level-calls controlled-delegatecall.\n        (success, returndata) = newImplementation.delegatecall(\n            abi.encodeWithSignature(\"isFrozen()\")\n        );\n        require(success, \"CALL_TO_ISFROZEN_REVERTED\");\n        require(!abi.decode(returndata, (bool)), \"NEW_IMPLEMENTATION_FROZEN\");\n\n        if (finalize) {\n            setFinalizedFlag();\n            emit FinalizedImplementation(newImplementation);\n        }\n\n        emit ImplementationUpgraded(newImplementation, data);\n    }\n}\n"},"ProxyGovernance.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\nimport \"Governance.sol\";\nimport \"GovernanceStorage.sol\";\n\n/**\n  The Proxy contract is governed by one or more Governors of which the initial one is the\n  deployer of the contract.\n\n  A governor has the sole authority to perform the following operations:\n\n  1. Nominate additional governors (:sol:func:`proxyNominateNewGovernor`)\n  2. Remove other governors (:sol:func:`proxyRemoveGovernor`)\n  3. Add new `implementations` (proxied contracts)\n  4. Remove (new or old) `implementations`\n  5. Update `implementations` after a timelock allows it\n\n  Adding governors is performed in a two step procedure:\n\n  1. First, an existing governor nominates a new governor (:sol:func:`proxyNominateNewGovernor`)\n  2. Then, the new governor must accept governance to become a governor (:sol:func:`proxyAcceptGovernance`)\n\n  This two step procedure ensures that a governor public key cannot be nominated unless there is an\n  entity that has the corresponding private key. This is intended to prevent errors in the addition\n  process.\n\n  The governor private key should typically be held in a secure cold wallet or managed via a\n  multi-sig contract.\n*/\n/*\n  Implements Governance for the proxy contract.\n  It is a thin wrapper to the Governance contract,\n  which is needed so that it can have non-colliding function names,\n  and a specific tag (key) to allow unique state storage.\n*/\ncontract ProxyGovernance is GovernanceStorage, Governance {\n    // The tag is the string key that is used in the Governance storage mapping.\n    string public constant PROXY_GOVERNANCE_TAG = \"StarkEx.Proxy.2019.GovernorsInformation\";\n\n    /*\n      Returns the GovernanceInfoStruct associated with the governance tag.\n    */\n    function getGovernanceInfo() internal view override returns (GovernanceInfoStruct storage) {\n        return governanceInfo[PROXY_GOVERNANCE_TAG];\n    }\n\n    function proxyIsGovernor(address testGovernor) external view returns (bool) {\n        return _isGovernor(testGovernor);\n    }\n\n    function proxyNominateNewGovernor(address newGovernor) external {\n        _nominateNewGovernor(newGovernor);\n    }\n\n    function proxyRemoveGovernor(address governorForRemoval) external {\n        _removeGovernor(governorForRemoval);\n    }\n\n    function proxyAcceptGovernance() external {\n        _acceptGovernance();\n    }\n\n    function proxyCancelNomination() external {\n        _cancelNomination();\n    }\n}\n"},"ProxyStorage.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\nimport \"GovernanceStorage.sol\";\n\n/*\n  Holds the Proxy-specific state variables.\n  This contract is inherited by the GovernanceStorage (and indirectly by MainStorage)\n  to prevent collision hazard.\n*/\ncontract ProxyStorage is GovernanceStorage {\n    // NOLINTNEXTLINE: naming-convention uninitialized-state.\n    mapping(address =\u003e bytes32) internal initializationHash_DEPRECATED;\n\n    // The time after which we can switch to the implementation.\n    // Hash(implementation, data, finalize) =\u003e time.\n    mapping(bytes32 =\u003e uint256) internal enabledTime;\n\n    // A central storage of the flags whether implementation has been initialized.\n    // Note - it can be used flexibly enough to accommodate multiple levels of initialization\n    // (i.e. using different key salting schemes for different initialization levels).\n    mapping(bytes32 =\u003e bool) internal initialized;\n}\n"},"StorageSlots.sol":{"content":"/*\n  Copyright 2019-2022 StarkWare Industries Ltd.\n\n  Licensed under the Apache License, Version 2.0 (the \"License\").\n  You may not use this file except in compliance with the License.\n  You may obtain a copy of the License at\n\n  https://www.starkware.co/open-source-license/\n\n  Unless required by applicable law or agreed to in writing,\n  software distributed under the License is distributed on an \"AS IS\" BASIS,\n  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n  See the License for the specific language governing permissions\n  and limitations under the License.\n*/\n// SPDX-License-Identifier: Apache-2.0.\npragma solidity ^0.6.12;\n\n/**\n  StorageSlots holds the arbitrary storage slots used throughout the Proxy pattern.\n  Storage address slots are a mechanism to define an arbitrary location, that will not be\n  overlapped by the logical contracts.\n*/\ncontract StorageSlots {\n    // Storage slot with the address of the current implementation.\n    // The address of the slot is keccak256(\"StarkWare2019.implemntation-slot\").\n    // We need to keep this variable stored outside of the commonly used space,\n    // so that it\u0027s not overrun by the logical implementation (the proxied contract).\n    bytes32 internal constant IMPLEMENTATION_SLOT =\n        0x177667240aeeea7e35eabe3a35e18306f336219e1386f7710a6bf8783f761b24;\n\n    // Storage slot with the address of the call-proxy current implementation.\n    // The address of the slot is keccak256(\"\u0027StarkWare2020.CallProxy.Implemntation.Slot\u0027\").\n    // We need to keep this variable stored outside of the commonly used space.\n    // so that it\u0027s not overrun by the logical implementation (the proxied contract).\n    bytes32 internal constant CALL_PROXY_IMPL_SLOT =\n        0x7184681641399eb4ad2fdb92114857ee6ff239f94ad635a1779978947b8843be;\n\n    // This storage slot stores the finalization flag.\n    // Once the value stored in this slot is set to non-zero\n    // the proxy blocks implementation upgrades.\n    // The current implementation is then referred to as Finalized.\n    // Web3.solidityKeccak([\u0027string\u0027], [\"StarkWare2019.finalization-flag-slot\"]).\n    bytes32 internal constant FINALIZED_STATE_SLOT =\n        0x7d433c6f837e8f93009937c466c82efbb5ba621fae36886d0cac433c5d0aa7d2;\n\n    // Storage slot to hold the upgrade delay (time-lock).\n    // The intention of this slot is to allow modification using an EIC.\n    // Web3.solidityKeccak([\u0027string\u0027], [\u0027StarkWare.Upgradibility.Delay.Slot\u0027]).\n    bytes32 public constant UPGRADE_DELAY_SLOT =\n        0xc21dbb3089fcb2c4f4c6a67854ab4db2b0f233ea4b21b21f912d52d18fc5db1f;\n}\n"}}