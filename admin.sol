// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract admin{

    address Admin;
    uint a;

    constructor(){

        Admin = msg.sender;
    }

    modifier onlyAdmin{
        
        require(Admin == msg.sender, "only Admin can Access");
        _;
    }

    function setAdmin(address _admin) external onlyAdmin{
    
        Admin = _admin;
    }

    function Setter(uint _a) external onlyAdmin{

        a =_a;
    }

    function Getter() public view returns(uint){

        return a;
    }

}