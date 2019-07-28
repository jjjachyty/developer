pragma solidity ^0.5.10;
 
contract Adoption {
    address[16]  adopters;
    mapping(uint => string) idByName;
    mapping(uint => address) idByAddress;

    function adopt(uint petId) public returns (uint) {
            require(petId >= 0 && petId <= 15);
            adopters[petId] = msg.sender;
            return petId;
      }
}