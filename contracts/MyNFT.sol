// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "/Users/juliapak/node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";

// my nft. this is incomplete
contract MyNFT is ERC721 {
    constructor() public ERC721("MyNFT", "MNFT") {}
}
