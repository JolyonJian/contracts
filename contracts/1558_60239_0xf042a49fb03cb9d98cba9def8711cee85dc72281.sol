{{
  "language": "Solidity",
  "sources": {
    "contracts/wndgame/Tower.sol": {
      "content": "// SPDX-License-Identifier: MIT LICENSE\n\npragma solidity ^0.8.0;\n\nimport \"@openzeppelin/contracts/access/Ownable.sol\";\nimport \"@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol\";\nimport \"@openzeppelin/contracts/security/ReentrancyGuard.sol\";\nimport \"@openzeppelin/contracts/security/Pausable.sol\";\nimport \"./interfaces/IWnDGame.sol\";\nimport \"./interfaces/IWnD.sol\";\nimport \"./interfaces/IGP.sol\";\nimport \"./interfaces/ITower.sol\";\nimport \"./interfaces/ISacrificialAlter.sol\";\nimport \"./interfaces/IRandomizer.sol\";\n\ncontract Tower is ITower, Ownable, ReentrancyGuard, IERC721Receiver, Pausable {\n  \n  // maximum rank for a Wizard/Dragon\n  uint8 public constant MAX_RANK = 8;\n\n  // struct to store a stake's token, owner, and earning values\n  struct Stake {\n    uint16 tokenId;\n    uint80 value;\n    address owner;\n  }\n\n  uint256 private totalRankStaked;\n  uint256 private numWizardsStaked;\n\n  event TokenStaked(address indexed owner, uint256 indexed tokenId, bool indexed isWizard, uint256 value);\n  event WizardClaimed(uint256 indexed tokenId, bool indexed unstaked, uint256 earned);\n  event DragonClaimed(uint256 indexed tokenId, bool indexed unstaked, uint256 earned);\n\n  // reference to the WnD NFT contract\n  IWnD public wndNFT;\n  // reference to the WnD NFT contract\n  IWnDGame public wndGame;\n  // reference to the $GP contract for minting $GP earnings\n  IGP public gpToken;\n  // reference to Randomer \n  IRandomizer public randomizer;\n\n  // maps tokenId to stake\n  mapping(uint256 => Stake) private tower; \n  // maps rank to all Dragon staked with that rank\n  mapping(uint256 => Stake[]) private flight; \n  // tracks location of each Dragon in Flight\n  mapping(uint256 => uint256) private flightIndices; \n  // any rewards distributed when no dragons are staked\n  uint256 private unaccountedRewards = 0; \n  // amount of $GP due for each rank point staked\n  uint256 private gpPerRank = 0; \n\n  // wizards earn 12000 $GP per day\n  uint256 public constant DAILY_GP_RATE = 12000 ether;\n  // wizards must have 2 days worth of $GP to unstake or else they're still guarding the tower\n  uint256 public constant MINIMUM_TO_EXIT = 2 days;\n  // dragons take a 20% tax on all $GP claimed\n  uint256 public constant GP_CLAIM_TAX_PERCENTAGE = 20;\n  // there will only ever be (roughly) 2.4 billion $GP earned through staking\n  uint256 public constant MAXIMUM_GLOBAL_GP = 2880000000 ether;\n  uint256 public treasureChestTypeId;\n\n  // amount of $GP earned so far\n  uint256 public totalGPEarned;\n  // the last time $GP was claimed\n  uint256 private lastClaimTimestamp;\n\n  // emergency rescue to allow unstaking without any checks but without $GP\n  bool public rescueEnabled = false;\n\n  /**\n   */\n  constructor() {\n    _pause();\n  }\n\n  /** CRITICAL TO SETUP */\n\n  modifier requireContractsSet() {\n      require(address(wndNFT) != address(0) && address(gpToken) != address(0) \n        && address(wndGame) != address(0) && address(randomizer) != address(0), \"Contracts not set\");\n      _;\n  }\n\n  function setContracts(address _wndNFT, address _gp, address _wndGame, address _rand) external onlyOwner {\n    wndNFT = IWnD(_wndNFT);\n    gpToken = IGP(_gp);\n    wndGame = IWnDGame(_wndGame);\n    randomizer = IRandomizer(_rand);\n  }\n\n  function setTreasureChestId(uint256 typeId) external onlyOwner {\n    treasureChestTypeId = typeId;\n  }\n\n  /** STAKING */\n\n  /**\n   * adds Wizards and Dragons to the Tower and Flight\n   * @param account the address of the staker\n   * @param tokenIds the IDs of the Wizards and Dragons to stake\n   */\n  function addManyToTowerAndFlight(address account, uint16[] calldata tokenIds) external override nonReentrant {\n    require(tx.origin == _msgSender() || _msgSender() == address(wndGame), \"Only EOA\");\n    require(account == tx.origin, \"account to sender mismatch\");\n    for (uint i = 0; i < tokenIds.length; i++) {\n      if (_msgSender() != address(wndGame)) { // dont do this step if its a mint + stake\n        require(wndNFT.ownerOf(tokenIds[i]) == _msgSender(), \"You don't own this token\");\n        wndNFT.transferFrom(_msgSender(), address(this), tokenIds[i]);\n      } else if (tokenIds[i] == 0) {\n        continue; // there may be gaps in the array for stolen tokens\n      }\n\n      if (wndNFT.isWizard(tokenIds[i])) \n        _addWizardToTower(account, tokenIds[i]);\n      else \n        _addDragonToFlight(account, tokenIds[i]);\n    }\n  }\n\n  /**\n   * adds a single Wizard to the Tower\n   * @param account the address of the staker\n   * @param tokenId the ID of the Wizard to add to the Tower\n   */\n  function _addWizardToTower(address account, uint256 tokenId) internal whenNotPaused _updateEarnings {\n    tower[tokenId] = Stake({\n      owner: account,\n      tokenId: uint16(tokenId),\n      value: uint80(block.timestamp)\n    });\n    numWizardsStaked += 1;\n    emit TokenStaked(account, tokenId, true, block.timestamp);\n  }\n\n  /**\n   * adds a single Dragon to the Flight\n   * @param account the address of the staker\n   * @param tokenId the ID of the Dragon to add to the Flight\n   */\n  function _addDragonToFlight(address account, uint256 tokenId) internal {\n    uint8 rank = _rankForDragon(tokenId);\n    totalRankStaked += rank; // Portion of earnings ranges from 8 to 5\n    flightIndices[tokenId] = flight[rank].length; // Store the location of the dragon in the Flight\n    flight[rank].push(Stake({\n      owner: account,\n      tokenId: uint16(tokenId),\n      value: uint80(gpPerRank)\n    })); // Add the dragon to the Flight\n    emit TokenStaked(account, tokenId, false, gpPerRank);\n  }\n\n  /** CLAIMING / UNSTAKING */\n\n  /**\n   * realize $GP earnings and optionally unstake tokens from the Tower / Flight\n   * to unstake a Wizard it will require it has 2 days worth of $GP unclaimed\n   * @param tokenIds the IDs of the tokens to claim earnings from\n   * @param unstake whether or not to unstake ALL of the tokens listed in tokenIds\n   */\n  function claimManyFromTowerAndFlight(uint16[] calldata tokenIds, bool unstake) external whenNotPaused _updateEarnings nonReentrant {\n    require(tx.origin == _msgSender() || _msgSender() == address(wndGame), \"Only EOA\");\n    uint256 owed = 0;\n    for (uint i = 0; i < tokenIds.length; i++) {\n      if (wndNFT.isWizard(tokenIds[i])) {\n        owed += _claimWizardFromTower(tokenIds[i], unstake);\n      }\n      else {\n        owed += _claimDragonFromFlight(tokenIds[i], unstake);\n      }\n    }\n    gpToken.updateOriginAccess();\n    if (owed == 0) {\n      return;\n    }\n    gpToken.mint(_msgSender(), owed);\n  }\n\n  function calculateRewards(uint256 tokenId) external view returns (uint256 owed) {\n    uint64 lastTokenWrite = wndNFT.getTokenWriteBlock(tokenId);\n    // Must check this, as getTokenTraits will be allowed since this contract is an admin\n    require(lastTokenWrite < block.number, \"hmmmm what doing?\");\n    Stake memory stake = tower[tokenId];\n    if(wndNFT.isWizard(tokenId)) {\n      if (totalGPEarned < MAXIMUM_GLOBAL_GP) {\n        owed = (block.timestamp - stake.value) * DAILY_GP_RATE / 1 days;\n      } else if (stake.value > lastClaimTimestamp) {\n        owed = 0; // $GP production stopped already\n      } else {\n        owed = (lastClaimTimestamp - stake.value) * DAILY_GP_RATE / 1 days; // stop earning additional $GP if it's all been earned\n      }\n    }\n    else {\n      uint8 rank = _rankForDragon(tokenId);\n      owed = (rank) * (gpPerRank - stake.value); // Calculate portion of tokens based on Rank\n    }\n  }\n\n  /**\n   * realize $GP earnings for a single Wizard and optionally unstake it\n   * if not unstaking, pay a 20% tax to the staked Dragons\n   * if unstaking, there is a 50% chance all $GP is stolen\n   * @param tokenId the ID of the Wizards to claim earnings from\n   * @param unstake whether or not to unstake the Wizards\n   * @return owed - the amount of $GP earned\n   */\n  function _claimWizardFromTower(uint256 tokenId, bool unstake) internal returns (uint256 owed) {\n    Stake memory stake = tower[tokenId];\n    require(stake.owner == _msgSender(), \"Don't own the given token\");\n    require(!(unstake && block.timestamp - stake.value < MINIMUM_TO_EXIT), \"Still guarding the tower\");\n    if (totalGPEarned < MAXIMUM_GLOBAL_GP) {\n      owed = (block.timestamp - stake.value) * DAILY_GP_RATE / 1 days;\n    } else if (stake.value > lastClaimTimestamp) {\n      owed = 0; // $GP production stopped already\n    } else {\n      owed = (lastClaimTimestamp - stake.value) * DAILY_GP_RATE / 1 days; // stop earning additional $GP if it's all been earned\n    }\n    if (unstake) {\n      if (randomizer.random() & 1 == 1) { // 50% chance of all $GP stolen\n        _payDragonTax(owed);\n        owed = 0;\n      }\n      delete tower[tokenId];\n      numWizardsStaked -= 1;\n      // Always transfer last to guard against reentrance\n      wndNFT.safeTransferFrom(address(this), _msgSender(), tokenId, \"\"); // send back Wizard\n    } else {\n      _payDragonTax(owed * GP_CLAIM_TAX_PERCENTAGE / 100); // percentage tax to staked dragons\n      owed = owed * (100 - GP_CLAIM_TAX_PERCENTAGE) / 100; // remainder goes to Wizard owner\n      tower[tokenId] = Stake({\n        owner: _msgSender(),\n        tokenId: uint16(tokenId),\n        value: uint80(block.timestamp)\n      }); // reset stake\n    }\n    emit WizardClaimed(tokenId, unstake, owed);\n  }\n\n  /**\n   * realize $GP earnings for a single Dragon and optionally unstake it\n   * Dragons earn $GP proportional to their rank\n   * @param tokenId the ID of the Dragon to claim earnings from\n   * @param unstake whether or not to unstake the Dragon\n   * @return owed - the amount of $GP earned\n   */\n  function _claimDragonFromFlight(uint256 tokenId, bool unstake) internal returns (uint256 owed) {\n    require(wndNFT.ownerOf(tokenId) == address(this), \"Doesn't own token\");\n    uint8 rank = _rankForDragon(tokenId);\n    Stake memory stake = flight[rank][flightIndices[tokenId]];\n    require(stake.owner == _msgSender(), \"Doesn't own token\");\n    owed = (rank) * (gpPerRank - stake.value); // Calculate portion of tokens based on Rank\n    if (unstake) {\n      totalRankStaked -= rank; // Remove rank from total staked\n      Stake memory lastStake = flight[rank][flight[rank].length - 1];\n      flight[rank][flightIndices[tokenId]] = lastStake; // Shuffle last Dragon to current position\n      flightIndices[lastStake.tokenId] = flightIndices[tokenId];\n      flight[rank].pop(); // Remove duplicate\n      delete flightIndices[tokenId]; // Delete old mapping\n      // Always remove last to guard against reentrance\n      wndNFT.safeTransferFrom(address(this), _msgSender(), tokenId, \"\"); // Send back Dragon\n    } else {\n      flight[rank][flightIndices[tokenId]] = Stake({\n        owner: _msgSender(),\n        tokenId: uint16(tokenId),\n        value: uint80(gpPerRank)\n      }); // reset stake\n    }\n    emit DragonClaimed(tokenId, unstake, owed);\n  }\n  /**\n   * emergency unstake tokens\n   * @param tokenIds the IDs of the tokens to claim earnings from\n   */\n  function rescue(uint256[] calldata tokenIds) external nonReentrant {\n    require(rescueEnabled, \"RESCUE DISABLED\");\n    uint256 tokenId;\n    Stake memory stake;\n    Stake memory lastStake;\n    uint8 rank;\n    for (uint i = 0; i < tokenIds.length; i++) {\n      tokenId = tokenIds[i];\n      if (wndNFT.isWizard(tokenId)) {\n        stake = tower[tokenId];\n        require(stake.owner == _msgSender(), \"SWIPER, NO SWIPING\");\n        delete tower[tokenId];\n        numWizardsStaked -= 1;\n        wndNFT.safeTransferFrom(address(this), _msgSender(), tokenId, \"\"); // send back Wizards\n        emit WizardClaimed(tokenId, true, 0);\n      } else {\n        rank = _rankForDragon(tokenId);\n        stake = flight[rank][flightIndices[tokenId]];\n        require(stake.owner == _msgSender(), \"SWIPER, NO SWIPING\");\n        totalRankStaked -= rank; // Remove Rank from total staked\n        lastStake = flight[rank][flight[rank].length - 1];\n        flight[rank][flightIndices[tokenId]] = lastStake; // Shuffle last Dragon to current position\n        flightIndices[lastStake.tokenId] = flightIndices[tokenId];\n        flight[rank].pop(); // Remove duplicate\n        delete flightIndices[tokenId]; // Delete old mapping\n        wndNFT.safeTransferFrom(address(this), _msgSender(), tokenId, \"\"); // Send back Dragon\n        emit DragonClaimed(tokenId, true, 0);\n      }\n    }\n  }\n\n  /** ACCOUNTING */\n\n  /** \n   * add $GP to claimable pot for the Flight\n   * @param amount $GP to add to the pot\n   */\n  function _payDragonTax(uint256 amount) internal {\n    if (totalRankStaked == 0) { // if there's no staked dragons\n      unaccountedRewards += amount; // keep track of $GP due to dragons\n      return;\n    }\n    // makes sure to include any unaccounted $GP \n    gpPerRank += (amount + unaccountedRewards) / totalRankStaked;\n    unaccountedRewards = 0;\n  }\n\n  /**\n   * tracks $GP earnings to ensure it stops once 2.4 billion is eclipsed\n   */\n  modifier _updateEarnings() {\n    if (totalGPEarned < MAXIMUM_GLOBAL_GP) {\n      totalGPEarned += \n        (block.timestamp - lastClaimTimestamp)\n        * numWizardsStaked\n        * DAILY_GP_RATE / 1 days; \n      lastClaimTimestamp = block.timestamp;\n    }\n    _;\n  }\n\n  /** ADMIN */\n\n  /**\n   * allows owner to enable \"rescue mode\"\n   * simplifies accounting, prioritizes tokens out in emergency\n   */\n  function setRescueEnabled(bool _enabled) external onlyOwner {\n    rescueEnabled = _enabled;\n  }\n\n  /**\n   * enables owner to pause / unpause contract\n   */\n  function setPaused(bool _paused) external requireContractsSet onlyOwner {\n    if (_paused) _pause();\n    else _unpause();\n  }\n\n  /** READ ONLY */\n\n  /**\n   * gets the rank score for a Dragon\n   * @param tokenId the ID of the Dragon to get the rank score for\n   * @return the rank score of the Dragon (5-8)\n   */\n  function _rankForDragon(uint256 tokenId) internal view returns (uint8) {\n    IWnD.WizardDragon memory s = wndNFT.getTokenTraits(tokenId);\n    return MAX_RANK - s.rankIndex; // rank index is 0-3\n  }\n\n  /**\n   * chooses a random Dragon thief when a newly minted token is stolen\n   * @param seed a random value to choose a Dragon from\n   * @return the owner of the randomly selected Dragon thief\n   */\n  function randomDragonOwner(uint256 seed) external view override returns (address) {\n    if (totalRankStaked == 0) {\n      return address(0x0);\n    }\n    uint256 bucket = (seed & 0xFFFFFFFF) % totalRankStaked; // choose a value from 0 to total rank staked\n    uint256 cumulative;\n    seed >>= 32;\n    // loop through each bucket of Dragons with the same rank score\n    for (uint i = MAX_RANK - 3; i <= MAX_RANK; i++) {\n      cumulative += flight[i].length * i;\n      // if the value is not inside of that bucket, keep going\n      if (bucket >= cumulative) continue;\n      // get the address of a random Dragon with that rank score\n      return flight[i][seed % flight[i].length].owner;\n    }\n    return address(0x0);\n  }\n\n  function onERC721Received(\n        address,\n        address from,\n        uint256,\n        bytes calldata\n    ) external pure override returns (bytes4) {\n      require(from == address(0x0), \"Cannot send to Tower directly\");\n      return IERC721Receiver.onERC721Received.selector;\n    }\n\n  \n}"
    },
    "@openzeppelin/contracts/access/Ownable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which provides a basic access control mechanism, where\n * there is an account (an owner) that can be granted exclusive access to\n * specific functions.\n *\n * By default, the owner account will be the one that deploys the contract. This\n * can later be changed with {transferOwnership}.\n *\n * This module is used through inheritance. It will make available the modifier\n * `onlyOwner`, which can be applied to your functions to restrict their use to\n * the owner.\n */\nabstract contract Ownable is Context {\n    address private _owner;\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    /**\n     * @dev Initializes the contract setting the deployer as the initial owner.\n     */\n    constructor() {\n        _setOwner(_msgSender());\n    }\n\n    /**\n     * @dev Returns the address of the current owner.\n     */\n    function owner() public view virtual returns (address) {\n        return _owner;\n    }\n\n    /**\n     * @dev Throws if called by any account other than the owner.\n     */\n    modifier onlyOwner() {\n        require(owner() == _msgSender(), \"Ownable: caller is not the owner\");\n        _;\n    }\n\n    /**\n     * @dev Leaves the contract without owner. It will not be possible to call\n     * `onlyOwner` functions anymore. Can only be called by the current owner.\n     *\n     * NOTE: Renouncing ownership will leave the contract without an owner,\n     * thereby removing any functionality that is only available to the owner.\n     */\n    function renounceOwnership() public virtual onlyOwner {\n        _setOwner(address(0));\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Can only be called by the current owner.\n     */\n    function transferOwnership(address newOwner) public virtual onlyOwner {\n        require(newOwner != address(0), \"Ownable: new owner is the zero address\");\n        _setOwner(newOwner);\n    }\n\n    function _setOwner(address newOwner) private {\n        address oldOwner = _owner;\n        _owner = newOwner;\n        emit OwnershipTransferred(oldOwner, newOwner);\n    }\n}\n"
    },
    "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @title ERC721 token receiver interface\n * @dev Interface for any contract that wants to support safeTransfers\n * from ERC721 asset contracts.\n */\ninterface IERC721Receiver {\n    /**\n     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}\n     * by `operator` from `from`, this function is called.\n     *\n     * It must return its Solidity selector to confirm the token transfer.\n     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.\n     *\n     * The selector can be obtained in Solidity with `IERC721.onERC721Received.selector`.\n     */\n    function onERC721Received(\n        address operator,\n        address from,\n        uint256 tokenId,\n        bytes calldata data\n    ) external returns (bytes4);\n}\n"
    },
    "@openzeppelin/contracts/security/ReentrancyGuard.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Contract module that helps prevent reentrant calls to a function.\n *\n * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier\n * available, which can be applied to functions to make sure there are no nested\n * (reentrant) calls to them.\n *\n * Note that because there is a single `nonReentrant` guard, functions marked as\n * `nonReentrant` may not call one another. This can be worked around by making\n * those functions `private`, and then adding `external` `nonReentrant` entry\n * points to them.\n *\n * TIP: If you would like to learn more about reentrancy and alternative ways\n * to protect against it, check out our blog post\n * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].\n */\nabstract contract ReentrancyGuard {\n    // Booleans are more expensive than uint256 or any type that takes up a full\n    // word because each write operation emits an extra SLOAD to first read the\n    // slot's contents, replace the bits taken up by the boolean, and then write\n    // back. This is the compiler's defense against contract upgrades and\n    // pointer aliasing, and it cannot be disabled.\n\n    // The values being non-zero value makes deployment a bit more expensive,\n    // but in exchange the refund on every call to nonReentrant will be lower in\n    // amount. Since refunds are capped to a percentage of the total\n    // transaction's gas, it is best to keep them low in cases like this one, to\n    // increase the likelihood of the full refund coming into effect.\n    uint256 private constant _NOT_ENTERED = 1;\n    uint256 private constant _ENTERED = 2;\n\n    uint256 private _status;\n\n    constructor() {\n        _status = _NOT_ENTERED;\n    }\n\n    /**\n     * @dev Prevents a contract from calling itself, directly or indirectly.\n     * Calling a `nonReentrant` function from another `nonReentrant`\n     * function is not supported. It is possible to prevent this from happening\n     * by making the `nonReentrant` function external, and make it call a\n     * `private` function that does the actual work.\n     */\n    modifier nonReentrant() {\n        // On the first call to nonReentrant, _notEntered will be true\n        require(_status != _ENTERED, \"ReentrancyGuard: reentrant call\");\n\n        // Any calls to nonReentrant after this point will fail\n        _status = _ENTERED;\n\n        _;\n\n        // By storing the original value once again, a refund is triggered (see\n        // https://eips.ethereum.org/EIPS/eip-2200)\n        _status = _NOT_ENTERED;\n    }\n}\n"
    },
    "@openzeppelin/contracts/security/Pausable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which allows children to implement an emergency stop\n * mechanism that can be triggered by an authorized account.\n *\n * This module is used through inheritance. It will make available the\n * modifiers `whenNotPaused` and `whenPaused`, which can be applied to\n * the functions of your contract. Note that they will not be pausable by\n * simply including this module, only once the modifiers are put in place.\n */\nabstract contract Pausable is Context {\n    /**\n     * @dev Emitted when the pause is triggered by `account`.\n     */\n    event Paused(address account);\n\n    /**\n     * @dev Emitted when the pause is lifted by `account`.\n     */\n    event Unpaused(address account);\n\n    bool private _paused;\n\n    /**\n     * @dev Initializes the contract in unpaused state.\n     */\n    constructor() {\n        _paused = false;\n    }\n\n    /**\n     * @dev Returns true if the contract is paused, and false otherwise.\n     */\n    function paused() public view virtual returns (bool) {\n        return _paused;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is not paused.\n     *\n     * Requirements:\n     *\n     * - The contract must not be paused.\n     */\n    modifier whenNotPaused() {\n        require(!paused(), \"Pausable: paused\");\n        _;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is paused.\n     *\n     * Requirements:\n     *\n     * - The contract must be paused.\n     */\n    modifier whenPaused() {\n        require(paused(), \"Pausable: not paused\");\n        _;\n    }\n\n    /**\n     * @dev Triggers stopped state.\n     *\n     * Requirements:\n     *\n     * - The contract must not be paused.\n     */\n    function _pause() internal virtual whenNotPaused {\n        _paused = true;\n        emit Paused(_msgSender());\n    }\n\n    /**\n     * @dev Returns to normal state.\n     *\n     * Requirements:\n     *\n     * - The contract must be paused.\n     */\n    function _unpause() internal virtual whenPaused {\n        _paused = false;\n        emit Unpaused(_msgSender());\n    }\n}\n"
    },
    "contracts/wndgame/interfaces/IWnDGame.sol": {
      "content": "// SPDX-License-Identifier: MIT LICENSE\n\npragma solidity ^0.8.0;\n\ninterface IWnDGame {\n  \n}"
    },
    "contracts/wndgame/interfaces/IWnD.sol": {
      "content": "// SPDX-License-Identifier: MIT LICENSE\n\npragma solidity ^0.8.0;\n\nimport \"@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol\";\n\ninterface IWnD is IERC721Enumerable {\n\n    // game data storage\n    struct WizardDragon {\n        bool isWizard;\n        uint8 body;\n        uint8 head;\n        uint8 spell;\n        uint8 eyes;\n        uint8 neck;\n        uint8 mouth;\n        uint8 wand;\n        uint8 tail;\n        uint8 rankIndex;\n    }\n\n    function minted() external returns (uint16);\n    function updateOriginAccess(uint16[] memory tokenIds) external;\n    function mint(address recipient, uint256 seed) external;\n    function burn(uint256 tokenId) external;\n    function getMaxTokens() external view returns (uint256);\n    function getPaidTokens() external view returns (uint256);\n    function getTokenTraits(uint256 tokenId) external view returns (WizardDragon memory);\n    function getTokenWriteBlock(uint256 tokenId) external view returns(uint64);\n    function isWizard(uint256 tokenId) external view returns(bool);\n  \n}"
    },
    "contracts/wndgame/interfaces/IGP.sol": {
      "content": "// SPDX-License-Identifier: MIT LICENSE\n\npragma solidity ^0.8.0;\n\ninterface IGP {\n    function mint(address to, uint256 amount) external;\n    function burn(address from, uint256 amount) external;\n    function updateOriginAccess() external;\n    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);\n}"
    },
    "contracts/wndgame/interfaces/ITower.sol": {
      "content": "// SPDX-License-Identifier: MIT LICENSE \n\npragma solidity ^0.8.0;\n\ninterface ITower {\n  function addManyToTowerAndFlight(address account, uint16[] calldata tokenIds) external;\n  function randomDragonOwner(uint256 seed) external view returns (address);\n}"
    },
    "contracts/wndgame/interfaces/ISacrificialAlter.sol": {
      "content": "// SPDX-License-Identifier: MIT LICENSE\n\npragma solidity ^0.8.0;\n\ninterface ISacrificialAlter {\n    function mint(uint256 typeId, uint16 qty, address recipient) external;\n    function burn(uint256 typeId, uint16 qty, address burnFrom) external;\n    function updateOriginAccess() external;\n    function balanceOf(address account, uint256 id) external returns (uint256);\n    function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes memory data) external;\n}"
    },
    "contracts/wndgame/interfaces/IRandomizer.sol": {
      "content": "pragma solidity ^0.8.0;\n\ninterface IRandomizer {\n    function random() external returns (uint256);\n}"
    },
    "@openzeppelin/contracts/utils/Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal view virtual returns (address) {\n        return msg.sender;\n    }\n\n    function _msgData() internal view virtual returns (bytes calldata) {\n        return msg.data;\n    }\n}\n"
    },
    "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"../IERC721.sol\";\n\n/**\n * @title ERC-721 Non-Fungible Token Standard, optional enumeration extension\n * @dev See https://eips.ethereum.org/EIPS/eip-721\n */\ninterface IERC721Enumerable is IERC721 {\n    /**\n     * @dev Returns the total amount of tokens stored by the contract.\n     */\n    function totalSupply() external view returns (uint256);\n\n    /**\n     * @dev Returns a token ID owned by `owner` at a given `index` of its token list.\n     * Use along with {balanceOf} to enumerate all of ``owner``'s tokens.\n     */\n    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);\n\n    /**\n     * @dev Returns a token ID at a given `index` of all the tokens stored by the contract.\n     * Use along with {totalSupply} to enumerate all tokens.\n     */\n    function tokenByIndex(uint256 index) external view returns (uint256);\n}\n"
    },
    "@openzeppelin/contracts/token/ERC721/IERC721.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"../../utils/introspection/IERC165.sol\";\n\n/**\n * @dev Required interface of an ERC721 compliant contract.\n */\ninterface IERC721 is IERC165 {\n    /**\n     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.\n     */\n    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);\n\n    /**\n     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.\n     */\n    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);\n\n    /**\n     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.\n     */\n    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);\n\n    /**\n     * @dev Returns the number of tokens in ``owner``'s account.\n     */\n    function balanceOf(address owner) external view returns (uint256 balance);\n\n    /**\n     * @dev Returns the owner of the `tokenId` token.\n     *\n     * Requirements:\n     *\n     * - `tokenId` must exist.\n     */\n    function ownerOf(uint256 tokenId) external view returns (address owner);\n\n    /**\n     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients\n     * are aware of the ERC721 protocol to prevent tokens from being forever locked.\n     *\n     * Requirements:\n     *\n     * - `from` cannot be the zero address.\n     * - `to` cannot be the zero address.\n     * - `tokenId` token must exist and be owned by `from`.\n     * - If the caller is not `from`, it must be have been allowed to move this token by either {approve} or {setApprovalForAll}.\n     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.\n     *\n     * Emits a {Transfer} event.\n     */\n    function safeTransferFrom(\n        address from,\n        address to,\n        uint256 tokenId\n    ) external;\n\n    /**\n     * @dev Transfers `tokenId` token from `from` to `to`.\n     *\n     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.\n     *\n     * Requirements:\n     *\n     * - `from` cannot be the zero address.\n     * - `to` cannot be the zero address.\n     * - `tokenId` token must be owned by `from`.\n     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transferFrom(\n        address from,\n        address to,\n        uint256 tokenId\n    ) external;\n\n    /**\n     * @dev Gives permission to `to` to transfer `tokenId` token to another account.\n     * The approval is cleared when the token is transferred.\n     *\n     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.\n     *\n     * Requirements:\n     *\n     * - The caller must own the token or be an approved operator.\n     * - `tokenId` must exist.\n     *\n     * Emits an {Approval} event.\n     */\n    function approve(address to, uint256 tokenId) external;\n\n    /**\n     * @dev Returns the account approved for `tokenId` token.\n     *\n     * Requirements:\n     *\n     * - `tokenId` must exist.\n     */\n    function getApproved(uint256 tokenId) external view returns (address operator);\n\n    /**\n     * @dev Approve or remove `operator` as an operator for the caller.\n     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.\n     *\n     * Requirements:\n     *\n     * - The `operator` cannot be the caller.\n     *\n     * Emits an {ApprovalForAll} event.\n     */\n    function setApprovalForAll(address operator, bool _approved) external;\n\n    /**\n     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.\n     *\n     * See {setApprovalForAll}\n     */\n    function isApprovedForAll(address owner, address operator) external view returns (bool);\n\n    /**\n     * @dev Safely transfers `tokenId` token from `from` to `to`.\n     *\n     * Requirements:\n     *\n     * - `from` cannot be the zero address.\n     * - `to` cannot be the zero address.\n     * - `tokenId` token must exist and be owned by `from`.\n     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.\n     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.\n     *\n     * Emits a {Transfer} event.\n     */\n    function safeTransferFrom(\n        address from,\n        address to,\n        uint256 tokenId,\n        bytes calldata data\n    ) external;\n}\n"
    },
    "@openzeppelin/contracts/utils/introspection/IERC165.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Interface of the ERC165 standard, as defined in the\n * https://eips.ethereum.org/EIPS/eip-165[EIP].\n *\n * Implementers can declare support of contract interfaces, which can then be\n * queried by others ({ERC165Checker}).\n *\n * For an implementation, see {ERC165}.\n */\ninterface IERC165 {\n    /**\n     * @dev Returns true if this contract implements the interface defined by\n     * `interfaceId`. See the corresponding\n     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]\n     * to learn more about how these ids are created.\n     *\n     * This function call must use less than 30 000 gas.\n     */\n    function supportsInterface(bytes4 interfaceId) external view returns (bool);\n}\n"
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
    "metadata": {
      "useLiteralContent": true
    },
    "libraries": {}
  }
}}