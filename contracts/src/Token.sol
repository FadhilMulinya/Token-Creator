// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

// Importing OpenZeppelin's ERC20 and Ownable contracts
import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

// Token contract inheriting from ERC20 and Ownable
contract Token is ERC20, Ownable {
    // Constructor to initialize the token with owner and supply
    constructor(address initialOwner, uint256 initialSupply, string memory name, string memory symbol)
        ERC20(name, symbol) // Initializing ERC20 with name and symbol
        Ownable(initialOwner) // Setting the initial owner
    {
        // Transferring ownership to the initial owner
        _transferOwnership(initialOwner);
        // Minting the initial supply of tokens to the owner
        _mint(initialOwner, initialSupply * 10 ** 18); // Adjusting for decimals
    }
}