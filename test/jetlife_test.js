const JetLife= artifacts.require("JetLife");

contract("JetLife",()=>{

    let jetLife= null;

    before(async()=>{

        jetLife= await JetLife.deployed()
    });

    it("Should choose the carrier and time of flight", async()=>{
      await jetLife.chooseFlight( "Jetblue", "8:45");
      const flight = await jetLife.chooseFlight(1,2,3);
      assert(flight[0](1)===3);
      assert(flight[1](3) == "Jetblue");
    });

    it("Should show region and country of flight", async()=>{
        
    });

    it("Should set sittingAggrangment for flight", async()=>{

    });

    it("Request payment for flight", async()=>{

    });
});