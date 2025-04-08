// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Storage {

    // storage is permanent & modifyable
    string public name;

    // calldata & mmemory are temporary

    // memory can be modified
    function memoryFn(string memory _name) public  {
        _name = "Bob";
        name = _name;
    }

     // calldata can not be modified
    function calldataFn(string calldata _name) public {
        // _name = "Bob";
        name = _name;
    }
}