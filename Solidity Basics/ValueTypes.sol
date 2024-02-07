// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract ValueTypes {
    bool public a = true;
    bool public b;
    uint public c = 123;

    int public d = -123;

    int public minInt = type(int).min;

    address public addr = 0xf6ac838863A3031Bc9c0a1AB751199995f0F2d73;
}