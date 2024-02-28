// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Logging {
    // Declare an event
    event Record(address indexed _sender, string _message);
    event AdditionalRecord();

    function performLogging() public {
        emit Record(msg.sender, "Solidity Logging");
    }
}

contract CustomContract is Logging {
    uint256 public myValue;

    // function
    constructor() {
        myValue = 123;
    }
}
