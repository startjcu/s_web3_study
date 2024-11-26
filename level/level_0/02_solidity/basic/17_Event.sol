// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Event {
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello JavaScript");
        emit Log(msg.sender, "Hello Solidity!!!");
        emit AnotherLog();
    }
}
