pragma solidity ^0.7.0;

contract GasHeavy {
    uint256 x = 1;
    fallback() external payable {
        // will cost more than default 10000 gas to execute this
        for (uint8 i = 0; i < 15; i++) {
            x++;
        }
    }

    receive() external payable {
        // will cost more than default 10000 gas to execute this
        for (uint8 i = 0; i < 15; i++) {
            x++;
        }
    }
}
