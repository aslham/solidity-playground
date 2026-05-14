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

function withdraw(uint256 amount) public {
    require(balance >= amount, "not enough");
    balance -= amount;
}
// add safety check idea
// add withdraw event idea

modifier safe(uint256 amount) {
    require(balance >= amount, "insufficient");
    _;
}

event Withdraw(uint256 amount);

function withdraw(uint256 amount) public {
    require(balance >= amount, "not enough");
    balance -= amount;
    emit Withdraw(amount);
}
// extend events for tracking
// improve readability Vault
// improve event tracking
// optimize storage usage
// future upgrade support

event DepositTracked(address indexed user, uint256 amount);
// optimize storage handling later
