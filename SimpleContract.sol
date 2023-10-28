// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Inheritance {
    address payable public recpient;
    address public owner;
    bool public isOwnerDeceased;

    constructor(address payable _recpient) payable {
        owner = msg.sender;
        recpient = _recpient;
        isOwnerDeceased = false;
    }
    // conditions that need to be met
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can access");
        _;
    }

    modifier onlyRecipient() {
        require(msg.sender == recpient, "Only the contract recipient can access");
        _;
    }

    function declareDeceased() external onlyOwner {
        require(isOwnerDeceased, "Owner has not been decalred deceased");
        require(address(this).balance > 0, "No funds left in the contract");
        // if conditions were met, then the recipient will get the funds
        recpient.transfer(address(this).balance);
    }

        // fallback function will be called
        receive() external payable {}
    }

}
