// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Conditionals {
    function bar(uint num) public pure returns (uint) {
        if (num < 5) {
            return 10;
        } else if (num < 15) {
            return 20;
        } else {
            return 30;
        }
    }

    function shorthand(uint _num) public pure returns (uint) {
        return _num < 5 ? 10 : (_num < 15 ? 20 : 30);
    }
}
