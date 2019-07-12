pragma solidity ^0.4.24;
 
contract Adoption {
    address[16] public adopters;
    mapping(uint => string) idByName;
    mapping(uint => address) idByAddress;
 
    constructor() public {
        idByName[1] = "111";
        idByName[2] = "222";
        idByName[3] = "333";
        idByName[4] = "444";
        idByName[5] = "555";
 
    }
 
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }
 
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
 
    function say() public pure returns(string){
        return "Hello world";
    }
 
    function print(string name) public pure returns (string) {
    return name;
    }
    function getNameById(uint _value) public view returns(string) {
        return idByName[_value];
    }
    
    function insertName(uint _value,string _name) public {
        idByName[_value] = _name;
    }
 
    function insertAddress(uint _value,address _addr) public{
        idByAddress[_value] = _addr;
    }
    function getAddressById(uint _value) public view returns(address) {
        return idByAddress[_value];
    }
    
}