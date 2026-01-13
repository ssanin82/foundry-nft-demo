// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private sTokenCounter;
    mapping(uint256 => string) sTokenIdToUri;

    constructor() ERC721("Meowthic", "MEOWTHIC") {
        sTokenCounter = 0;
    }

    function mintNft(string memory tokenUri) public {
        sTokenIdToUri[sTokenCounter] = tokenUri;
        _safeMint(msg.sender, sTokenCounter);
        sTokenCounter++;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return sTokenIdToUri[tokenId];
    }    
}
