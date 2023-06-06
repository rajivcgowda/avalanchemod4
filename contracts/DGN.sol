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
        
        require(balanceOf(msg.sender)>100, "Minimum of 100 tokens are required");
        require(amt<=4 && amt!=0, "Enter a value from 1-3 since there are 3 items to redeem");
        _burn(msg.sender, amt*100);
       
    }

}
