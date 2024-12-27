pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Kirat is ERC20, Ownable {
    uint public totalSupplyNew;
    mapping(address => uint) public balances;

    constructor(
        uint _initialValue
    ) ERC20("Kirat", "KIRAT") Ownable(msg.sender) {}

    // mintTo
    function mintTo(address _to, uint amount) public onlyOwner {
        _mint(_to, amount);
    }
}
