pragma solidity ^0.8.0;

contract GlobalFunctionsContract {
    address private owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }
    
    function getSenderAddress() public view returns(address) {
        return msg.sender;
    }
    
    function getTimestamp() public view returns(uint256) {
        return block.timestamp;
    }
    
    function sendEther(address payable recipient) public payable {
        recipient.transfer(msg.value);
    }
    
    function destroyContract() public onlyOwner {
        selfdestruct(payable(owner));
    }
}
