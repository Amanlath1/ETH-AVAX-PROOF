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

    function getter() public view onlyOwner returns(uint){

        if((a > b) && (a > c) && (a > d)){

            return a;
        }

        if((b > a) && (b > c) && (b > d)){
            
            return b;
        }

        if((c > a) && (c > b) && (c > d)){

            return c;
        }

        if((d > a) && (d > b) && (d > c)){

            return d;
        }

    }

}
