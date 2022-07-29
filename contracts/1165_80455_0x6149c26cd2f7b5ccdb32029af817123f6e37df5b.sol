{{
  "language": "Solidity",
  "sources": {
    "contracts/LaunchPoolToken.sol": {
      "content": "pragma solidity 0.6.12;\npragma experimental ABIEncoderV2;\n\n// Copyright 2020 Compound Labs, Inc.\n// Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\n// 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\n// 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n// 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.\n// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n\ncontract LaunchPoolToken {\n    /// @notice EIP-20 token name for this token\n    string public constant name = \"Launchpool token\";\n\n    /// @notice EIP-20 token symbol for this token\n    string public constant symbol = \"LPOOL\";\n\n    /// @notice EIP-20 token decimals for this token\n    uint8 public constant decimals = 18;\n\n    /// @notice Total number of tokens in circulation\n    uint public totalSupply;\n\n    /// @notice Allowance amounts on behalf of others\n    mapping (address => mapping (address => uint96)) internal allowances;\n\n    /// @notice Official record of token balances for each account\n    mapping (address => uint96) internal balances;\n\n    /// @notice A record of each accounts delegate\n    mapping (address => address) public delegates;\n\n    /// @notice A checkpoint for marking number of votes from a given block\n    struct Checkpoint {\n        uint32 fromBlock;\n        uint96 votes;\n    }\n\n    /// @notice A record of votes checkpoints for each account, by index\n    mapping (address => mapping (uint32 => Checkpoint)) public checkpoints;\n\n    /// @notice The number of checkpoints for each account\n    mapping (address => uint32) public numCheckpoints;\n\n    /// @notice The EIP-712 typehash for the contract's domain\n    bytes32 public constant DOMAIN_TYPEHASH = keccak256(\"EIP712Domain(string name,uint256 chainId,address verifyingContract)\");\n\n    /// @notice The EIP-712 typehash for the delegation struct used by the contract\n    bytes32 public constant DELEGATION_TYPEHASH = keccak256(\"Delegation(address delegatee,uint256 nonce,uint256 expiry)\");\n\n    /// @notice A record of states for signing / validating signatures\n    mapping (address => uint) public nonces;\n\n    /// @notice An event thats emitted when an account changes its delegate\n    event DelegateChanged(address indexed delegator, address indexed fromDelegate, address indexed toDelegate);\n\n    /// @notice An event thats emitted when a delegate account's vote balance changes\n    event DelegateVotesChanged(address indexed delegate, uint previousBalance, uint newBalance);\n\n    /// @notice The standard EIP-20 transfer event\n    event Transfer(address indexed from, address indexed to, uint256 amount);\n\n    /// @notice The standard EIP-20 approval event\n    event Approval(address indexed owner, address indexed spender, uint256 amount);\n\n    /**\n     * @notice Construct a new Fuel token\n     * @param initialSupply The initial supply minted at deployment\n     * @param account The initial account to grant all the tokens\n     */\n    constructor(uint initialSupply, address account) public {\n        totalSupply = safe96(initialSupply, \"Token::constructor:amount exceeds 96 bits\");\n        balances[account] = uint96(initialSupply);\n        emit Transfer(address(0), account, initialSupply);\n    }\n\n    /**\n     * @notice Get the number of tokens `spender` is approved to spend on behalf of `account`\n     * @param account The address of the account holding the funds\n     * @param spender The address of the account spending the funds\n     * @return The number of tokens approved\n     */\n    function allowance(address account, address spender) external view returns (uint) {\n        return allowances[account][spender];\n    }\n\n    /**\n     * @notice Approve `spender` to transfer up to `amount` from `src`\n     * @dev This will overwrite the approval amount for `spender`\n     *  and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)\n     * @param spender The address of the account which may transfer tokens\n     * @param rawAmount The number of tokens that are approved (2^256-1 means infinite)\n     * @return Whether or not the approval succeeded\n     */\n    function approve(address spender, uint rawAmount) external returns (bool) {\n        uint96 amount;\n        if (rawAmount == uint(-1)) {\n            amount = uint96(-1);\n        } else {\n            amount = safe96(rawAmount, \"Token::approve: amount exceeds 96 bits\");\n        }\n\n        allowances[msg.sender][spender] = amount;\n\n        emit Approval(msg.sender, spender, amount);\n        return true;\n    }\n\n    /**\n     * @notice Get the number of tokens held by the `account`\n     * @param account The address of the account to get the balance of\n     * @return The number of tokens held\n     */\n    function balanceOf(address account) external view returns (uint) {\n        return balances[account];\n    }\n\n    /**\n     * @notice Burn `amount` tokens\n     * @param rawAmount The number of tokens to burn\n     */\n    function burn(uint rawAmount) external {\n        uint96 amount = safe96(rawAmount, \"Token::burn: amount exceeds 96 bits\");\n        _burnTokens(msg.sender, amount);\n    }\n\n    /**\n     * @notice Transfer `amount` tokens from `msg.sender` to `dst`\n     * @param dst The address of the destination account\n     * @param rawAmount The number of tokens to transfer\n     * @return Whether or not the transfer succeeded\n     */\n    function transfer(address dst, uint rawAmount) external returns (bool) {\n        uint96 amount = safe96(rawAmount, \"Token::transfer: amount exceeds 96 bits\");\n        _transferTokens(msg.sender, dst, amount);\n        return true;\n    }\n\n    /**\n     * @notice Transfer `amount` tokens from `src` to `dst`\n     * @param src The address of the source account\n     * @param dst The address of the destination account\n     * @param rawAmount The number of tokens to transfer\n     * @return Whether or not the transfer succeeded\n     */\n    function transferFrom(address src, address dst, uint rawAmount) external returns (bool) {\n        address spender = msg.sender;\n        uint96 spenderAllowance = allowances[src][spender];\n        uint96 amount = safe96(rawAmount, \"Token::approve: amount exceeds 96 bits\");\n\n        if (spender != src && spenderAllowance != uint96(-1)) {\n            uint96 newAllowance = sub96(spenderAllowance, amount, \"Token::transferFrom: transfer amount exceeds spender allowance\");\n            allowances[src][spender] = newAllowance;\n\n            emit Approval(src, spender, newAllowance);\n        }\n\n        _transferTokens(src, dst, amount);\n        return true;\n    }\n\n    /**\n     * @notice Delegate votes from `msg.sender` to `delegatee`\n     * @param delegatee The address to delegate votes to\n     */\n    function delegate(address delegatee) public {\n        return _delegate(msg.sender, delegatee);\n    }\n\n    /**\n     * @notice Delegates votes from signatory to `delegatee`\n     * @param delegatee The address to delegate votes to\n     * @param nonce The contract state required to match the signature\n     * @param expiry The time at which to expire the signature\n     * @param v The recovery byte of the signature\n     * @param r Half of the ECDSA signature pair\n     * @param s Half of the ECDSA signature pair\n     */\n    function delegateBySig(address delegatee, uint nonce, uint expiry, uint8 v, bytes32 r, bytes32 s) public {\n        bytes32 domainSeparator = keccak256(abi.encode(DOMAIN_TYPEHASH, keccak256(bytes(name)), getChainId(), address(this)));\n        bytes32 structHash = keccak256(abi.encode(DELEGATION_TYPEHASH, delegatee, nonce, expiry));\n        bytes32 digest = keccak256(abi.encodePacked(\"\\x19\\x01\", domainSeparator, structHash));\n        address signatory = ecrecover(digest, v, r, s);\n        require(signatory != address(0), \"Token::delegateBySig: invalid signature\");\n        require(nonce == nonces[signatory]++, \"Token::delegateBySig: invalid nonce\");\n        require(now <= expiry, \"Token::delegateBySig: signature expired\");\n        return _delegate(signatory, delegatee);\n    }\n\n    /**\n     * @notice Gets the current votes balance for `account`\n     * @param account The address to get votes balance\n     * @return The number of current votes for `account`\n     */\n    function getCurrentVotes(address account) external view returns (uint96) {\n        uint32 nCheckpoints = numCheckpoints[account];\n        return nCheckpoints > 0 ? checkpoints[account][nCheckpoints - 1].votes : 0;\n    }\n\n    /**\n     * @notice Determine the prior number of votes for an account as of a block number\n     * @dev Block number must be a finalized block or else this function will revert to prevent misinformation.\n     * @param account The address of the account to check\n     * @param blockNumber The block number to get the vote balance at\n     * @return The number of votes the account had as of the given block\n     */\n    function getPriorVotes(address account, uint blockNumber) public view returns (uint96) {\n        require(blockNumber < block.number, \"Token::getPriorVotes: not yet determined\");\n\n        uint32 nCheckpoints = numCheckpoints[account];\n        if (nCheckpoints == 0) {\n            return 0;\n        }\n\n        // First check most recent balance\n        if (checkpoints[account][nCheckpoints - 1].fromBlock <= blockNumber) {\n            return checkpoints[account][nCheckpoints - 1].votes;\n        }\n\n        // Next check implicit zero balance\n        if (checkpoints[account][0].fromBlock > blockNumber) {\n            return 0;\n        }\n\n        uint32 lower = 0;\n        uint32 upper = nCheckpoints - 1;\n        while (upper > lower) {\n            uint32 center = upper - (upper - lower) / 2; // ceil, avoiding overflow\n            Checkpoint memory cp = checkpoints[account][center];\n            if (cp.fromBlock == blockNumber) {\n                return cp.votes;\n            } else if (cp.fromBlock < blockNumber) {\n                lower = center;\n            } else {\n                upper = center - 1;\n            }\n        }\n        return checkpoints[account][lower].votes;\n    }\n\n    function _delegate(address delegator, address delegatee) internal {\n        address currentDelegate = delegates[delegator];\n        uint96 delegatorBalance = balances[delegator];\n        delegates[delegator] = delegatee;\n\n        emit DelegateChanged(delegator, currentDelegate, delegatee);\n\n        _moveDelegates(currentDelegate, delegatee, delegatorBalance);\n    }\n\n    function _transferTokens(address src, address dst, uint96 amount) internal {\n        require(src != address(0), \"Token::_transferTokens: cannot transfer from the zero address\");\n        require(dst != address(0), \"Token::_transferTokens: cannot transfer to the zero address\");\n\n        balances[src] = sub96(balances[src], amount, \"Token::_transferTokens: transfer amount exceeds balance\");\n        balances[dst] = add96(balances[dst], amount, \"Token::_transferTokens: transfer amount overflows\");\n        emit Transfer(src, dst, amount);\n\n        _moveDelegates(delegates[src], delegates[dst], amount);\n    }\n\n    function _mintTokens(address dst, uint96 amount) internal {\n        require(dst != address(0), \"Token::_mintTokens: cannot transfer to the zero address\");\n        uint96 supply = safe96(totalSupply, \"Token::_mintTokens: totalSupply exceeds 96 bits\");\n        totalSupply = add96(supply, amount, \"Token::_mintTokens: totalSupply exceeds 96 bits\");\n        balances[dst] = add96(balances[dst], amount, \"Token::_mintTokens: transfer amount overflows\");\n        emit Transfer(address(0), dst, amount);\n\n        _moveDelegates(address(0), delegates[dst], amount);\n    }\n\n    function _burnTokens(address src, uint96 amount) internal {\n        uint96 supply = safe96(totalSupply, \"Token::_burnTokens: totalSupply exceeds 96 bits\");\n        totalSupply = sub96(supply, amount, \"Token::_burnTokens:totalSupply underflow\");\n        balances[src] = sub96(balances[src], amount, \"Token::_burnTokens: amount overflows\");\n        emit Transfer(src, address(0), amount);\n\n        _moveDelegates(delegates[src], address(0), amount);\n    }\n\n    function _moveDelegates(address srcRep, address dstRep, uint96 amount) internal {\n        if (srcRep != dstRep && amount > 0) {\n            if (srcRep != address(0)) {\n                uint32 srcRepNum = numCheckpoints[srcRep];\n                uint96 srcRepOld = srcRepNum > 0 ? checkpoints[srcRep][srcRepNum - 1].votes : 0;\n                uint96 srcRepNew = sub96(srcRepOld, amount, \"Token::_moveVotes: vote amount underflows\");\n                _writeCheckpoint(srcRep, srcRepNum, srcRepOld, srcRepNew);\n            }\n\n            if (dstRep != address(0)) {\n                uint32 dstRepNum = numCheckpoints[dstRep];\n                uint96 dstRepOld = dstRepNum > 0 ? checkpoints[dstRep][dstRepNum - 1].votes : 0;\n                uint96 dstRepNew = add96(dstRepOld, amount, \"Token::_moveVotes: vote amount overflows\");\n                _writeCheckpoint(dstRep, dstRepNum, dstRepOld, dstRepNew);\n            }\n        }\n    }\n\n    function _writeCheckpoint(address delegatee, uint32 nCheckpoints, uint96 oldVotes, uint96 newVotes) internal {\n        uint32 blockNumber = safe32(block.number, \"Token::_writeCheckpoint: block number exceeds 32 bits\");\n\n        if (nCheckpoints > 0 && checkpoints[delegatee][nCheckpoints - 1].fromBlock == blockNumber) {\n            checkpoints[delegatee][nCheckpoints - 1].votes = newVotes;\n        } else {\n            checkpoints[delegatee][nCheckpoints] = Checkpoint(blockNumber, newVotes);\n            numCheckpoints[delegatee] = nCheckpoints + 1;\n        }\n\n        emit DelegateVotesChanged(delegatee, oldVotes, newVotes);\n    }\n\n    function safe32(uint n, string memory errorMessage) internal pure returns (uint32) {\n        require(n < 2**32, errorMessage);\n        return uint32(n);\n    }\n\n    function safe96(uint n, string memory errorMessage) internal pure returns (uint96) {\n        require(n < 2**96, errorMessage);\n        return uint96(n);\n    }\n\n    function add96(uint96 a, uint96 b, string memory errorMessage) internal pure returns (uint96) {\n        uint96 c = a + b;\n        require(c >= a, errorMessage);\n        return c;\n    }\n\n    function sub96(uint96 a, uint96 b, string memory errorMessage) internal pure returns (uint96) {\n        require(b <= a, errorMessage);\n        return a - b;\n    }\n\n    function getChainId() internal pure returns (uint) {\n        uint256 chainId;\n        assembly { chainId := chainid() }\n        return chainId;\n    }\n}"
    }
  },
  "settings": {
    "metadata": {
      "useLiteralContent": false
    },
    "optimizer": {
      "enabled": true,
      "runs": 200
    },
    "outputSelection": {
      "*": {
        "*": [
          "evm.bytecode",
          "evm.deployedBytecode",
          "abi"
        ]
      }
    }
  }
}}