// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MidtermArray {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        require(i < arr.length, "Index out of bounds");
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        require(arr.length > 0, "Array is empty");
        arr.pop();
    }

    function remove(uint index) public {
        require(index < arr.length, "Index out of bounds");
        for (uint i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return myFixedSizeArr.length;
    }
}