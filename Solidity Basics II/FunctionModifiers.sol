// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ModifiedFunctions {
    mapping(address => uint256) public userValues;

    modifier nonZero(uint256 _newValue) {
        require(_newValue != 0, "Value must not be zero");
        _;
    }

    modifier valueSet() {
        require(userValues[msg.sender] != 0, "No value set for the sender");
        _;
    }

    function setValue(uint256 _newValue) public nonZero(_newValue) {
        userValues[msg.sender] = _newValue;
    }

    function getValue() public view valueSet returns (uint256) {
        return userValues[msg.sender];
    }
}
