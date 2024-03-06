// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract GradeContract {
    address public owner;
    string public name;
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    uint256 public finalGrade;
    uint256 public calculateGrade;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner.");
        _;
    }

    modifier forPrelimGrade(uint256 grade) {
        require(grade > 0 && grade < 101, "Grade must be between 0 and 100");
        _;
    }
    modifier forMidtermGrade(uint256 grade) {
        require(grade > 0 && grade < 101, "Grade must be between 0 and 100");
        _;
    }
    modifier forFinalGrade(uint256 grade) {
        require(grade > 0 && grade < 101, "Grade must be between 0 and 100");
        _;
    }

    function setName(string calldata _name) external {
        name = _name;
    }

    function setPrelimGrade(uint256 _prelimGrade)
        external
        onlyOwner
        forPrelimGrade(_prelimGrade)
    {
        prelimGrade = _prelimGrade;
    }

    function setMidtermGrade(uint256 _midtermGrade)
        external
        onlyOwner
        forMidtermGrade(_midtermGrade)
    {
        midtermGrade = _midtermGrade;
    }

    function setFinalGrade(uint256 _finalGrade)
        external
        onlyOwner
        forFinalGrade(_finalGrade)
    {
        finalGrade = _finalGrade;
    }

    function forcalculateGrade() public onlyOwner {
        calculateGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
    }

    constructor() {
        owner = msg.sender;
    }
}
