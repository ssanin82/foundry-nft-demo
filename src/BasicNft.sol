// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private stokenCounter;
    constructor() ERC721("Meowthic", "MEOWTHIC") {
        sTokenCounter = 0;
    }

    function mintNft() public {}

    function tikenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        //
    }    
}
