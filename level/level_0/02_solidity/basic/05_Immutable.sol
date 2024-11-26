// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Immutable {
    // 只能在constructor中修改
    address public immutable myAddress;

    // 合约部署时执行的初始化函数
    constructor() {
        myAddress = msg.sender;
    }
}