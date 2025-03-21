// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Array {

    // dynamic
    uint[] numbers2;
    uint[] numbers = [1, 2, 5];

    //static
    uint[10] numbers3;

    struct Student {
        uint rollno; 
        string name;
    }

    Student[] public students;

    Student s1 =  Student(1,"csp");
    Student s2 =  Student({rollno:2,name:"scp"});

    function add(uint _roll, string memory _name) public {
        Student memory s = Student(_roll , _name);
        students.push(s);
    }

    function getAllStudents() public view returns(Student[] memory){
        return students;
    }
}