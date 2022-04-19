pragma solidity ^0.8.7;

contract MyBalanceContract {

    mapping(address => uint) balance;

    function addBalance(uint b) external {
        balance[msg.sender] = b;
    }

    function getBalance() external view returns(uint) {
        return balance[msg.sender];
    }

    function addBalanceByAddress(address add, uint b) external {
        balance[add] = b;
    }

    function getBalanceByAddress(address add) external view returns(uint) {
        return balance[add];
    }
    
}