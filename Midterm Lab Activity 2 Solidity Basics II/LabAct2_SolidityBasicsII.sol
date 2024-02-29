// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner address cannot be zero");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}

contract MyContract is Ownable {
    uint256 public dataValue;

    event ValueChanged(uint256 oldValue, uint256 newValue);

    constructor() Ownable() {}

    function setDataValue(uint256 newValue) public onlyOwner {
        uint256 oldValue = dataValue;
        dataValue = newValue;
        emit ValueChanged(oldValue, newValue);
    }
}
