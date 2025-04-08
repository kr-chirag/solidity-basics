// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Function {

    uint256 public myNum;

    function store(uint256 _num) public {
        myNum = _num;
    }

    // view aloows reading state but not modifying it
    function getIt() public view returns (uint256) {
        // myNum = myNum +1;
        return myNum;
    }

    // pure does not allow modifying & reading state
    function getPure(uint256 _tmp) public pure  returns (uint256) {
        // myNum = myNum +1;
        // return  myNum;
        return _tmp;
    }
}