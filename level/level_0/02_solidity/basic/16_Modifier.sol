// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Modifier {
    address public owner;
    bool public locked;
    uint256 public num = 10;

    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner() {
        require(msg.sender == owner, "You are not owner!");
        _; // 代表函数主体
    }

    modifier ValidAddress(address _ad) {
        require(_ad != address(0), "Not valid address!");
        _;
    }

    function modifyOwner(address _ad) public OnlyOwner ValidAddress(_ad) {
        owner = _ad;
    }

    modifier NoReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint8 _i) public NoReentrancy {
        num -= _i;
        if (_i > 1) {
            decrement(_i - 1);
        }
    }
}
