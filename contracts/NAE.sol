// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NAE {
    string public name = "NAE Token";
    uint256 public supply = 500000;
}
// refactor structure

// add owner concept
address public owner;
constructor() {
    owner = msg.sender;
}
