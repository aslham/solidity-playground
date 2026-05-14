// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NAE is ERC20 {
    constructor() ERC20("NAE Token", "NAL") {
        _mint(msg.sender, 500000 * 10 ** decimals());
    }
}
// improve readability
