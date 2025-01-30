// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

// Importing the Token contract
import "./Token.sol";

// TokenFactory contract to create new tokens
contract TokenFactory {
    // Event emitted when a new token is created
    event TokenCreated(address indexed tokenAddress, address indexed owner, uint256 initialSupply);

    // Function to create a new token
    function createToken(address initialOwner, uint256 initialSupply, string memory name, string memory symbol) public returns (address) {
        // Creating a new Token instance
        Token newToken = new Token(initialOwner, initialSupply, name, symbol);
        // Emitting the TokenCreated event
        emit TokenCreated(address(newToken), initialOwner, initialSupply);
        // Returning the address of the newly created token
        return address(newToken);
    }
}
