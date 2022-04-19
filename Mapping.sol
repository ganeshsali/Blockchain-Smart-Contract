pragma solidity ^0.8.7;

contract Mapping {

    mapping(address => uint) balances;

    function foo() external {

        // Add/Update
        balances[msg.sender] = 100;

        // Retrieve
        balances[msg.sender];

        // Delete
        delete balances[msg.sender];
    }

    mapping(address => mapping(address => bool)) approved;

    function bar(address spender) external {

        // Add
        approved[msg.sender][spender] = true;

        // Retrieve
        approved[msg.sender][spender];

        // Update
        approved[msg.sender][spender] = false;

        // Delete
        delete approved[msg.sender][spender];

    }

    mapping(address => uint[]) score;

    function scores() external {

        // Add
        score[msg.sender].push(1);
        score[msg.sender].push(2);
        score[msg.sender].push(3);

        // Retrieve
        score[msg.sender][0];

        // Update
        score[msg.sender][1] = 20;

        // Delete
        delete score[msg.sender][1]; 
    }
}
