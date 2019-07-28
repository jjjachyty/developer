const HelloWorld = artifacts.require("HelloWorld");

contract('APC2MHC test', async(accounts) => {

    // it("add", async() => {
    //     let obj = await APC2MHC.deployed();
    //     let val = await obj.add.call(accounts[0], 10000000);
    //     assert.equal(val, true)

    // })

    it("getAsset", async() => {
        let obj = await HelloWorld.deployed();
        let assets = obj.setMessage("hello world");
        // assert.equal(index, 0)
    });
    it("getAsset", async() => {
        let obj = await HelloWorld.deployed();
        let say = obj.say.call();
        assert.equal(say, "hello world")
    });

    // it("unfreeze", async() => {
    //     let obj = await APC2MHC.deployed();
    //     let val = await obj.unfreeze();
    // });

    // it("getAsset", async() => {
    //     let obj = await APC2MHC.deployed();
    //     let assets = obj.getAsset(accounts[0])
    // });
})