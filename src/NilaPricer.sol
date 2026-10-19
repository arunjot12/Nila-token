// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract NilaPricer {
    address public owner;
    uint256 public exchangeRate;
    constructor(uint256 rate) { owner = msg.sender; exchangeRate = rate; }
    function setExchangeRate(uint256 rate) external { require(msg.sender == owner, "not owner"); exchangeRate = rate; }
    function getExchangeRate() external view returns (uint256) { return exchangeRate; }
}