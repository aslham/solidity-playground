// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MOH is ERC20 {
    constructor() ERC20("MOH Token", "MOM") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
// add burn function idea
// add burn function idea
// cleanup token comments
// gas optimization review pending

function burn(uint256 amount) public {
    require(balanceOf(msg.sender) >= amount, "not enough");
}
