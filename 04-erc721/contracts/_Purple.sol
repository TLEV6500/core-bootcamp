// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract _Purple is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("_Purple", "_PRPL") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://gateway.pinata.cloud/ipfs/bafkreih5wb7ui2i4xgf6otpcdebpqc3jbemjzzhz2pzujk6m5vlyb6ogwy"
        );
        tokenId++;
    }
}
