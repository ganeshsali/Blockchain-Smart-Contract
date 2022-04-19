pragma solidity ^0.8.7;

contract MyContract {

    uint val;

    function getValue() external view returns(uint) {
        return val;
    }

    function setValue(uint _val) external {
        val = _val;
    }


    // Storage Array
    uint[] myArr;

    function arrFun() external {

        // Add
        myArr.push(1);
        myArr.push(2);
        myArr.push(3);

        // Retrieve
        myArr[0];

        // Update
        myArr[1] = 20;

        // Delete
        delete myArr[1]; 
    }


    // Memory Array
    function arrFun2() external pure {
        uint[] memory arr = new uint[](10);

        arr[0] = 1;
        arr[1] = 2;
    }
    
}
