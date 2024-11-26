// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitives {
    bool public flag = true;

    int8 public num8_1 = -128;
    uint8 public num8_2 = 2**8 - 1;

    int16 public num16_1 = -2**15;
    uint16 public num16_2 = 2**16 - 1;

    int256 public num256_1 = 2**255 - 1;
    uint256 public num256_2 = 2**256 - 1;

    address public ad = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes1 public by = 0x1f;

    // 获取当前类型最大值和最小值
    int8 public num8_max = type(int8).max;
    int8 public num8_min = type(int8).min;
}
