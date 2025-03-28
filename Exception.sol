// TO DO 5
pragma solidity ^0.6.10;

contract Exception {
    
    uint64 public balanceReceived;

    // Send ether from an address
    function sendMoney() public payable {
        
        // An assert function to check if the balance after adding the msg value is greater than or equal to the balance before adding the msg value
        assert(balanceReceived + uint64(msg.value) >= balanceReceived);

        balanceReceived += uint64(msg.value);
    }
    
    // Withdraw ether from current balance to selected account
    function withdrawMoneyTo(address payable _to, uint64 _amount) public {
        
        // TO DO 5.1 Create an assert function to check if the balance before deducting the amount is greater than or equal to the balance after deducting the amount
        assert(balanceReceived >= uint64(msg.value) + balanceReceived);

        balanceReceived -= _amount;
        _to.transfer(_amount);
    }
}
