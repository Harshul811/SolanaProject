// TO DO 6
pragma solidity ^0.6.10;

contract Functions {
    
    mapping(address => uint) public balanceReceived;
    address payable owner;
    
    // Constructor function
    constructor() public {
        owner = msg.sender;
    }
    
    // TO DO 6.1: Create a public and view function 'getOwner' which returns address, and the return value is 'owner'
    function getOwner() public view returns (address) {
        return owner;
    }
    
    // TO DO 6.2: Create a public and pure function 'weiToEther' which uses uint _amountInWei and returns uint, and the return value is '_amountInWei / 1 ether' 
    function weiToEther(uint _amountInWei) public pure returns (uint) {
        return _amountInWei / 1 ether;
    }

    // Function to send money
    function sendMoney() public payable {
        assert(balanceReceived[msg.sender] + msg.value >= balanceReceived[msg.sender]);
        balanceReceived[msg.sender] += msg.value;
    }
    
    // Function to withdraw money
    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender], "You don't have enough money!");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
    
    // TO DO 6.3: Create a receive function that has function 'sendMoney' in it
    receive() external payable {
         sendMoney();
    }

}
