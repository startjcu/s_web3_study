// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfAndElse {
    function foo(uint256 num) public pure returns (uint256) {
        if (num > 10) {
            return 1;
        } else {
            return 0;
        }
    }

    function ternary(uint256 num) public pure returns (uint256) {
        return num > 10 ? 1 : 0;
    }
}
