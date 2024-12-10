// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Bank {
    // 状态变量
    address public immutable owner;
    // 事件
    event Deposit(address _ads, uint256 amount);
    event Withdraw(uint256);

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    constructor() {
        owner = msg.sender;
    }

    // 方法
    function withdraw() external {
        require(msg.sender == owner, "You are not the owner");
        emit Withdraw(address(this).balance);
        // selfdestruct(payable(msg.sender));
        (bool success, ) = payable(owner).call{value: address(this).balance}(
            ""
        );
        if (!success) {
            revert("call{value} failed");
        }
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
