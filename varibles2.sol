// SPDX-License-Identifier: MIT 
// import solidity
pragma solidity >=0.8.2 <0.9.0;

// contract
contract SimpleContract{
    // block
    block.number;
    block.difficulty;
    block.coinbase ();

    /* your comments
    here */

    // message
    msg.sender;
    msg.value;
    msg.data;

    // transaction
    tx.origin;
    
}