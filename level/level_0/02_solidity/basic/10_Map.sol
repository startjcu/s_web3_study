// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Map {
    mapping(address => uint8) myMap;

    function get(address _add) public view returns (uint8) {
        return myMap[_add];
    }

    function set(address _add, uint8 _i) public {
        myMap[_add] = _i;
    }

    function deleteKey(address _add) public {
        delete myMap[_add];
    }

    // 嵌套Map
    mapping(address => mapping(uint256 => bool)) public nested;

    function setNest(
        address _add,
        uint8 _i,
        bool _b
    ) public {
        nested[_add][_i] = _b;
    }
}
