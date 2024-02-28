// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract NewContract {
    uint256 public myValue;
    mapping(address => uint256) public userValues;

    // function
    constructor() {
        myValue = 99;
        userValues[msg.sender] = 200;
    }
}
