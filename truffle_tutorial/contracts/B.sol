// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract B {
    uint a;
    function add(uint b, uint c) public view returns(uint){
        return a+b+c;
    }


    function sub(uint d, uint e) public pure returns(uint){
        return d-e;
    }

    function changeA(uint f) public returns(uint){
        a = a+f;
        return a;
    }
}
