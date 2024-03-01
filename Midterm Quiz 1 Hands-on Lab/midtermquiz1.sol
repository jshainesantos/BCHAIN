// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    mapping(address => Employee) public employees;

    struct Employee {
        uint256 age;
        uint256 hoursWorked;
        uint256 hourlyRate;
        uint256 totalSalary;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner.");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(address _employeeAddress, uint256 _age) external onlyOwner {
        employees[_employeeAddress].age = _age;
    }

    function setHoursWorked(address _employeeAddress, uint256 _hoursWorked) external onlyOwner {
        employees[_employeeAddress].hoursWorked = _hoursWorked;
    }

    function setHourlyRate(address _employeeAddress, uint256 _hourlyRate) external onlyOwner {
        employees[_employeeAddress].hourlyRate = _hourlyRate;
    }

    function calculateTotalSal(address _employeeAddress) external onlyOwner {
        Employee storage employee = employees[_employeeAddress];
        require(
            employee.hourlyRate > 0 && employee.hoursWorked > 0,
            "Invalid hourly rate or hours worked. Must be greater than zero."
        );
        employee.totalSalary = employee.hourlyRate * employee.hoursWorked;
    }
}

