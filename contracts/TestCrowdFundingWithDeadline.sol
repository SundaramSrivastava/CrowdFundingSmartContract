// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./CrowdFundingWithDeadline.sol";

contract TestCrowdFundingWithDeadline is CrowdFundingWithDeadline {
    uint time;

    constructor (
        string memory contractName,
        uint targetAmountEth,
        uint durationInMin,
        address payable beneficiaryAddress
    )
        CrowdFundingWithDeadline(contractName, targetAmountEth, durationInMin, beneficiaryAddress)
        public
    {
        
    }

    function currentTime() internal view returns (uint) {
        return time;
    }

    function setCurrentTime(uint newTime) public {
        time = newTime;
    }
}