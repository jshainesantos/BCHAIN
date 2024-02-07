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
