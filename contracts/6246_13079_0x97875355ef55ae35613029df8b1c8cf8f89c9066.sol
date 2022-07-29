{"IERC20.sol":{"content":"pragma solidity ^0.6.6;\n\n/**\n * @dev Interface of the ERC20 standard as defined in the EIP. Does not include\n * the optional functions; to access them see `ERC20Detailed`.\n */\ninterface IERC20 {\n    /**\n     * @dev Returns the amount of tokens in existence.\n     */\n    function totalSupply() external view returns (uint);\n\n    /**\n     * @dev Returns the amount of tokens owned by `account`.\n     */\n    function balanceOf(address account) external view returns (uint);\n\n    /**\n     * @dev Moves `amount` tokens from the caller\u0027s account to `recipient`.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a `Transfer` event.\n     */\n    function transfer(address recipient, uint amount) external;\n\n    /**\n     * @dev Returns the remaining number of tokens that `spender` will be\n     * allowed to spend on behalf of `owner` through `transferFrom`. This is\n     * zero by default.\n     *\n     * This value changes when `approve` or `transferFrom` are called.\n     */\n    function allowance(address owner, address spender) external view returns (uint256);\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the caller\u0027s tokens.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * \u003e Beware that changing an allowance with this method brings the risk\n     * that someone may use both the old and the new allowance by unfortunate\n     * transaction ordering. One possible solution to mitigate this race\n     * condition is to first reduce the spender\u0027s allowance to 0 and set the\n     * desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     *\n     * Emits an `Approval` event.\n     */\n    function approve(address spender, uint amount) external;\n\n    /**\n     * @dev Moves `amount` tokens from `sender` to `recipient` using the\n     * allowance mechanism. `amount` is then deducted from the caller\u0027s\n     * allowance.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a `Transfer` event.\n     */\n    function transferFrom(address sender, address recipient, uint amount) external;\n\n    /**\n     * @dev Returns the number of decimals used to get its user representation.\n     * For example, if `decimals` equals `2`, a balance of `505` tokens should\n     * be displayed to a user as `5,05` (`505 / 10 ** 2`).\n     *\n     * Tokens usually opt for a value of 18, imitating the relationship between\n     * Ether and Wei.\n     *\n     * NOTE: This information is only used for _display_ purposes: it in\n     * no way affects any of the arithmetic of the contract, including\n     * {IERC20-balanceOf} and {IERC20-transfer}.\n     */\n    function decimals() external view returns (uint);\n\n    /**\n     * @dev Emitted when `value` tokens are moved from one account (`from`) to\n     * another (`to`).\n     *\n     * Note that `value` may be zero.\n     */\n    event Transfer(address indexed from, address indexed to, uint value);\n\n    /**\n     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\n     * a call to `approve`. `value` is the new allowance.\n     */\n    event Approval(address indexed owner, address indexed spender, uint value);\n}\n"},"pause.sol":{"content":"pragma solidity ^0.6.6;\n\ncontract AdminPausable {\n    address public admin;\n    address public successor;\n    bool public paused;\n    uint public expire;\n\n    constructor(address _admin) public {\n        admin = _admin;\n        paused = false;\n        expire = block.timestamp + 3 * 365 days;\n    }\n\n    event Paused(address pauser);\n    event Unpaused(address pauser);\n    event Extend(uint ndays);\n    event Claim(address claimer);\n\n    modifier onlyAdmin() {\n        require(msg.sender == admin, \"not admin\");\n        _;\n    }\n\n    modifier isPaused() {\n        require(paused, \"not paused right now\");\n        _;\n    }\n\n    modifier isNotPaused() {\n        require(!paused, \"paused right now\");\n        _;\n    }\n\n    modifier isNotExpired() {\n        require(block.timestamp \u003c expire, \"expired\");\n        _;\n    }\n\n    function retire(address _successor) public onlyAdmin isNotExpired {\n        successor = _successor;\n    }\n\n    function claim() public isNotExpired {\n        require(msg.sender == successor, \"unauthorized\");\n        admin = successor;\n        emit Claim(admin);\n    }\n\n    function extend(uint n) public onlyAdmin isNotExpired {\n        require(n \u003c 366, \"cannot extend for too long\"); // To prevent overflow\n        expire = expire + n * 1 days;\n        emit Extend(n);\n    }\n\n    function pause() public onlyAdmin isNotPaused isNotExpired {\n        paused = true;\n        emit Paused(msg.sender);\n    }\n\n    function unpause() public onlyAdmin isPaused {\n        paused = false;\n        emit Unpaused(msg.sender);\n    }\n}\n"},"vault.sol":{"content":"pragma solidity ^0.6.6;\npragma experimental ABIEncoderV2;\n\nimport \"./IERC20.sol\";\nimport \"./pause.sol\";\n\n/**\n * Math operations with safety checks\n */\nlibrary SafeMath {\n  function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {\n    uint256 c = a * b;\n    require(a == 0 || c / a == b);\n    return c;\n  }\n\n  function safeDiv(uint256 a, uint256 b) internal pure returns (uint256) {\n    require(b \u003e 0);\n    uint256 c = a / b;\n    require(a == b * c + a % b);\n    return c;\n  }\n\n  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {\n    require(b \u003c= a);\n    return a - b;\n  }\n\n  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {\n    uint256 c = a + b;\n    require(c\u003e=a \u0026\u0026 c\u003e=b);\n    return c;\n  }\n}\n\n\n/**\n * @dev Interface of the contract capable of checking if an instruction is\n * confirmed over at Incognito Chain\n */\ninterface Incognito {\n    function instructionApproved(\n        bool,\n        bytes32,\n        uint,\n        bytes32[] calldata,\n        bool[] calldata,\n        bytes32,\n        bytes32,\n        uint[] calldata,\n        uint8[] calldata,\n        bytes32[] calldata,\n        bytes32[] calldata\n    ) external view returns (bool);\n}\n\n/**\n * @dev Interface of the previous Vault contract to query burn proof status\n */\ninterface Withdrawable {\n    function isWithdrawed(bytes32)  external view returns (bool);\n    function isSigDataUsed(bytes32)  external view returns (bool);\n    function getDepositedBalance(address, address)  external view returns (uint);\n    function updateAssets(address[] calldata, uint[] calldata) external returns (bool);\n    function paused() external view returns (bool);\n}\n\n/**\n * @dev Responsible for holding the assets and issue minting instruction to\n * Incognito Chain. Also, when presented with a burn proof created over at\n * Incognito Chain, releases the tokens back to user\n */\ncontract Vault is AdminPausable {\n    using SafeMath for uint;\n    address constant public ETH_TOKEN = 0x0000000000000000000000000000000000000000;\n    mapping(bytes32 =\u003e bool) public withdrawed;\n    mapping(bytes32 =\u003e bool) public sigDataUsed;\n    // address =\u003e token =\u003e amount\n    mapping(address =\u003e mapping(address =\u003e uint)) public withdrawRequests;\n    mapping(address =\u003e mapping(address =\u003e bool)) public migration;\n    mapping(address =\u003e uint) public totalDepositedToSCAmount;\n    Incognito public incognito;\n    Withdrawable public prevVault;\n    address payable public newVault;\n    bool public notEntered = true;\n\n    struct BurnInstData {\n        uint8 meta; // type of the instruction\n        uint8 shard; // ID of the Incognito shard containing the instruction, must be 1\n        address token; // ETH address of the token contract (0x0 for ETH)\n        address payable to; // ETH address of the receiver of the token\n        uint amount; // burned amount (on Incognito)\n        bytes32 itx; // Incognito\u0027s burning tx\n    }\n\n    // error code\n    enum Errors {\n        EMPTY,\n        NO_REENTRANCE,\n        MAX_UINT_REACHED,\n        VALUE_OVER_FLOW,\n        INTERNAL_TX_ERROR,\n        ALREADY_USED,\n        INVALID_DATA,\n        TOKEN_NOT_ENOUGH,\n        WITHDRAW_REQUEST_TOKEN_NOT_ENOUGH,\n        INVALID_RETURN_DATA,\n        NOT_EQUAL,\n        NULL_VALUE,\n        ONLY_PREVAULT,\n        PREVAULT_NOT_PAUSED\n    }\n\n    event Deposit(address token, string incognitoAddress, uint amount);\n    event Withdraw(address token, address to, uint amount);\n    event Migrate(address newVault);\n    event MoveAssets(address[] assets);\n    event UpdateTokenTotal(address[] assets, uint[] amounts);\n    event UpdateIncognitoProxy(address newIncognitoProxy);\n\n    /**\n     * modifier for contract version\n     */\n     modifier onlyPreVault(){\n        require(address(prevVault) != address(0x0) \u0026\u0026 msg.sender == address(prevVault), errorToString(Errors.ONLY_PREVAULT));\n        _;\n     }\n\n    /**\n     * @dev Prevents a contract from calling itself, directly or indirectly.\n     * Calling a `nonReentrant` function from another `nonReentrant`\n     * function is not supported. It is possible to prevent this from happening\n     * by making the `nonReentrant` function external, and make it call a\n     * `private` function that does the actual work.\n     */\n    modifier nonReentrant() {\n        // On the first call to nonReentrant, notEntered will be true\n        require(notEntered, errorToString(Errors.NO_REENTRANCE));\n\n        // Any calls to nonReentrant after this point will fail\n        notEntered = false;\n\n        _;\n\n        // By storing the original value once again, a refund is triggered (see\n        // https://eips.ethereum.org/EIPS/eip-2200)\n        notEntered = true;\n    }\n\n    /**\n     * @dev Creates new Vault to hold assets for Incognito Chain\n     * @param admin: authorized address to Pause and migrate contract\n     * @param incognitoProxyAddress: contract containing Incognito\u0027s committees\n     * @param _prevVault: previous version of the Vault to refer back if necessary\n     * After migrating all assets to a new Vault, we still need to refer\n     * back to previous Vault to make sure old withdrawals aren\u0027t being reused\n     */\n    constructor(address admin, address incognitoProxyAddress, address _prevVault) public AdminPausable(admin) {\n        incognito = Incognito(incognitoProxyAddress);\n        prevVault = Withdrawable(_prevVault);\n        newVault = address(0);\n    }\n\n    /**\n     * @dev Makes a ETH deposit to the vault to mint pETH over at Incognito Chain\n     * @notice This only works when the contract is not Paused\n     * @notice The maximum amount to deposit is capped since Incognito balance is stored as uint64\n     * @param incognitoAddress: Incognito Address to receive pETH\n     */\n    function deposit(string memory incognitoAddress) public payable isNotPaused nonReentrant {\n        require(address(this).balance \u003c= 10 ** 27, errorToString(Errors.MAX_UINT_REACHED));\n        emit Deposit(ETH_TOKEN, incognitoAddress, msg.value);\n    }\n\n    /**\n     * @dev Makes a ERC20 deposit to the vault to mint pERC20 over at Incognito Chain\n     * @notice This only works when the contract is not Paused\n     * @notice The maximum amount to deposit is capped since Incognito balance is stored as uint64\n     * @notice Before calling this function, enough ERC20 must be allowed to\n     * tranfer from msg.sender to this contract\n     * @param token: address of the ERC20 token\n     * @param amount: to deposit to the vault and mint on Incognito Chain\n     * @param incognitoAddress: Incognito Address to receive pERC20\n     */\n    function depositERC20(address token, uint amount, string memory incognitoAddress) public payable isNotPaused nonReentrant {\n        IERC20 erc20Interface = IERC20(token);\n        uint8 decimals = getDecimals(address(token));\n        uint tokenBalance = erc20Interface.balanceOf(address(this));\n        uint beforeTransfer = tokenBalance;\n        uint emitAmount = amount;\n        if (decimals \u003e 9) {\n            emitAmount = emitAmount / (10 ** (uint(decimals) - 9));\n            tokenBalance = tokenBalance / (10 ** (uint(decimals) - 9));\n        }\n        require(emitAmount \u003c= 10 ** 18 \u0026\u0026 tokenBalance \u003c= 10 ** 18 \u0026\u0026 emitAmount.safeAdd(tokenBalance) \u003c= 10 ** 18, errorToString(Errors.VALUE_OVER_FLOW));\n        erc20Interface.transferFrom(msg.sender, address(this), amount);\n        require(checkSuccess(), errorToString(Errors.INTERNAL_TX_ERROR));\n        require(balanceOf(token).safeSub(beforeTransfer) == amount, errorToString(Errors.NOT_EQUAL));\n\n        emit Deposit(token, incognitoAddress, emitAmount);\n    }\n\n    /**\n     * @dev Checks if a burn proof has been used before\n     * @notice First, we check inside the storage of this contract itself. If the\n     * hash has been used before, we return the result. Otherwise, we query\n     * previous vault recursively until the first Vault (prevVault address is 0x0)\n     * @param hash: of the burn proof\n     * @return bool: whether the proof has been used or not\n     */\n    function isWithdrawed(bytes32 hash) public view returns(bool) {\n        if (withdrawed[hash]) {\n            return true;\n        } else if (address(prevVault) == address(0)) {\n            return false;\n        }\n        return prevVault.isWithdrawed(hash);\n    }\n\n    /**\n     * @dev Parses a burn instruction and returns the components\n     * @param inst: the full instruction, containing both metadata and body\n     */\n    function parseBurnInst(bytes memory inst) public pure returns (BurnInstData memory) {\n        BurnInstData memory data;\n        data.meta = uint8(inst[0]);\n        data.shard = uint8(inst[1]);\n        address token;\n        address payable to;\n        uint amount;\n        bytes32 itx;\n        assembly {\n            // skip first 0x20 bytes (stored length of inst)\n            token := mload(add(inst, 0x22)) // [3:34]\n            to := mload(add(inst, 0x42)) // [34:66]\n            amount := mload(add(inst, 0x62)) // [66:98]\n            itx := mload(add(inst, 0x82)) // [98:130]\n        }\n        data.token = token;\n        data.to = to;\n        data.amount = amount;\n        data.itx = itx;\n        return data;\n    }\n\n    /**\n     * @dev Verifies that a burn instruction is valid\n     * @notice All params except inst are the list of 2 elements corresponding to\n     * the proof on beacon and bridge\n     * @notice All params are the same as in `withdraw`\n     */\n    function verifyInst(\n        bytes memory inst,\n        uint heights,\n        bytes32[] memory instPaths,\n        bool[] memory instPathIsLefts,\n        bytes32 instRoots,\n        bytes32 blkData,\n        uint[] memory sigIdxs,\n        uint8[] memory sigVs,\n        bytes32[] memory sigRs,\n        bytes32[] memory sigSs\n    ) view internal {\n        // Each instruction can only by redeemed once\n        bytes32 beaconInstHash = keccak256(abi.encodePacked(inst, heights));\n\n        // Verify instruction on beacon\n        require(incognito.instructionApproved(\n            true, // Only check instruction on beacon\n            beaconInstHash,\n            heights,\n            instPaths,\n            instPathIsLefts,\n            instRoots,\n            blkData,\n            sigIdxs,\n            sigVs,\n            sigRs,\n            sigSs\n        ), errorToString(Errors.INVALID_DATA));\n    }\n\n    /**\n     * @dev Withdraws pETH/pIERC20 by providing a burn proof over at Incognito Chain\n     * @notice This function takes a burn instruction on Incognito Chain, checks\n     * for its validity and returns the token back to ETH chain\n     * @notice This only works when the contract is not Paused\n     * @param inst: the decoded instruction as a list of bytes\n     * @param heights: the blocks containing the instruction\n     * @param instPaths: merkle path of the instruction\n     * @param instPathIsLefts: whether each node on the path is the left or right child\n     * @param instRoots: root of the merkle tree contains all instructions\n     * @param blkData: merkle has of the block body\n     * @param sigIdxs: indices of the validators who signed this block\n     * @param sigVs: part of the signatures of the validators\n     * @param sigRs: part of the signatures of the validators\n     * @param sigSs: part of the signatures of the validators\n     */\n    function withdraw(\n        bytes memory inst,\n        uint heights,\n        bytes32[] memory instPaths,\n        bool[] memory instPathIsLefts,\n        bytes32 instRoots,\n        bytes32 blkData,\n        uint[] memory sigIdxs,\n        uint8[] memory sigVs,\n        bytes32[] memory sigRs,\n        bytes32[] memory sigSs\n    ) public isNotPaused nonReentrant {\n        BurnInstData memory data = parseBurnInst(inst);\n        require(data.meta == 241 \u0026\u0026 data.shard == 1); // Check instruction type\n\n        // Not withdrawed\n        require(!isWithdrawed(data.itx), errorToString(Errors.ALREADY_USED));\n        withdrawed[data.itx] = true;\n\n        // Check if balance is enough\n        if (data.token == ETH_TOKEN) {\n            require(address(this).balance \u003e= data.amount.safeAdd(totalDepositedToSCAmount[data.token]), errorToString(Errors.TOKEN_NOT_ENOUGH));\n        } else {\n            uint8 decimals = getDecimals(data.token);\n            if (decimals \u003e 9) {\n                data.amount = data.amount * (10 ** (uint(decimals) - 9));\n            }\n            require(IERC20(data.token).balanceOf(address(this)) \u003e= data.amount.safeAdd(totalDepositedToSCAmount[data.token]), errorToString(Errors.TOKEN_NOT_ENOUGH));\n        }\n\n        verifyInst(\n            inst,\n            heights,\n            instPaths,\n            instPathIsLefts,\n            instRoots,\n            blkData,\n            sigIdxs,\n            sigVs,\n            sigRs,\n            sigSs\n        );\n\n        // Send and notify\n        if (data.token == ETH_TOKEN) {\n          (bool success, ) =  data.to.call{value: data.amount}(\"\");\n          require(success, errorToString(Errors.INTERNAL_TX_ERROR));\n        } else {\n            IERC20(data.token).transfer(data.to, data.amount);\n            require(checkSuccess(), errorToString(Errors.INTERNAL_TX_ERROR));\n        }\n        emit Withdraw(data.token, data.to, data.amount);\n    }\n\n    /**\n     * @dev Burnt Proof is submited to store burnt amount of p-token/p-ETH and receiver\u0027s address\n     * Receiver then can call withdrawRequest to withdraw these token to he/she incognito address.\n     * @notice This function takes a burn instruction on Incognito Chain, checks\n     * for its validity and returns the token back to ETH chain\n     * @notice This only works when the contract is not Paused\n     * @param inst: the decoded instruction as a list of bytes\n     * @param heights: the blocks containing the instruction\n     * @param instPaths: merkle path of the instruction\n     * @param instPathIsLefts: whether each node on the path is the left or right child\n     * @param instRoots: root of the merkle tree contains all instructions\n     * @param blkData: merkle has of the block body\n     * @param sigIdxs: indices of the validators who signed this block\n     * @param sigVs: part of the signatures of the validators\n     * @param sigRs: part of the signatures of the validators\n     * @param sigSs: part of the signatures of the validators\n     */\n    function submitBurnProof(\n        bytes memory inst,\n        uint heights,\n        bytes32[] memory instPaths,\n        bool[] memory instPathIsLefts,\n        bytes32 instRoots,\n        bytes32 blkData,\n        uint[] memory sigIdxs,\n        uint8[] memory sigVs,\n        bytes32[] memory sigRs,\n        bytes32[] memory sigSs\n    ) public isNotPaused nonReentrant {\n        BurnInstData memory data = parseBurnInst(inst);\n        require(data.meta == 243 \u0026\u0026 data.shard == 1); // Check instruction type\n\n        // Not withdrawed\n        require(!isWithdrawed(data.itx), errorToString(Errors.ALREADY_USED));\n        withdrawed[data.itx] = true;\n\n        // Check if balance is enough\n        if (data.token == ETH_TOKEN) {\n            require(address(this).balance \u003e= data.amount.safeAdd(totalDepositedToSCAmount[data.token]), errorToString(Errors.TOKEN_NOT_ENOUGH));\n        } else {\n            uint8 decimals = getDecimals(data.token);\n            if (decimals \u003e 9) {\n                data.amount = data.amount * (10 ** (uint(decimals) - 9));\n            }\n            require(IERC20(data.token).balanceOf(address(this)) \u003e= data.amount.safeAdd(totalDepositedToSCAmount[data.token]), errorToString(Errors.TOKEN_NOT_ENOUGH));\n        }\n\n        verifyInst(\n            inst,\n            heights,\n            instPaths,\n            instPathIsLefts,\n            instRoots,\n            blkData,\n            sigIdxs,\n            sigVs,\n            sigRs,\n            sigSs\n        );\n\n        withdrawRequests[data.to][data.token] = withdrawRequests[data.to][data.token].safeAdd(data.amount);\n        totalDepositedToSCAmount[data.token] = totalDepositedToSCAmount[data.token].safeAdd(data.amount);\n    }\n\n    /**\n     * @dev generate address from signature data and hash.\n     */\n    function sigToAddress(bytes memory signData, bytes32 hash) public pure returns (address) {\n        bytes32 s;\n        bytes32 r;\n        uint8 v;\n        assembly {\n            r := mload(add(signData, 0x20))\n            s := mload(add(signData, 0x40))\n        }\n        v = uint8(signData[64]) + 27;\n        return ecrecover(hash, v, r, s);\n    }\n\n    /**\n     * @dev Checks if a sig data has been used before\n     * @notice First, we check inside the storage of this contract itself. If the\n     * hash has been used before, we return the result. Otherwise, we query\n     * previous vault recursively until the first Vault (prevVault address is 0x0)\n     * @param hash: of the sig data\n     * @return bool: whether the sig data has been used or not\n     */\n    function isSigDataUsed(bytes32 hash) public view returns(bool) {\n        if (sigDataUsed[hash]) {\n            return true;\n        } else if (address(prevVault) == address(0)) {\n            return false;\n        }\n        return prevVault.isSigDataUsed(hash);\n    }\n\n    /**\n     * @dev User requests withdraw token contains in withdrawRequests.\n     * Deposit event will be emitted to let incognito recognize and mint new p-tokens for the user.\n     * @param incognitoAddress: incognito\u0027s address that will receive minted p-tokens.\n     * @param token: ethereum\u0027s token address (eg., ETH, DAI, ...)\n     * @param amount: amount of the token in ethereum\u0027s denomination\n     * @param signData: signature of an unique data that is signed by an account which is generated from user\u0027s incognito privkey\n     * @param timestamp: unique data generated from client (timestamp for example)\n     */\n    function requestWithdraw(\n        string memory incognitoAddress,\n        address token,\n        uint amount,\n        bytes memory signData,\n        bytes memory timestamp\n    ) public isNotPaused nonReentrant {\n        // verify owner signs data\n        address verifier = verifySignData(abi.encodePacked(incognitoAddress, token, timestamp, amount), signData);\n\n        // migrate from preVault\n        migrateBalance(verifier, token);\n\n        require(withdrawRequests[verifier][token] \u003e= amount, errorToString(Errors.WITHDRAW_REQUEST_TOKEN_NOT_ENOUGH));\n        withdrawRequests[verifier][token] = withdrawRequests[verifier][token].safeSub(amount);\n        totalDepositedToSCAmount[token] = totalDepositedToSCAmount[token].safeSub(amount);\n\n        // convert denomination from ethereum\u0027s to incognito\u0027s (pcoin)\n        uint emitAmount = amount;\n        if (token != ETH_TOKEN) {\n            uint8 decimals = getDecimals(token);\n            if (decimals \u003e 9) {\n                emitAmount = amount / (10 ** (uint(decimals) - 9));\n            }\n        }\n\n        emit Deposit(token, incognitoAddress, emitAmount);\n    }\n\n    /**\n     * @dev execute is a general function that plays a role as proxy to interact to other smart contracts.\n     * @param token: ethereum\u0027s token address (eg., ETH, DAI, ...)\n     * @param amount: amount of the token in ethereum\u0027s denomination\n     * @param recipientToken: received token address.\n     * @param exchangeAddress: address of targeting smart contract that actually executes the desired logics like trade, invest, borrow and so on.\n     * @param callData: encoded with signature and params of function from targeting smart contract.\n     * @param timestamp: unique data generated from client (timestamp for example)\n     * @param signData: signature of an unique data that is signed by an account which is generated from user\u0027s incognito privkey\n     */\n    function execute(\n        address token,\n        uint amount,\n        address recipientToken,\n        address exchangeAddress,\n        bytes memory callData,\n        bytes memory timestamp,\n        bytes memory signData\n    ) public payable isNotPaused nonReentrant {\n        //verify ower signs data from input\n        address verifier = verifySignData(abi.encodePacked(exchangeAddress, callData, timestamp, amount), signData);\n\n        // migrate from preVault\n        migrateBalance(verifier, token);\n        require(withdrawRequests[verifier][token] \u003e= amount, errorToString(Errors.WITHDRAW_REQUEST_TOKEN_NOT_ENOUGH));\n\n        // update balance of verifier\n        totalDepositedToSCAmount[token] = totalDepositedToSCAmount[token].safeSub(amount);\n        withdrawRequests[verifier][token] = withdrawRequests[verifier][token].safeSub(amount);\n\n        // define number of eth spent for forwarder.\n        uint ethAmount = msg.value;\n        if (token == ETH_TOKEN) {\n            ethAmount = ethAmount.safeAdd(amount);\n        } else {\n            // transfer token to exchangeAddress.\n            require(IERC20(token).balanceOf(address(this)) \u003e= amount, errorToString(Errors.TOKEN_NOT_ENOUGH));\n            IERC20(token).transfer(exchangeAddress, amount);\n            require(checkSuccess(), errorToString(Errors.INTERNAL_TX_ERROR));\n        }\n        uint returnedAmount = callExtFunc(recipientToken, ethAmount, callData, exchangeAddress);\n\n        // update withdrawRequests\n        withdrawRequests[verifier][recipientToken] = withdrawRequests[verifier][recipientToken].safeAdd(returnedAmount);\n        totalDepositedToSCAmount[recipientToken] = totalDepositedToSCAmount[recipientToken].safeAdd(returnedAmount);\n    }\n\n    /**\n     * @dev single trade\n     */\n    function callExtFunc(address recipientToken, uint ethAmount, bytes memory callData, address exchangeAddress) internal returns (uint) {\n         // get balance of recipient token before trade to compare after trade.\n        uint balanceBeforeTrade = balanceOf(recipientToken);\n        if (recipientToken == ETH_TOKEN) {\n            balanceBeforeTrade = balanceBeforeTrade.safeSub(msg.value);\n        }\n        require(address(this).balance \u003e= ethAmount, errorToString(Errors.TOKEN_NOT_ENOUGH));\n        (bool success, bytes memory result) = exchangeAddress.call{value: ethAmount}(callData);\n        require(success);\n\n        (address returnedTokenAddress, uint returnedAmount) = abi.decode(result, (address, uint));\n        require(returnedTokenAddress == recipientToken \u0026\u0026 balanceOf(recipientToken).safeSub(balanceBeforeTrade) == returnedAmount, errorToString(Errors.INVALID_RETURN_DATA));\n\n        return returnedAmount;\n    }\n\n    /**\n     * @dev verify sign data\n     */\n     function verifySignData(bytes memory data, bytes memory signData) internal returns(address){\n        bytes32 hash = keccak256(data);\n        require(!isSigDataUsed(hash), errorToString(Errors.ALREADY_USED));\n        address verifier = sigToAddress(signData, hash);\n       // mark data hash of sig as used\n        sigDataUsed[hash] = true;\n\n        return verifier;\n     }\n\n    /**\n      * @dev migrate balance from previous vault\n      * Note: uncomment for next version\n      */\n    function migrateBalance(address owner, address token) internal {\n        if (address(prevVault) != address(0x0) \u0026\u0026 !migration[owner][token]) {\n            withdrawRequests[owner][token] = withdrawRequests[owner][token].safeAdd(prevVault.getDepositedBalance(token, owner));\n  \t        migration[owner][token] = true;\n  \t   }\n    }\n\n    /**\n     * @dev Get the amount of specific coin for specific wallet\n     */\n    function getDepositedBalance(\n        address token,\n        address owner\n    ) public view returns (uint) {\n        if (address(prevVault) != address(0x0) \u0026\u0026 !migration[owner][token]) {\n \t        return withdrawRequests[owner][token].safeAdd(prevVault.getDepositedBalance(token, owner));\n \t    }\n        return withdrawRequests[owner][token];\n    }\n\n    /**\n     * @dev Saves the address of the new Vault to migrate assets to\n     * @notice In case of emergency, Admin will Pause the contract, shutting down\n     * all incoming transactions. After a new contract with the fix is deployed,\n     * they will migrate assets to it and allow normal operations to resume\n     * @notice This only works when the contract is Paused\n     * @notice This can only be called by Admin\n     * @param _newVault: address to save\n     */\n    function migrate(address payable _newVault) public onlyAdmin isPaused {\n        require(_newVault != address(0), errorToString(Errors.NULL_VALUE));\n        newVault = _newVault;\n        emit Migrate(_newVault);\n    }\n\n    /**\n     * @dev Move some assets to newVault\n     * @notice This only works when the contract is Paused\n     * @notice This can only be called by Admin\n     * @param assets: address of the ERC20 tokens to move, 0x0 for ETH\n     */\n    function moveAssets(address[] memory assets) public onlyAdmin isPaused {\n        require(newVault != address(0), errorToString(Errors.NULL_VALUE));\n        uint[] memory amounts = new uint[](assets.length);\n        for (uint i = 0; i \u003c assets.length; i++) {\n            if (assets[i] == ETH_TOKEN) {\n                amounts[i] = totalDepositedToSCAmount[ETH_TOKEN];\n                (bool success, ) = newVault.call{value: address(this).balance}(\"\");\n                require(success, errorToString(Errors.INTERNAL_TX_ERROR));\n            } else {\n                uint bal = IERC20(assets[i]).balanceOf(address(this));\n                if (bal \u003e 0) {\n                    IERC20(assets[i]).transfer(newVault, bal);\n                    require(checkSuccess());\n                }\n                amounts[i] = totalDepositedToSCAmount[assets[i]];\n            }\n            totalDepositedToSCAmount[assets[i]] = 0;\n        }\n        require(Withdrawable(newVault).updateAssets(assets, amounts), errorToString(Errors.INTERNAL_TX_ERROR));\n\n        emit MoveAssets(assets);\n    }\n\n    /**\n     * @dev Move total number of assets to newVault\n     * @notice This only works when the preVault is Paused\n     * @notice This can only be called by preVault\n     * @param assets: address of the ERC20 tokens to move, 0x0 for ETH\n     * @param amounts: total number of the ERC20 tokens to move, 0x0 for ETH\n     */\n    function updateAssets(address[] calldata assets, uint[] calldata amounts) external onlyPreVault returns(bool) {\n        require(assets.length == amounts.length,  errorToString(Errors.NOT_EQUAL));\n        require(Withdrawable(prevVault).paused(), errorToString(Errors.PREVAULT_NOT_PAUSED));\n        for (uint i = 0; i \u003c assets.length; i++) {\n            totalDepositedToSCAmount[assets[i]] = totalDepositedToSCAmount[assets[i]].safeAdd(amounts[i]);\n        }\n        emit UpdateTokenTotal(assets, amounts);\n\n        return true;\n    }\n\n    /**\n     * @dev Changes the IncognitoProxy to use\n     * @notice If the IncognitoProxy contract malfunctioned, Admin could config\n     * the Vault to use a new fixed IncognitoProxy contract\n     * @notice This only works when the contract is Paused\n     * @notice This can only be called by Admin\n     * @param newIncognitoProxy: address of the new contract\n     */\n    function updateIncognitoProxy(address newIncognitoProxy) public onlyAdmin isPaused {\n        require(newIncognitoProxy != address(0), errorToString(Errors.NULL_VALUE));\n        incognito = Incognito(newIncognitoProxy);\n        emit UpdateIncognitoProxy(newIncognitoProxy);\n    }\n\n    /**\n     * @dev Payable receive function to receive Ether from oldVault when migrating\n     */\n    receive() external payable {}\n\n    /**\n     * @dev Check if transfer() and transferFrom() of ERC20 succeeded or not\n     * This check is needed to fix https://github.com/ethereum/solidity/issues/4116\n     * This function is copied from https://github.com/AdExNetwork/adex-protocol-eth/blob/master/contracts/libs/SafeERC20.sol\n     */\n    function checkSuccess() private pure returns (bool) {\n\t\tuint256 returnValue = 0;\n\t\tassembly {\n\t\t\t// check number of bytes returned from last function call\n\t\t\tswitch returndatasize()\n\n\t\t\t// no bytes returned: assume success\n\t\t\tcase 0x0 {\n\t\t\t\treturnValue := 1\n\t\t\t}\n\n\t\t\t// 32 bytes returned: check if non-zero\n\t\t\tcase 0x20 {\n\t\t\t\t// copy 32 bytes into scratch space\n\t\t\t\treturndatacopy(0x0, 0x0, 0x20)\n\n\t\t\t\t// load those bytes into returnValue\n\t\t\t\treturnValue := mload(0x0)\n\t\t\t}\n\n\t\t\t// not sure what was returned: don\u0027t mark as success\n\t\t\tdefault { }\n\t\t}\n\t\treturn returnValue != 0;\n\t}\n\n    /**\n     * @dev convert enum to string value\n     */\n     function errorToString(Errors error) internal pure returns(string memory) {\n        uint8 erroNum = uint8(error);\n        uint maxlength = 10;\n        bytes memory reversed = new bytes(maxlength);\n        uint i = 0;\n        while (erroNum != 0) {\n            uint8 remainder = erroNum % 10;\n            erroNum = erroNum / 10;\n            reversed[i++] = byte(48 + remainder);\n        }\n        bytes memory s = new bytes(i + 1);\n        for (uint j = 0; j \u003c= i; j++) {\n            s[j] = reversed[i - j];\n        }\n        return string(s);\n    }\n\n    /**\n     * @dev Get the decimals of an ERC20 token, return 0 if it isn\u0027t defined\n     * We check the returndatasize to covert both cases that the token has\n     * and doesn\u0027t have the function decimals()\n     */\n    function getDecimals(address token) public view returns (uint8) {\n        IERC20 erc20 = IERC20(token);\n        return uint8(erc20.decimals());\n    }\n\n    /**\n     * @dev Get the amount of coin deposited to this smartcontract\n     */\n    function balanceOf(address token) public view returns (uint) {\n        if (token == ETH_TOKEN) {\n            return address(this).balance;\n        }\n        return IERC20(token).balanceOf(address(this));\n    }\n}\n"}}