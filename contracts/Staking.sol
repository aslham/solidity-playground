// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Staking {
    uint256 public totalStaked;
}

function stake(uint256 amount) public {
    totalStaked += amount;
}
