// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CounterSmartContract {
    // variables
    int private count = 0;

    // increment
    function increment() public {
        ++count;
    }

    // decrement
    function decrement() public {
        --count;
    }

    // get count value
    function getCount() public view returns (int) {
        return count;
    }
}