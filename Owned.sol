// TO DO 7 Contract Owned
pragma solidity ^0.6.10;

contract Owned {
    address owner;
    
    // Constructor function
    constructor() public { 
        owner = msg.sender;
    }
    
    // TO DO 7.1: Create a modifier function 'onlyOwner' which has a require function in it. In the require function, we are going to check if msg.sender is the owner.
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner!");
        _;
    }


}
