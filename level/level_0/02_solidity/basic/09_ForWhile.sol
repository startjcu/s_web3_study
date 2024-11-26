// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ForWhile {
    function sum1() public pure returns (uint16) {
        uint16 sum;
        for (uint8 i = 1; i < 100; i++) {
            sum += i;
            if (i > 10) {
                break;
            }
        }
        return sum;
    }

    function sum2() public pure returns (uint16) {
        uint16 sum;
        uint8 i = 1;
        while (i < 10) {
            if (i % 2 == 0) {
                i += 1;
                continue;
            }
            sum += i;
            i += 1;
        }
        return sum;
    }
}
