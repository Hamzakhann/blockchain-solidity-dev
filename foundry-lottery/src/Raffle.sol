// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
 * @title A simple Raffle contract
 * @author Hamza Khan
 * @notice This contract is for creating a simple Raffle
 * @dev Implements Chainlink VRF and Chainlink Autonation
 */

contract Raffle {
    error Raffle_NotEnoughEthSent();

    uint256 private immutable i_entranceFee;
    // @dev Duration the lottery in seconds
    uint256 private immutable i_interval;
    uint256 private s_lastTimestamp;

    address payable[] private s_players;


    // Events
    event EnteredRaffle (address indexed player);

    constructor(uint256 entranceFee, uint256 interval) {
        i_entranceFee = entranceFee;
        i_interval = interval;
        s_lastTimestamp = block.timestamp;
    }

    function enterRaffle() external payable {
        // require(msg.value >= i_entranceFee, "Not enough eth sent");
        if (msg.value < i_entranceFee) {
            revert Raffle_NotEnoughEthSent();
        }
        s_players.push(payable(msg.sender));
        emit EnteredRaffle(msg.sender);
    }

    // 1. Get a random number
    // 2. Use the random number to pick a winner
    // 3. Be automatically called
    function pickWinner() external {
        // check to see if enough time has passed
        if(block.timestamp - s_lastTimestamp < i_interval){
            revert();
        }
    }

    /* Getter Functions */
    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}
