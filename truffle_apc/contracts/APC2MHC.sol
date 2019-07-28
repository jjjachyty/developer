pragma solidity ^0.5.8;
// pragma experimental ABIEncoderV2;


contract APC2MHC {
    address public owner;//合约所属人
	Asset[] public assets ; //待释放的集合
    uint8 public molecule = 2; //每日千分之2释放
    uint16 public denominator = 1000;
    uint16 public unfreezeCount;
    struct Asset { //资产
        address userAddress;
        uint64 totalAmount;
    }

    constructor() public {
            owner = msg.sender;
    }
    //  event unfreezeEvent(Asset  asset);

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }

    function changeOwner(address _ownerAddress) public onlyOwner{
        owner = _ownerAddress;
    }

    function getAsset(address _address) public  view  returns (uint64 ,uint8 ) {
       for (uint8 _index = 0; _index < assets.length; _index++) {
           if (_address == assets[_index].userAddress ){
                uint64 _totalAmount = assets[_index].totalAmount;
                return (_totalAmount,_index);
           }
       }
    }

     // 新增待释放
     function add(address _addr,uint32 _frozenMount) public onlyOwner returns(bool has){
      (uint64  _totalAmount, uint8 _index) = getAsset(_addr);
      if (_totalAmount > 0){
          return false;
      }
      assets[_index] = Asset(_addr,_frozenMount);
      return true;
     }


          // 释放金额
     function unfreeze() public onlyOwner payable {
        for (uint8 index = 0; index < assets.length; index++) {
            Asset memory _asset = assets[index];
            uint64 _frozenAmountOnce = _asset.totalAmount * molecule / denominator;
            uint64 _leftFrozenAMount = _asset.totalAmount - (_frozenAmountOnce * unfreezeCount);
             unfreezeCount++;
           if (_leftFrozenAMount > 0 ){
               if (_leftFrozenAMount > _frozenAmountOnce){
                    msg.sender.transfer(_frozenAmountOnce);
               }else{
                    msg.sender.transfer(_leftFrozenAMount);
               }
            //    emit unfreezeEvent(_asset);

           }

       }

     }
}