// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract B {

  uint c;
  function add(uint a) public view returns(uint){
    return c+a;
  }

  function changeC() public {
    c = 10;
  }


}
