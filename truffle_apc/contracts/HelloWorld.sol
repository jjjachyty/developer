pragma solidity ^0.5.8;

contract HelloWorld{
    address payable creator;     
    string message;     

    constructor() public{
        creator = msg.sender;
    }

    function say() public view returns (string memory)          
    {
        return message;
    }
    
    function setMessage(string memory _newMsg) public
    {
        message = _newMsg;
    }
    
     /**********
     Standard kill() function to recover funds 
     **********/
    
    function kill()public payable{ 
        if (msg.sender == creator){
            selfdestruct(creator);  // kills this contract and sends remaining funds back to creator
    }
    }

}