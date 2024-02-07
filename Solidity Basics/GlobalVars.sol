// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract GlobalVariable {
    uint256 public globalValue;

    constructor() {
        globalValue = 100;
    }
}

contract MyContract is GlobalVariable {
    function getValue() public view returns (uint256) {
        return globalValue;
    }
}

//
This Solidity code defines a contract with a global variable globalValue initialized to 100, and another contract MyContract inheriting this variable, providing a function to retrieve its value.
