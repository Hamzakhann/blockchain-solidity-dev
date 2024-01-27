// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {

	constructor(UINT256 initialSupply) ERC20("OurToken", "OT"){
		_mint(msg.sender, initialSupply);
	}
}
