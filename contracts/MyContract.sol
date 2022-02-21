pragma solidity ^0.5.13;

contract MyContract {
    string public myString = "Test String 1";
    uint256 public myUint;
    bool public myBool;
    uint8 public myUint8;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    function incrementUint() public {
        myUint8++;
    }

    function decrementUint() public {
        myUint8--;
    }

    address public myAddress;
    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceOfAddress() public view returns(uint) {
            return myAddress.balance;
    }

    function setMyString(string memory _myString) public {
        myString = _myString;
    } 

}