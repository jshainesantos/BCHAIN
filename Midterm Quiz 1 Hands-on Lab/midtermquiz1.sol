// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner.");
        _;
    }

    modifier forHourlyRate(uint256 rate) {
        require(rate > 0, "Invalid. Must be greater than zero.");
        _;
    }

    modifier forHoursWorked(uint256 Hours) {
        require(Hours > 0, "Invalid. Must be greater than zero.");
        _;
    }


    function setAge(uint256 _age) external onlyOwner {
        age = _age;
    }

    function setHrsWrk(uint256 _hoursWorked)
        external
        onlyOwner
        forHoursWorked(_hoursWorked)
    {
        hoursWorked = _hoursWorked;
    }

    function setRate(uint256 _hourlyRate)
        external
        onlyOwner
        forHourlyRate(_hourlyRate)
    {
        hourlyRate = _hourlyRate;
    }

    function calculateTotalSal() public onlyOwner {
        require(
            hourlyRate > 0 && hoursWorked > 0,
            "Invalid. Must be greater than zero."
        );
        totalSalary = hourlyRate * hoursWorked;
    }


    constructor() {
        owner = msg.sender;
    }
}
