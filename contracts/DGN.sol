// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Degen is ERC20, ERC20Burnable, Ownable {
    
    string public store;
    
    constructor() ERC20("Degen", "DGN") {
        store="Items available in the store are 1. Degen Toy car 2. Degen Stickies. 3. Degen Bowl 4. Degen merchandise";
    }

    function mint(address to_address, uint256 amt) public onlyOwner {
        _mint(to_address, amt);
        
    }


    function redeem(uint256 amt) public{
        
        require(balanceOf(msg.sender)>20, "You need atleast 20 tokens to redeem an item");
        require(amt<=4 && amt!=0, "Only 4 items are present :/");
        _burn(msg.sender, amt*20);
       
    }

}
