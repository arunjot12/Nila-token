// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NilaToken is ERC20 {
    constructor(address treasury) ERC20("Nila", "NILA") {
        _mint(treasury, 1_000_000_000 ether);
    }
}