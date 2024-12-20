// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EtherAndWei {
    uint256 public oneWei = 1 wei;
    bool public isOneWei = (1 wei == 1);

    uint256 public oneEther = 1 ether;
    bool public isOneEther = (1 ether == 1e18); //10**18
}
