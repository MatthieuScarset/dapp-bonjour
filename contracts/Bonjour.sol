// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Bonjour {
    address public owner;

    // Sentences by addresses
    mapping(address => string) public bonjours;

    // Set default sentence..
    constructor(string memory _string) {
        owner = msg.sender;
        bonjours[owner] = _string;
    }

    function getBonjour(address _addr) public view returns (string memory) {
        return bonjours[_addr];
    }

    function setBonjour(string memory _string) public payable returns (bool) {
        bonjours[msg.sender] = _string;
        return false;
    }
}
