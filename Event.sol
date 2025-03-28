// TO DO 8
pragma solidity ^0.6.10; 
contract Event {
    
    mapping(address => uint) public tokenBalance;
    
    // TO DO 8.1: Create an event which has 3 variables: _from, _to and _amount
    event TokenSent(address indexed _from, address indexed _to, uint _amount);
    
    // Constructor function
    constructor() public { 
        tokenBalance[msg.sender] = 100;
    }
    
    // Return function of sending tokens
    function sendToken(address _to, uint _amount) public returns(bool) { 
        require(tokenBalance[msg.sender] >= _amount, "Not enough tokens"); 
        assert(tokenBalance[_to] + _amount >= tokenBalance[_to]); 
        assert(tokenBalance[msg.sender] - _amount <= tokenBalance[msg.sender]);
        tokenBalance[msg.sender] -= _amount; 
        tokenBalance[_to] += _amount;
    
        // TO DO 8.2: emit the event with 3 right variables
        emit TokenSent(msg.sender, _to, _amount); 
        
        return true;
    }
}