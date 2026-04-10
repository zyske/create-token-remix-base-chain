// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public name = "MyToken";
    string public symbol = "MTK";
    uint public totalSupply = 1000;

    mapping(address => uint) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) public {
        require(balanceOf[msg.sender] >= amount, "Not enough balance");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}
