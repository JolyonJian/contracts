// contracts_common/src/BaseWithStorage/Admin.sol

pragma solidity ^0.5.2;

contract Admin {

    address internal _admin;

    event AdminChanged(address oldAdmin, address newAdmin);

    /// @notice gives the current administrator of this contract.
    /// @return the current administrator of this contract.
    function getAdmin() external view returns (address) {
        return _admin;
    }

    /// @notice change the administrator to be `newAdmin`.
    /// @param newAdmin address of the new administrator.
    function changeAdmin(address newAdmin) external {
        require(msg.sender == _admin, "only admin can change admin");
        emit AdminChanged(_admin, newAdmin);
        _admin = newAdmin;
    }

    modifier onlyAdmin() {
        require (msg.sender == _admin, "only admin allowed");
        _;
    }

}


// contracts_common/src/BaseWithStorage/Admin.sol

0xf3763fa108235379b48cf8fe9a708692fcb077250d9974351fd636ff0baf84bf

