// TO DO 4
pragma solidity ^0.6.10;

contract MappingStruct {
    
    // Create a struct 'Balance' with two variables and one mapping
    struct Balance {
        uint totalBalance;
        uint numPayments;
        mapping(uint => Payment) payments;
    }
    
    // TO DO 4.1: Create a struct 'Payment'  with two uint which are 'amount' and 'timestamp'
    struct Payment {
        uint amount;
        uint timestamp;
    }

    
    // TO DO 4.2: Create a public mapping called 'balanceReceived' with key type address to value type 'Balance'
    mapping(address => Balance) private balanceReceived;
    
    // Send money from different addresses and create seperated 'payment' in every transaction
    function sendMoney() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;
        
        Payment memory payment = Payment(msg.value, now);
        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].numPayments] = payment;
        balanceReceived[msg.sender].numPayments++;
    }
    
    // Withdraw all money from selected address
    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
        balanceReceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }
        
    // Get total balance from all addresses
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}
