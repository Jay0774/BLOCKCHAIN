// use of set and get functions and constructor

pragma solidity ^0.5.13;

contract setAndGetFunction{
    // any type of data unsigned int 
    uint data; // uint = uint256
    
    // constructor defination
    constructor() public{
        data=900;
    }
    
    
    // set function set myvalue=data 
    function set(uint myvalue) public{
        data=myvalue;
    }
    
    // get function returns data
    /*
    pure -> not read / not modify (strict)
    view/constant -> not modifying it
    payable -> sending the money or a transaction
    
    returns -> part of function defination
    */
    function get() public view returns(uint){
        return data;
    }
}

/*
 
 exec. cost = operation cost
 trans. cost = basegas (21000) + contract deploy almost (32000) + zero and non zero byte 
 
*/
