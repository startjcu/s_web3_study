// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Count {
    uint256 public num;

    function get() public view returns (uint256) {
        return num * 10;
    }

    function inc() public {
        num += 1;
    }

    function dec() public {
        num -= 2;
    }
}
