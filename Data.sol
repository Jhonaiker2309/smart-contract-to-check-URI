// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/IERC721Metadata.sol";

contract Data  {
    
   IERC721Metadata private tokenMetadata;

   constructor()  {
       tokenMetadata = IERC721Metadata(address(0xef15BaDc1f60B3e1b3728F74F84870F1d852F003));
   }

   function getTokenURI(uint id) public view returns(string memory) {
       return tokenMetadata.tokenURI(id);
   }

   
}
