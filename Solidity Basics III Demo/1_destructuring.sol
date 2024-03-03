// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract destructing {
    function multiOutput() public pure returns (uint256, bool) {
        return (2, true);
    }

    function namedOutput() public pure returns (uint256 a, bool b) {
        return (1, true);
    }

    function varAssigned() public pure returns (uint256 a, bool b) {
        a = 1;
        b = true;
    }
}
