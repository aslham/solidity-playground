// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Vault {
    uint256 public balance;

    function deposit(uint256 amount) public {
        balance += amount;
    }
}

event Deposited(uint256 amount);

function deposit(uint256 amount) public {
    balance += amount;
    emit Deposited(amount);
}
