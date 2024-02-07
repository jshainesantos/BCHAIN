// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract FunctionIntro {
    function add(uint x, uint y) external pure returns (uint) {
        return (x+y);
    }
}