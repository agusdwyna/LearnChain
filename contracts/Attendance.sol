// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Attendance {
    address public owner;
    mapping(address => bool) public hasCheckedIn;

    event CheckedIn(address indexed user);

    constructor() {
        owner = msg.sender;
    }

    function checkIn() public {
        require(!hasCheckedIn[msg.sender], "Already checked in");
        hasCheckedIn[msg.sender] = true;
        emit CheckedIn(msg.sender);
    }

    function isCheckedIn(address user) public view returns (bool) {
        return hasCheckedIn[user];
    }
}
