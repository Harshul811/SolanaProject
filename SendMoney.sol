// TO DO 2
pragma solidity ^0.6.10;

contract SendMoney {

    // Total balance received from this smart contract
    uint public balanceReceived;
    
    // Send ether (in wei) from an address
    function sendMoney() public payable {
        balanceReceived += msg.value;
    }
    
    // Current balance of this smart contract
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    // Withdraw ether from current balance to current address
    function withdrawMoney() public payable {
        address payable to = msg.sender;
        to.transfer(this.getBalance());
    }
    
    // Withdraw ether from current balance to selected address
    function withdrawMoneyTo(address payable _to) public {
        // TO DO 2.1: Transfer current balance to selected address
        _to.transfer(this.getBalance());
        
    }
}
