pragma solidity ^0.5.10;
 
contract Adoption {
    address[16]  adopters;
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
 
      function getAdopters() public view returns (address[16] memory) {
            return adopters;
      }
 
      function say() public pure returns(string memory){
            return "Hello world";
      }
 
      function print(string memory name ) public pure returns (string memory) {
      return name;
      }
      function getNameById(uint _value) public view returns(string memory) {
            return idByName[_value];
      }

      function insertName(uint _value,string memory _name ) public {
            idByName[_value] = _name;
      }
 
      function insertAddress(uint _value,address _addr) public{
            idByAddress[_value] = _addr;
      }
      function getAddressById(uint _value) public view returns(address) {
            return idByAddress[_value];
      }
}
