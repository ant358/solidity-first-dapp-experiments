// SPDX-License-Identifier: MIT 
// import solidity
pragma solidity >=0.8.2 <0.9.0;

// contract
contract SimpleContract{
    // string
    string name = "My Name";

    // integers
    uint storedata = 1234;

    // boolean
    bool isTrue = true;

    // address
    address walletAddress = 0x72ba773893b;  

    // arrays
    string[] names;

    // struct
    struct User {
        uint id;
        string fistName;
        string lastName;
        uint age;

    // enum
    enum UserType {buyer, seller}

    // mapping
    mapping(address => uint) public balances;
    }

    // more types are in the docs
}