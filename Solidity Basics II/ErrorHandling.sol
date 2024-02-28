// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SafeValues {
    mapping(address => uint256) public userValues;

    function setValue(uint256 _newValue) public {
        // Only allow non-zero values to be set
        if (_newValue == 0) {
            revert("Value must not be zero");
        }
        userValues[msg.sender] = _newValue;
    }

    function getValue() public view returns (uint256) {
        uint256 value = userValues[msg.sender];
        if (value == 0) {
            revert("No value set for the sender");
        }
        return value;
    }
}
