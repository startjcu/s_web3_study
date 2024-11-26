// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Function {
    uint8 public n = 20;

    /**
     * pure & view
     * 无需读取区块链上的任何变量时用pure
     * memory和calldata
     * 传参不会更改时用calldata
     */
    function get(string memory _input)
        public
        view
        returns (
            uint8,
            string memory,
            bool,
            uint8
        )
    {
        string memory text = "abc";
        _input = "hello";
        uint8 num = 18;
        bool flag = true;
        return (num, text, flag, n);
    }
}
