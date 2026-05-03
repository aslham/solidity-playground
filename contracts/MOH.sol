// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MOH {
    string public name = "MOH Token";
    uint256 public supply = 1000000;
}
// metadata update

// add basic owner idea (simple version)
address public owner;
constructor() {
    owner = msg.sender;
}
// cleanup formatting
