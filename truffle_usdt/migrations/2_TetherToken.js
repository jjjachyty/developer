var TetherToken = artifacts.require("TetherToken");

module.exports = function(deployer) {
  deployer.deploy(TetherToken,2700000000,"TetherToken","USDT",6);
};