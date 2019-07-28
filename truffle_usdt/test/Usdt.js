const TetherToken = artifacts.require("TetherToken");

contract('TetherToken test', async(accounts) => {

    it("balanceOf", async() => {
        let obj = await TetherToken.deployed();
        let val = await obj.balanceOf("0xC05dEb0C5e841Aa564f41f769335BC96D75Ade65");
        assert.equal(val, 270000000000);
    })

    it("getOwner", async() => {
        let obj = await TetherToken.deployed();
        let val = await obj.getOwner();
        assert.equal(val, 270000000000);

    });
})