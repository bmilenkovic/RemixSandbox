pragma solidity ^0.5.13;

contract StartStopExample {
    address owner;
    bool public  paused;

    constructor() public {
        owner = msg.sender;
    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner, "You are not the owner!");
        paused = _paused;
    } 

    function sendMoney() public payable {

    }

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner, "You are not the owner!");
        require(!paused, "Contract is paused");

        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner!");
        selfdestruct(_to);
    }

    

}