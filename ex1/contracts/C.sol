// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract C {
  int[] array;
  
  function check(int n) public {
    int temp = n;
    bool flag;
    while(true){
      temp = temp-5;

      if(temp<=0){
        break;
      }
    }

    if(temp==0){
      flag = true;
      array.push(temp);
    }

    if(flag == false){
        temp = n;
        while(true){
        temp = temp-9;

        if(temp<=0){
          break;
        }
      }

      if(temp==0){
        flag = true;
        array.push(temp);
      }
    }


    if(flag == false){
        temp = n;
        while(true){
        temp = temp-11;

        if(temp<=0){
          break;
        }
      }

      if(temp==0){
        array.push(temp);
      }
    }

  }

  function getArray() public view returns(int[] memory){
    return array;
  }
}
