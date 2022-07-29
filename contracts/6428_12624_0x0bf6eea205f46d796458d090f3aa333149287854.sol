{{
  "language": "Solidity",
  "sources": {
    "contracts/PathRewards.sol": {
      "content": "//SPDX-License-Identifier: MIT\n\nimport \"@openzeppelin/contracts/token/ERC20/IERC20.sol\";\nimport \"@openzeppelin/contracts/access/Ownable.sol\";\n\npragma solidity 0.8.4;\n\ncontract PathRewards is Ownable{\n    IERC20 public token;\n\n    //total reward tokens will be 150,000,000 given out\n    uint public rewardRate = 0;\n    uint public rewardsDuration = 365 days;\n    uint public startRewardsTime;\n    uint public lastUpdateTime;\n    uint public lastRewardTimestamp;\n    uint public rewardPerTokenStored;\n\n    // last time\n    uint private stakedSupply = 0;\n    uint private claimedRewards = 0;\n\n    mapping(address => uint) public userRewardPerTokenPaid;\n    mapping(address => uint) public rewards;\n    mapping(address => uint) private _balances;\n\n    event Staked(address indexed user, uint amountStaked);\n    event Withdrawn(address indexed user, uint amountWithdrawn);\n    event RewardsClaimed(address indexed user, uint rewardsClaimed);\n    event RewardAmountSet(uint rewardRate, uint duration);\n\n    constructor(address  _tokenAddress, uint _startRewards) {\n        token = IERC20(_tokenAddress);\n        startRewardsTime = _startRewards;\n    }\n\n    modifier updateReward(address account) {\n        rewardPerTokenStored = rewardPerToken();\n        lastUpdateTime = rewardTimestamp();\n        if (account != address(0)){\n            rewards[account] = earned(account);\n            userRewardPerTokenPaid[account] = rewardPerTokenStored;\n        }\n        _;\n    }\n\n    //function to check if staking rewards have ended\n    function rewardTimestamp() internal view returns (uint) {\n        if (block.timestamp < lastRewardTimestamp) {\n            return block.timestamp;\n        }\n        else {\n            return lastRewardTimestamp;\n        }\n    }\n\n    //function to check if staking rewards have started\n    function startTimestamp() internal view returns (uint) {\n        if (startRewardsTime > lastUpdateTime) {\n            return startRewardsTime;\n        }\n        else {\n            return lastUpdateTime;\n        }\n    }\n\n    function balanceOf(address account) external view returns (uint) {\n        return _balances[account];\n    }\n\n\n    function totalStaked() public view returns (uint) {\n        return stakedSupply;\n    }\n\n    function totalClaimed() public view returns (uint) {\n        return claimedRewards;\n    }\n\n    function rewardPerToken() public view returns (uint) {\n        if (stakedSupply == 0 || block.timestamp < startRewardsTime) {\n            return 0;\n        }\n        return rewardPerTokenStored + (\n            (rewardRate * (rewardTimestamp()- startTimestamp()) * 1e18 / stakedSupply)\n        );\n    }\n\n    function earned(address account) public view returns (uint) {\n        return (\n            _balances[account] * (rewardPerToken() - userRewardPerTokenPaid[account]) / 1e18\n        ) + rewards[account];\n    }\n\n    function stake(uint _amount) external updateReward(msg.sender) {\n        require(_amount > 0, \"Must stake > 0 tokens\");\n        stakedSupply += _amount;\n        _balances[msg.sender] += _amount;\n        require(token.transferFrom(msg.sender, address(this), _amount), \"Token transfer failed\");\n        emit Staked(msg.sender, _amount);\n    }\n\n    function withdraw(uint _amount) public updateReward(msg.sender) {\n        require(_amount > 0, \"Must withdraw > 0 tokens\");\n        stakedSupply -= _amount;\n        _balances[msg.sender] -= _amount;\n        require(token.transfer(msg.sender, _amount), \"Token transfer failed\");\n        emit Withdrawn(msg.sender, _amount);\n    }\n\n    function getReward() public updateReward(msg.sender) {\n        uint reward = rewards[msg.sender];\n        if (reward > 0) {\n            rewards[msg.sender] = 0;\n            claimedRewards += reward;\n            require(token.transfer(msg.sender, reward), \"Token transfer failed\");\n            emit RewardsClaimed(msg.sender, reward);\n        }\n    }\n\n    function exit() external {\n        withdraw(_balances[msg.sender]);\n        getReward();\n    }\n\n    //owner only functions\n\n    function setRewardAmount(uint reward, uint _rewardsDuration) onlyOwner external updateReward(address(0)) {\n        rewardsDuration = _rewardsDuration;\n        rewardRate = reward / rewardsDuration;\n        uint balance = token.balanceOf(address(this)) - stakedSupply;\n\n        require(rewardRate <= balance / rewardsDuration, \"Contract does not have enough tokens for current reward rate\");\n\n        lastUpdateTime = block.timestamp;\n        if (block.timestamp < startRewardsTime) {\n            lastRewardTimestamp = startRewardsTime + rewardsDuration;\n        }\n        else {\n            lastRewardTimestamp = block.timestamp + rewardsDuration;\n        }\n        emit RewardAmountSet(rewardRate, _rewardsDuration);\n    }\n}\n"
    },
    "@openzeppelin/contracts/token/ERC20/IERC20.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Interface of the ERC20 standard as defined in the EIP.\n */\ninterface IERC20 {\n    /**\n     * @dev Returns the amount of tokens in existence.\n     */\n    function totalSupply() external view returns (uint256);\n\n    /**\n     * @dev Returns the amount of tokens owned by `account`.\n     */\n    function balanceOf(address account) external view returns (uint256);\n\n    /**\n     * @dev Moves `amount` tokens from the caller's account to `recipient`.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transfer(address recipient, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Returns the remaining number of tokens that `spender` will be\n     * allowed to spend on behalf of `owner` through {transferFrom}. This is\n     * zero by default.\n     *\n     * This value changes when {approve} or {transferFrom} are called.\n     */\n    function allowance(address owner, address spender) external view returns (uint256);\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * IMPORTANT: Beware that changing an allowance with this method brings the risk\n     * that someone may use both the old and the new allowance by unfortunate\n     * transaction ordering. One possible solution to mitigate this race\n     * condition is to first reduce the spender's allowance to 0 and set the\n     * desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     *\n     * Emits an {Approval} event.\n     */\n    function approve(address spender, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Moves `amount` tokens from `sender` to `recipient` using the\n     * allowance mechanism. `amount` is then deducted from the caller's\n     * allowance.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transferFrom(\n        address sender,\n        address recipient,\n        uint256 amount\n    ) external returns (bool);\n\n    /**\n     * @dev Emitted when `value` tokens are moved from one account (`from`) to\n     * another (`to`).\n     *\n     * Note that `value` may be zero.\n     */\n    event Transfer(address indexed from, address indexed to, uint256 value);\n\n    /**\n     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\n     * a call to {approve}. `value` is the new allowance.\n     */\n    event Approval(address indexed owner, address indexed spender, uint256 value);\n}\n"
    },
    "@openzeppelin/contracts/access/Ownable.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\nimport \"../utils/Context.sol\";\n\n/**\n * @dev Contract module which provides a basic access control mechanism, where\n * there is an account (an owner) that can be granted exclusive access to\n * specific functions.\n *\n * By default, the owner account will be the one that deploys the contract. This\n * can later be changed with {transferOwnership}.\n *\n * This module is used through inheritance. It will make available the modifier\n * `onlyOwner`, which can be applied to your functions to restrict their use to\n * the owner.\n */\nabstract contract Ownable is Context {\n    address private _owner;\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    /**\n     * @dev Initializes the contract setting the deployer as the initial owner.\n     */\n    constructor() {\n        _setOwner(_msgSender());\n    }\n\n    /**\n     * @dev Returns the address of the current owner.\n     */\n    function owner() public view virtual returns (address) {\n        return _owner;\n    }\n\n    /**\n     * @dev Throws if called by any account other than the owner.\n     */\n    modifier onlyOwner() {\n        require(owner() == _msgSender(), \"Ownable: caller is not the owner\");\n        _;\n    }\n\n    /**\n     * @dev Leaves the contract without owner. It will not be possible to call\n     * `onlyOwner` functions anymore. Can only be called by the current owner.\n     *\n     * NOTE: Renouncing ownership will leave the contract without an owner,\n     * thereby removing any functionality that is only available to the owner.\n     */\n    function renounceOwnership() public virtual onlyOwner {\n        _setOwner(address(0));\n    }\n\n    /**\n     * @dev Transfers ownership of the contract to a new account (`newOwner`).\n     * Can only be called by the current owner.\n     */\n    function transferOwnership(address newOwner) public virtual onlyOwner {\n        require(newOwner != address(0), \"Ownable: new owner is the zero address\");\n        _setOwner(newOwner);\n    }\n\n    function _setOwner(address newOwner) private {\n        address oldOwner = _owner;\n        _owner = newOwner;\n        emit OwnershipTransferred(oldOwner, newOwner);\n    }\n}\n"
    },
    "@openzeppelin/contracts/utils/Context.sol": {
      "content": "// SPDX-License-Identifier: MIT\n\npragma solidity ^0.8.0;\n\n/**\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal view virtual returns (address) {\n        return msg.sender;\n    }\n\n    function _msgData() internal view virtual returns (bytes calldata) {\n        return msg.data;\n    }\n}\n"
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