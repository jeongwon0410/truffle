// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract A {

  struct Student {
    uint num;
    string name;
    uint score;
  }

  Student[] students;

  B b;
  constructor(address _a){
    b = B(_a);
  }



  function setStudent(string memory _name, uint _score) public {
    students.push(Student(students.length+1, _name,_score));
    if(_score >= 80){
      b.students.push(Student(1,_name, _score));
    }
  }

  function getStudent(uint _n) public view returns(Student memory){
    return students[_n];
  }

  function getLen() public view returns(uint){
    return students.length;
  }
}

contract B {

  A a = new A();
  
  // constructor(address _a){
  //   a = A(_a);
  // }

  A.Student[] public students;

  
  // function scoreBoard(string memory _name, uint _score) public {
  //   students.push(A.Student(students.length+1,_name,_score));
  // }

  // function getScoreBoard() public view returns(A.Student[] memory) {
  //   return students;
  // }

  // function getStudent(uint _n) public view returns(string memory, uint){
  //   return (a.getStudent(_n).name,a.getStudent(_n).score);
  // }
}
