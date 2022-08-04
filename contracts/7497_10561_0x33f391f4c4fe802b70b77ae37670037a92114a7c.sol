// /Users/valerioleo/Projects/coinburp-staking-raffle/src/solidity/reference/contracts/BurpToken/BurpERC20Token.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

import '@openzeppelin/contracts/presets/ERC20PresetFixedSupply.sol';

contract BurpERC20Token is ERC20PresetFixedSupply {
  constructor(
    string memory name,
    string memory symbol,
    uint256 initialSupply,
    address owner
  ) public ERC20PresetFixedSupply(name, symbol, initialSupply, owner) { }

}

