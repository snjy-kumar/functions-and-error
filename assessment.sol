// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Functions and Errors - ETH + EVAX
// Final Assessment

contract ExceptionHandlingExample {
    uint public num;

    constructor() {
        num = 10; 
    }

    function requireExample(uint _num) public {
        require(_num != 0, "Number cannot be zero");
        num = _num;
    }
   
    function assertExample(uint _num) public view returns (uint) {
        uint result = num * _num;
        assert(result >= num);  
        return result;
    }
    
    function revertExample(uint _num) public pure returns (uint) {
        if (_num == 0) {
            revert("Number cannot be zero");
        }
        return _num;
    }
}
// Author: Sanjay Kumar Thakur