pragma solidity ^0.8.7;
import "./HelloWorld.sol";

contract ImportDemo {

    address HelloAdd;

    function setAddressB(address _addr) external {
        HelloAdd = _addr;
    }

    function callHello() external view returns(string memory) {
        HelloInterface h = HelloInterface(HelloAdd);
        return h.helloworld();
    }

}