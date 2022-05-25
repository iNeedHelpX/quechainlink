// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "/Users/juliapak/node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "/Users/juliapak/node_modules/@chainlink/contracts/src/v0.8/ChainlinkClient.sol";

//my contract that makes other contract upgradable
contract HeyJulia {
    string public message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function updateMessage(string memory newMessage) public {
        message = newMessage;
    }
}
