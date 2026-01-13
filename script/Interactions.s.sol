// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant MEOWTHIC1_URI = "ipfs://bafkreid36gufurqfergx677aaxyevyh2e6hwtwx6vwxxv4hl32ujfm2bui";
    string public constant MEOWTHIC2_URI = "ipfs://bafkreicabkxk6gne2fc7sgr5uxsvxlswp56wtuk6ep3g7f5vcfgcyniyim";
    string public constant MEOWTHIC3_URI = "ipfs://bafkreig7vz2zfvm5uwhdbr36oy2bf47hmab47tagrbxyrwpe2l2dp7o4d4";
    string public constant MEOWTHIC4_URI = "ipfs://bafkreicruplo3nj7a7o6qb7bleq5kc5muxv7oe6aswcjz7gcyroxfopz34";
    string public constant MEOWTHIC5_URI = "ipfs://bafkreian36vh4swcshoict45k6cnqby6bbyav5kbxmbbhtwgmb2oxriwoy";
    string public constant MEOWTHIC6_URI = "ipfs://bafkreibvb77hzj5mp5rvqwum4atpacgmj4kyovlu4wulphgvjk46244d5q";

    function run() external {
        address mostRecentlyDeployedBasicNft
            = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);
        mintNftOnContract(mostRecentlyDeployedBasicNft);
    }

    function mintNftOnContract(address basicNftAddress) public {
        vm.startBroadcast();
        BasicNft(basicNftAddress).mintNft(MEOWTHIC1_URI);
        BasicNft(basicNftAddress).mintNft(MEOWTHIC2_URI);
        BasicNft(basicNftAddress).mintNft(MEOWTHIC3_URI);
        BasicNft(basicNftAddress).mintNft(MEOWTHIC4_URI);
        BasicNft(basicNftAddress).mintNft(MEOWTHIC5_URI);
        BasicNft(basicNftAddress).mintNft(MEOWTHIC6_URI);
        vm.stopBroadcast();
    }
}
