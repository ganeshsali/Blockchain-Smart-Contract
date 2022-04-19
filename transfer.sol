pragma solidity ^0.8.7;

contract TransferDemo {

    function balanceOf() external view returns(uint) {
        return address(this).balance;
    }

    function invest() external payable {

    }

    function getMoney(address payable recipient) external{
        recipient.transfer(1 ether);
    }

}