// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    // Blockchain 存储在区块链上，消耗GAS
    string public text = "Hello, Red";

    // constant 常量，存储时能减少很多GAS消耗
    uint8 public constant MY_UNIT = 123;

    function fn()
        public
        view
        returns (
            uint256,
            address,
            uint256
        )
    {
        // Local存在函数内存中，调用时才有
        uint256 num = 80;
        // Global默认的全局变量，以太坊自带的
        uint256 time = block.timestamp;
        address sender = msg.sender;

        return (time, sender, num);
    }
}
