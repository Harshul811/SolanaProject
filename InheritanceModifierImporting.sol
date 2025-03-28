// TO DO 7 Contract InheritanceModifierImporting
pragma solidity ^0.6.10;

// TO DO 7.2: Import 'Owned.sol'
import "./Owned.sol";

// TO DO 7.3: Create a contract 'InheritanceModifierImporting' which has derived contract 'Owned'
contract InheritanceModifierImporting is Owned {
    
    mapping(address => uint) public tokenBalance; 
    uint tokenPrice = 1 ether;
    
    // Constructor function
    constructor() public {
        tokenBalance[owner] = 100;
    }
    
    // Function to create new tokens
    function createNewToken() public onlyOwner {
        tokenBalance[owner]++;
    }
    
    // TO DO 7.4: Create a function 'burnToken' to burn tokens with modifier from contract 'Owned'
    function burnToken() public onlyOwner {
        require(tokenBalance[owner] > 0, "No tokens left to burn!");
        tokenBalance[owner]--;
    }

}
