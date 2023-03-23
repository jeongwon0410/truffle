// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract A {
  uint number;
  

  function changeNumber(uint _n) public {
    number = _n;
  }

  function getNumber() public view returns(uint){
    return number;
  }
}
