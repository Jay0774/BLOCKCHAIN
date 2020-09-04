//helloworld contract

pragma solidity ^0.5.13; // solidity version of contract

contract hello{
    // contract contains functions and storage variable
    // function signamture
    function printhello() public view returns(string memory){
    //memory refers to storage
    return "Helloworld";
    }
}
