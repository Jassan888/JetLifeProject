pragma solidity ^0.7.3;

contract JetLife{

    enum destination {domestic,international}
    destination insuranceFee;

    address payable public owner;
    
    uint public flightTicket;
    

    mapping(uint=> airlineService)public flight;
    mapping(uint=> finalDestination)public territory;
    mapping(uint=> set)public setting;
    
      string carrier;
        uint flightTime;
        string region;
        string country;
        bool insurance;
        string setNumber;
        string row;


    constructor() public{
            
        owner= msg.sender;
        
        flightTicket= 3 ether;
        
    }

    struct airlineService{
        string carrier;
        string flightTime;

    }

    struct finalDestination{
        string region;
        string country;
        bool insurance;

    }

    struct set{
        string setNumber;
        string row;

    }


    function chooseFlight(uint _id, string memory _carrier, string memory  _flightTime) public{
        flight[_id]= airlineService(_carrier, _flightTime);

    }
    
    function flightDesinstion(uint _id, string memory _region , string memory _country, bool  _insurance) public{
        territory[_id]= finalDestination(_region, _country, _insurance);
        require(insurance == true);
    }

    function sittingArrangement(uint _id, string memory _setNumber, string memory _row) public{
        setting[_id]= set(_setNumber, _row);

    }

    function payment()  payable public{
        require(flightTicket >= 3 ether,"Must pay ticket price in full.");
        owner.transfer(msg.value);
    }
}