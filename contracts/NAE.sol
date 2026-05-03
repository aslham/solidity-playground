// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NAE {
    string public name = "NAE Token";
    string public symbol = "NAE";
    uint256 public totalSupply = 500000;
}
// improved readability
// refactor cleanup pass

event Mint(address indexed to, uint256 amount);

mapping(address => uint256) public balance;

function mint(address to, uint256 amount) public {
    balance[to] += amount;
    emit Mint(to, amount);
}

function transfer(address to, uint256 amount) public {
    require(balance[msg.sender] >= amount, "not enough");
    balance[msg.sender] -= amount;
    balance[to] += amount;
}
