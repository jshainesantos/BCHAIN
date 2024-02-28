// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CustomLoop {
    function performLoop() public pure {
        // For Loop
        for (uint256 index = 0; index < 15; index++) {
            if (index == 4) {
                continue;
            }
            if (index == 7) {
                break;
            }
        }

        // While loop
        uint256 counter;
        while (counter < 8) {
            counter++;
        }
    }
}
