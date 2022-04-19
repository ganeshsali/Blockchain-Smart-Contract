pragma solidity ^0.8.7;

contract events {

    event NewTrade (
        uint timestamp,
        address from,
        address to,
        uint amount
    );

    function trade(address to, uint amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}
