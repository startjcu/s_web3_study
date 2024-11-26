// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReadAndWrite {
    uint8 public num = 18;

    function set(uint8 _num) public {
        num = _num;
    }

    function get() public view returns (uint8) {
        return num;
    }
}
