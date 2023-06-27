// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract modIfier{

    uint a;
    uint b;
    uint c;
    uint d;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(owner == msg.sender, "only owner can access");
        _;
    }

    function setter (uint _a, uint _b, uint _c, uint _d) public onlyOwner{

        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function getterA() public view returns(uint){

        return a;
    }

    function getterB() public view returns(uint){
        
        return b;
    }

    function getterC() public view returns(uint){

        return c;
    }

    function getterD() public view returns(uint){

        return d;
    }

}
