// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract CircuitBreaker {

  bool isStopped = false;
  address owner;
  constructor() payable public {
      owner = msg.sender;
  }

  function stopContract() public {
      require(msg.sender == owner);
      isStopped = true;
  }

  function resumeContract() public {
      require(msg.sender == owner)
      isStopped = false;
  }

  function emergencyWithdraw() public {
      require(msg.sender == owner && isStopped);
      owner.transfer(this.balance);
  }
}