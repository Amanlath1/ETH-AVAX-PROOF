// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Event {

    event messLog(address indexed sender, string message);
    event messLog2();

    function test() public {
        emit messLog(msg.sender, "Hello World");
        emit messLog(msg.sender, "Hello EVM!");
        emit messLog2();
    }
}