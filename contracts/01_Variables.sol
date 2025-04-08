// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Variables {

    // variables
    uint256 score = 0; // uint256 == uint and default to 0
    int256 count = -10;
    bool isPlaying = true;
    string gameName = "Super Mario World";
    bytes32 myBytes = "Hello World"; // bytes32 != bytes and bytes32 is max
    address myAddress = 0x6ee7b2cFdDcA903A049Cc445E8ac1388E58f5220;

    // ether units
    uint256 public oneWei = 1 wei;
    uint256 public oneGwei = 1 gwei;
    uint256 public oneEth = 1 ether;

    // constant variables
    uint256 public constant myConst= 10;

    // immutable can be set only inside constructor
    uint256 immutable public  initial;
    constructor(uint256 _initial){
        initial = _initial;
    }
}