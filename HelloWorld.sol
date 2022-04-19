pragma solidity ^0.8.7;

interface HelloInterface {
    function helloworld() external pure returns(string memory);
}

contract HelloWorld {

    function helloworld() external pure returns(string memory) {
        return "Hello World";
    }

}