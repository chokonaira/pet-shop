// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

constructor() payable public {
      owner = msg.sender;
  }
  
  modifier onlyOwner() {
      require(msg.sender == owner, "Not authorized.");
      _;
  }
  
  function withdraw(uint _amount) onlyOwner public {
      owner.transfer(_amount);
  }
}
    