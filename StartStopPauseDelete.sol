// TO DO 3
pragma solidity ^0.6.10;

contract StartStopPauseDelete {

    address owner;
    bool public pause;
    
    constructor() public {
        
        // TO DO 3.1: We want the 'owner' of this contract is the 'msg.sender'
        


        owner = msg.sender;

    }
    
    // Send money to this contract
    function sendMoney() public payable {
        
    }
    
    // Only owner can pause the contract
    function setPause(bool _pause) public {
        
        // TO DO 3.2: Create a require function that, if the 'msg.sender' is not the 'owner', the error message shows "You are not the owner!" 
        require(msg.sender == owner, "You are not the owner!");

        pause = _pause;
    }
    
    
    // Destroy this contract
    function destroySmartContract(address payable _to) public {

        // TO DO 3.3: Same require function with TO DO 3.2
        require(msg.sender == owner, "You are not the owner!");

        require(!pause, "Contract currently pause!");
        
        // TO DO 3.4: Create a selfdestruct function that sends its funds to the selected address
        selfdestruct(_to);

    }
}
