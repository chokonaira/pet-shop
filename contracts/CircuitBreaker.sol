// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract CircuitBreaker {

    bool public stopped = false;

    modifier stopInEmergency { require(!stopped); _; }
    modifier onlyInEmergency { require(stopped); _; }

    function deposit() stopInEmergency public { … }
    function withdraw() onlyInEmergency public { … } 
}