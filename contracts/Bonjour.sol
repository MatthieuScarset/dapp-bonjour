// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.9.0;

contract Bonjour {
    // Default greeting.
    string public defaultGreeting;

    // Custom greeting by user.
    mapping(address => string) greetings;

    constructor() public {
        defaultGreeting = "Bonjour";
    }


}
