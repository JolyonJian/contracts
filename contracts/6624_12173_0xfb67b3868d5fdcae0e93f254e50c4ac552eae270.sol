// contracts/EMatesMinterV2.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IEMatesMinter.sol";

contract EMatesMinterV2 is Ownable, IEMatesMinter {
    IEMates public immutable emates;
    IEthereumMix public immutable emix;
    uint256 public mintPrice;

    uint256 public limit;

    mapping(address => bool) private blacklist;

    constructor(
        IEMates _emates,
        IEthereumMix _emix,
        uint256 _mintPrice
    ) {
        emates = _emates;
        emix = _emix;
        mintPrice = _mintPrice;

        emit SetMintPrice(_mintPrice);
    }

    function addBlacklist(address[] memory blackuser) external onlyOwner {
        uint256 length = blackuser.length;
        for (uint256 i = 0; i < length; i += 1) {
            blacklist[blackuser[i]] = true;
        }
    }

    function removeBlacklist(address[] memory blackuser) external onlyOwner {
        uint256 length = blackuser.length;
        for (uint256 i = 0; i < length; i += 1) {
            blacklist[blackuser[i]] = false;
        }
    }

    function setLimit(uint256 _limit) external onlyOwner {
        limit = _limit;
        emit SetLimit(_limit);
    }

    function setMintPrice(uint256 _price) external onlyOwner {
        mintPrice = _price;
        emit SetMintPrice(_price);
    }

    function mint() public returns (uint256 id) {
        require(emates.totalSupply() < limit, "EMatesMinter: Limit exceeded");
        require(blacklist[msg.sender] != true);
        id = emates.mint(msg.sender);
        emix.transferFrom(msg.sender, address(this), mintPrice);
    }

    function mintWithPermit(
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 id) {
        emix.permit(msg.sender, address(this), mintPrice, deadline, v, r, s);
        id = mint();
    }

    function withdrawEmix() external onlyOwner {
        emix.transfer(msg.sender, emix.balanceOf(address(this)));
    }
}


