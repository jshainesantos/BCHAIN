// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MappingExample {
    // Define a mapping to store values associated with addresses
    mapping(address => uint256) public userValues;

    // Function to set a value for the sender's address
    function setValue(uint256 _value) public {
        // Only update the value if it's not already set
        if (userValues[msg.sender] == 0) {
            userValues[msg.sender] = _value;
        }
    }

    // Function to retrieve the value associated with the sender's address
    function getValue() public view returns (uint256) {
        return userValues[msg.sender];
    }
}
