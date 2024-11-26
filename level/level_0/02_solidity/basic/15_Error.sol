// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error1 {
    function testRequire(uint8 _i) public pure {
        require(_i < 10, "input should be less than 10");
    }

    function testRevert(uint256 _i) public pure {
        if (_i >= 10) {
            revert(">=10 is not allowed");
        }
    }

    function testAsset(uint8 _i) public pure {
        assert(_i < 10);
    }
}
