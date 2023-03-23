// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract B {
  uint public b;

  function mul() public view returns(uint){
    return b**3;
  }

  function changeB(uint n) public {
    b = n;
  }
}
