// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//trialing this. nothing interesting here to look at
contract MyCoin {
    //my personal coin

    int256 balance;

    constructor() public {
        balance = 0;
    }

    function getBalance() public view returns (int256) {
        return balance;
    }

    function depositBalance(int256 amt) public {
        balance = balance + amt;
    }

    function withdrawBalance(int256 amt) public {
        balance = balance - amt;
    }
}
