// import solidity
pragma solidity >=0.8.2 <0.9.0;

//import 
// import "filename"
// import * as symbolName from "filename"
// import {symbol1 as alias, symbol2} from "filename"

// contract 
contract MyContract {
    // state variable
    uint storeData;

    // modifier is a conditional
    modifier onlyData() {
        require(
            storeData >= 0);
        _;
    }
    // function
    function set(uint x) public {
        storeData = x;
    }

    // event
    event Sent(address from, address to, uint storeData);
    
}