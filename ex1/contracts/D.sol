// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./B.sol";
import "./A.sol";
contract D {
  B public b;
  A public a;

  constructor(address _aA, address _aB){
    b = B(_aB);
    a = A(_aA);
  }

  function add() public view returns(uint){
    return a.a()+b.b();
  }
}
