pragma solidity ^0.8.7;

contract Modifier{

    address admin;

    constructor() {
        admin = msg.sender;
    }

    function invest() external payable {
    }

    function balanceOf() external view returns(uint) {
        return address(this).balance;
    }
    
    function withdraw(uint amount) external onlyAdmin(){
        payable(admin).transfer(amount);
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin");
        _;
    }
}