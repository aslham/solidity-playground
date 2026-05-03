// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MOH {
    string public name = "MOH Token";
    string public symbol = "MOH";
    uint256 public totalSupply = 1000000;
}

function mint(address to, uint256 amount) public {
    balance[to] += amount;
}

function transfer(address to, uint256 amount) public {
    require(balance[msg.sender] >= amount, "not enough");
    balance[msg.sender] -= amount;
    balance[to] += amount;
}
// improved readability

event Transfer(address indexed from, address indexed to, uint256 amount);

address public owner;

modifier onlyOwner() {
    require(msg.sender == owner, "not owner");
    _;
}

function mint(address to, uint256 amount) public onlyOwner {
    balance[to] += amount;
    emit Mint(to, amount);
}
