// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MyMapping{

    mapping(string=>uint) public nameToRoll;

    function setName(string memory _name, uint _roll) external {
        nameToRoll[_name] = _roll;  
    }

    function getRollForName(string memory _name) external view returns(uint){
        return nameToRoll[_name];
    }

    function deleteMapping(string memory _name) external {
        if (nameToRoll[_name] == 0){
            revert("No entry found");
        } else {
            delete nameToRoll[_name];
        }
    }
}