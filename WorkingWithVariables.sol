// TO DO 1
pragma solidity ^0.6.10;

contract WorkingWithVariables {

    uint256 public myUint;

    // Function 'setMyUint' which set 'myUint' to a new uint '_myUint'    
    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }
    
    bool public myBool;
    
    // TO DO 1.1: Create a function 'setMyBool' which set 'myBool' to a new bool '_myBool'
    function setBool(bool _myBool) public{
      myBool = _myBool;  
    }
    
    uint8 public myUint8;
    
    function increaseMyUint8() public {
        myUint8++;
    }
    
    // TO DO 1.2: Create a function 'decreaseMyUint8' so that 'myUint8' will decrease by 1 every time we call this function
    function decreaseUint8() public{
      myUint8--; 
    } 

  
    address myAddress;
    
    // TO DO 1.3: Create a function 'setAddress' which set 'myAddress' to a new address '_myAddress'
    function setAddress(address _myAddress) public{
        myAddress = _myAddress; 
    }   
 
    function getAddress() public view returns(address) {
        return myAddress;
    }
    
    function getBalance() public view returns(uint) {
        return myAddress.balance;
    }
    
    string public myString =  'Hello World!';
    
    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}

