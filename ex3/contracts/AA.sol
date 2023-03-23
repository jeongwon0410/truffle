// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract AA {
  uint number;

  function changeNumber(uint _n) public returns(uint){
    number = _n;
    return number;
  }

  function getNumber() public view returns(uint){
    return number;
  }

  function add(uint a,uint b) public pure returns(uint){
    return a+b;
  }

}


contract BB {
  function mul(uint a, uint b) public pure returns(uint){
    return a*b;
  }


  uint c;
  function mul2(uint d) public view returns(uint){
    return c*d;
  }
}