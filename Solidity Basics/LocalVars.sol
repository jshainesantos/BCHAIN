// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);
    }
}

//This Solidity code defines a contract with three public variables (`i`, `b`, and `myAddress`) and a function `foo()` that sets local variables `x` and `f`, then assigns values to the contract's variables.
