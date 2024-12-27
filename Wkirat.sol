// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {console} from "forge-std/console.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Wkirat is ERC20, Ownable {
    uint public totalSupplyNew;
    mapping(address => uint) public balances;

    constructor(
        uint _initialValue
    ) ERC20("Wkirat", "WKIRAT") Ownable(msg.sender) {}

    // mintTo
    function mintTo(address _to, uint amount) public onlyOwner {
        _mint(_to, amount);
    }

    function burn(address _to, uint amount) public onlyOwner {
        _burn(_to, amount);
    }
}
