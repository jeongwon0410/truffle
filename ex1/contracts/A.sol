// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract A {
  uint public a;

  function mul() public view returns(uint){
    return a**3;
  }


  function changeA(uint n) public {
    a = n;
  }
}
