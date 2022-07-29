{{
  "language": "Solidity",
  "sources": {
    "src/LiFiDiamond.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity 0.8.13;\n\nimport { LibDiamond } from \"./Libraries/LibDiamond.sol\";\nimport { IDiamondCut } from \"./Interfaces/IDiamondCut.sol\";\n\ncontract LiFiDiamond {\n    constructor(address _contractOwner, address _diamondCutFacet) payable {\n        LibDiamond.setContractOwner(_contractOwner);\n\n        // Add the diamondCut external function from the diamondCutFacet\n        IDiamondCut.FacetCut[] memory cut = new IDiamondCut.FacetCut[](1);\n        bytes4[] memory functionSelectors = new bytes4[](1);\n        functionSelectors[0] = IDiamondCut.diamondCut.selector;\n        cut[0] = IDiamondCut.FacetCut({\n            facetAddress: _diamondCutFacet,\n            action: IDiamondCut.FacetCutAction.Add,\n            functionSelectors: functionSelectors\n        });\n        LibDiamond.diamondCut(cut, address(0), \"\");\n    }\n\n    // Find facet for function that is called and execute the\n    // function if a facet is found and return any value.\n    // solhint-disable-next-line no-complex-fallback\n    fallback() external payable {\n        LibDiamond.DiamondStorage storage ds;\n        bytes32 position = LibDiamond.DIAMOND_STORAGE_POSITION;\n\n        // get diamond storage\n        // solhint-disable-next-line no-inline-assembly\n        assembly {\n            ds.slot := position\n        }\n\n        // get facet from function selector\n        address facet = ds.selectorToFacetAndPosition[msg.sig].facetAddress;\n        require(facet != address(0), \"Diamond: Function does not exist\");\n\n        // Execute external function from facet using delegatecall and return any value.\n        // solhint-disable-next-line no-inline-assembly\n        assembly {\n            // copy function selector and any arguments\n            calldatacopy(0, 0, calldatasize())\n            // execute function call using the facet\n            let result := delegatecall(gas(), facet, 0, calldatasize(), 0, 0)\n            // get any return value\n            returndatacopy(0, 0, returndatasize())\n            // return any return value or error back to the caller\n            switch result\n            case 0 {\n                revert(0, returndatasize())\n            }\n            default {\n                return(0, returndatasize())\n            }\n        }\n    }\n\n    // Able to receive ether\n    // solhint-disable-next-line no-empty-blocks\n    receive() external payable {}\n}\n"
    },
    "src/Libraries/LibDiamond.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity 0.8.13;\n\nimport { IDiamondCut } from \"../Interfaces/IDiamondCut.sol\";\n\nlibrary LibDiamond {\n    bytes32 internal constant DIAMOND_STORAGE_POSITION = keccak256(\"diamond.standard.diamond.storage\");\n\n    struct FacetAddressAndPosition {\n        address facetAddress;\n        uint96 functionSelectorPosition; // position in facetFunctionSelectors.functionSelectors array\n    }\n\n    struct FacetFunctionSelectors {\n        bytes4[] functionSelectors;\n        uint256 facetAddressPosition; // position of facetAddress in facetAddresses array\n    }\n\n    struct DiamondStorage {\n        // maps function selector to the facet address and\n        // the position of the selector in the facetFunctionSelectors.selectors array\n        mapping(bytes4 => FacetAddressAndPosition) selectorToFacetAndPosition;\n        // maps facet addresses to function selectors\n        mapping(address => FacetFunctionSelectors) facetFunctionSelectors;\n        // facet addresses\n        address[] facetAddresses;\n        // Used to query if a contract implements an interface.\n        // Used to implement ERC-165.\n        mapping(bytes4 => bool) supportedInterfaces;\n        // owner of the contract\n        address contractOwner;\n    }\n\n    function diamondStorage() internal pure returns (DiamondStorage storage ds) {\n        bytes32 position = DIAMOND_STORAGE_POSITION;\n        // solhint-disable-next-line no-inline-assembly\n        assembly {\n            ds.slot := position\n        }\n    }\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    function setContractOwner(address _newOwner) internal {\n        DiamondStorage storage ds = diamondStorage();\n        address previousOwner = ds.contractOwner;\n        ds.contractOwner = _newOwner;\n        emit OwnershipTransferred(previousOwner, _newOwner);\n    }\n\n    function contractOwner() internal view returns (address contractOwner_) {\n        contractOwner_ = diamondStorage().contractOwner;\n    }\n\n    function enforceIsContractOwner() internal view {\n        require(msg.sender == diamondStorage().contractOwner, \"LibDiamond: Must be contract owner\");\n    }\n\n    event DiamondCut(IDiamondCut.FacetCut[] _diamondCut, address _init, bytes _calldata);\n\n    // Internal function version of diamondCut\n    function diamondCut(\n        IDiamondCut.FacetCut[] memory _diamondCut,\n        address _init,\n        bytes memory _calldata\n    ) internal {\n        for (uint256 facetIndex; facetIndex < _diamondCut.length; facetIndex++) {\n            IDiamondCut.FacetCutAction action = _diamondCut[facetIndex].action;\n            if (action == IDiamondCut.FacetCutAction.Add) {\n                addFunctions(_diamondCut[facetIndex].facetAddress, _diamondCut[facetIndex].functionSelectors);\n            } else if (action == IDiamondCut.FacetCutAction.Replace) {\n                replaceFunctions(_diamondCut[facetIndex].facetAddress, _diamondCut[facetIndex].functionSelectors);\n            } else if (action == IDiamondCut.FacetCutAction.Remove) {\n                removeFunctions(_diamondCut[facetIndex].facetAddress, _diamondCut[facetIndex].functionSelectors);\n            } else {\n                revert(\"LibDiamondCut: Incorrect FacetCutAction\");\n            }\n        }\n        emit DiamondCut(_diamondCut, _init, _calldata);\n        initializeDiamondCut(_init, _calldata);\n    }\n\n    function addFunctions(address _facetAddress, bytes4[] memory _functionSelectors) internal {\n        require(_functionSelectors.length > 0, \"LibDiamondCut: No selectors in facet to cut\");\n        DiamondStorage storage ds = diamondStorage();\n        require(_facetAddress != address(0), \"LibDiamondCut: Add facet can't be address(0)\");\n        uint96 selectorPosition = uint96(ds.facetFunctionSelectors[_facetAddress].functionSelectors.length);\n        // add new facet address if it does not exist\n        if (selectorPosition == 0) {\n            addFacet(ds, _facetAddress);\n        }\n        for (uint256 selectorIndex; selectorIndex < _functionSelectors.length; selectorIndex++) {\n            bytes4 selector = _functionSelectors[selectorIndex];\n            address oldFacetAddress = ds.selectorToFacetAndPosition[selector].facetAddress;\n            require(oldFacetAddress == address(0), \"LibDiamondCut: Can't add function that already exists\");\n            addFunction(ds, selector, selectorPosition, _facetAddress);\n            selectorPosition++;\n        }\n    }\n\n    function replaceFunctions(address _facetAddress, bytes4[] memory _functionSelectors) internal {\n        require(_functionSelectors.length > 0, \"LibDiamondCut: No selectors in facet to cut\");\n        DiamondStorage storage ds = diamondStorage();\n        require(_facetAddress != address(0), \"LibDiamondCut: Add facet can't be address(0)\");\n        uint96 selectorPosition = uint96(ds.facetFunctionSelectors[_facetAddress].functionSelectors.length);\n        // add new facet address if it does not exist\n        if (selectorPosition == 0) {\n            addFacet(ds, _facetAddress);\n        }\n        for (uint256 selectorIndex; selectorIndex < _functionSelectors.length; selectorIndex++) {\n            bytes4 selector = _functionSelectors[selectorIndex];\n            address oldFacetAddress = ds.selectorToFacetAndPosition[selector].facetAddress;\n            require(oldFacetAddress != _facetAddress, \"LibDiamondCut: Can't replace function with same function\");\n            removeFunction(ds, oldFacetAddress, selector);\n            addFunction(ds, selector, selectorPosition, _facetAddress);\n            selectorPosition++;\n        }\n    }\n\n    function removeFunctions(address _facetAddress, bytes4[] memory _functionSelectors) internal {\n        require(_functionSelectors.length > 0, \"LibDiamondCut: No selectors in facet to cut\");\n        DiamondStorage storage ds = diamondStorage();\n        // if function does not exist then do nothing and return\n        require(_facetAddress == address(0), \"LibDiamondCut: Remove facet address must be address(0)\");\n        for (uint256 selectorIndex; selectorIndex < _functionSelectors.length; selectorIndex++) {\n            bytes4 selector = _functionSelectors[selectorIndex];\n            address oldFacetAddress = ds.selectorToFacetAndPosition[selector].facetAddress;\n            removeFunction(ds, oldFacetAddress, selector);\n        }\n    }\n\n    function addFacet(DiamondStorage storage ds, address _facetAddress) internal {\n        enforceHasContractCode(_facetAddress, \"LibDiamondCut: New facet has no code\");\n        ds.facetFunctionSelectors[_facetAddress].facetAddressPosition = ds.facetAddresses.length;\n        ds.facetAddresses.push(_facetAddress);\n    }\n\n    function addFunction(\n        DiamondStorage storage ds,\n        bytes4 _selector,\n        uint96 _selectorPosition,\n        address _facetAddress\n    ) internal {\n        ds.selectorToFacetAndPosition[_selector].functionSelectorPosition = _selectorPosition;\n        ds.facetFunctionSelectors[_facetAddress].functionSelectors.push(_selector);\n        ds.selectorToFacetAndPosition[_selector].facetAddress = _facetAddress;\n    }\n\n    function removeFunction(\n        DiamondStorage storage ds,\n        address _facetAddress,\n        bytes4 _selector\n    ) internal {\n        require(_facetAddress != address(0), \"LibDiamondCut: Can't remove function that doesn't exist\");\n        // an immutable function is a function defined directly in a diamond\n        require(_facetAddress != address(this), \"LibDiamondCut: Can't remove immutable function\");\n        // replace selector with last selector, then delete last selector\n        uint256 selectorPosition = ds.selectorToFacetAndPosition[_selector].functionSelectorPosition;\n        uint256 lastSelectorPosition = ds.facetFunctionSelectors[_facetAddress].functionSelectors.length - 1;\n        // if not the same then replace _selector with lastSelector\n        if (selectorPosition != lastSelectorPosition) {\n            bytes4 lastSelector = ds.facetFunctionSelectors[_facetAddress].functionSelectors[lastSelectorPosition];\n            ds.facetFunctionSelectors[_facetAddress].functionSelectors[selectorPosition] = lastSelector;\n            ds.selectorToFacetAndPosition[lastSelector].functionSelectorPosition = uint96(selectorPosition);\n        }\n        // delete the last selector\n        ds.facetFunctionSelectors[_facetAddress].functionSelectors.pop();\n        delete ds.selectorToFacetAndPosition[_selector];\n\n        // if no more selectors for facet address then delete the facet address\n        if (lastSelectorPosition == 0) {\n            // replace facet address with last facet address and delete last facet address\n            uint256 lastFacetAddressPosition = ds.facetAddresses.length - 1;\n            uint256 facetAddressPosition = ds.facetFunctionSelectors[_facetAddress].facetAddressPosition;\n            if (facetAddressPosition != lastFacetAddressPosition) {\n                address lastFacetAddress = ds.facetAddresses[lastFacetAddressPosition];\n                ds.facetAddresses[facetAddressPosition] = lastFacetAddress;\n                ds.facetFunctionSelectors[lastFacetAddress].facetAddressPosition = facetAddressPosition;\n            }\n            ds.facetAddresses.pop();\n            delete ds.facetFunctionSelectors[_facetAddress].facetAddressPosition;\n        }\n    }\n\n    function initializeDiamondCut(address _init, bytes memory _calldata) internal {\n        if (_init == address(0)) {\n            require(_calldata.length == 0, \"LibDiamondCut: _init is address(0) but_calldata is not empty\");\n        } else {\n            require(_calldata.length > 0, \"LibDiamondCut: _calldata is empty but _init is not address(0)\");\n            if (_init != address(this)) {\n                enforceHasContractCode(_init, \"LibDiamondCut: _init address has no code\");\n            }\n            // solhint-disable-next-line avoid-low-level-calls\n            (bool success, bytes memory error) = _init.delegatecall(_calldata);\n            if (!success) {\n                if (error.length > 0) {\n                    // bubble up the error\n                    revert(string(error));\n                } else {\n                    revert(\"LibDiamondCut: _init function reverted\");\n                }\n            }\n        }\n    }\n\n    function enforceHasContractCode(address _contract, string memory _errorMessage) internal view {\n        uint256 contractSize;\n        // solhint-disable-next-line no-inline-assembly\n        assembly {\n            contractSize := extcodesize(_contract)\n        }\n        require(contractSize > 0, _errorMessage);\n    }\n}\n"
    },
    "src/Interfaces/IDiamondCut.sol": {
      "content": "// SPDX-License-Identifier: MIT\npragma solidity 0.8.13;\n\ninterface IDiamondCut {\n    enum FacetCutAction {\n        Add,\n        Replace,\n        Remove\n    }\n    // Add=0, Replace=1, Remove=2\n\n    struct FacetCut {\n        address facetAddress;\n        FacetCutAction action;\n        bytes4[] functionSelectors;\n    }\n\n    /// @notice Add/replace/remove any number of functions and optionally execute\n    ///         a function with delegatecall\n    /// @param _diamondCut Contains the facet addresses and function selectors\n    /// @param _init The address of the contract or facet to execute _calldata\n    /// @param _calldata A function call, including function selector and arguments\n    ///                  _calldata is executed with delegatecall on _init\n    function diamondCut(\n        FacetCut[] calldata _diamondCut,\n        address _init,\n        bytes calldata _calldata\n    ) external;\n\n    event DiamondCut(FacetCut[] _diamondCut, address _init, bytes _calldata);\n}\n"
    }
  },
  "settings": {
    "optimizer": {
      "enabled": true,
      "runs": 10000
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
    "metadata": {
      "useLiteralContent": true
    },
    "libraries": {}
  }
}}