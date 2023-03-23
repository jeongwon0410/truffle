// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract A {
  event A(uint a,string b);
  event B(uint a, string b);

  uint count;

  function add() public {
    count++;
    emit A(count,"EVENT A");
  }

  function add2() public {
    count++;
    emit B(count,"EVENT B");
  }



}
