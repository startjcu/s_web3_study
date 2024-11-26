// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {
    // 不定长数组
    uint8[] public arr;
    uint8[] public arr1 = [1, 2, 3, 4, 5];
    uint8[10] public fixArray;

    function getArr() public view returns (uint8[] memory) {
        return arr1;
    }

    function addItem(uint8 _i) public {
        arr1.push(_i);
    }

    function popItem() public {
        arr1.pop();
    }

    function resetItem(uint8 _i) public {
        delete arr1[_i];
    }

    function deleteItem(uint8 _i) public {
        require(_i < arr1.length, "error input, you index over the bound");
        for (uint8 i = _i; i < arr1.length - 1; i++) {
            arr1[i] = arr1[i + 1];
        }
        arr1.pop();
    }

    function endRemove(uint8 _i) public {
        require(_i < arr1.length, "error input, you index over the bound");
        arr1[_i] = arr1[arr1.length - 1];
        arr1.pop();
    }
}
