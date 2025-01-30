// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "forge-std/Test.sol";
import "../src/Factory.sol";
import "../src/Token.sol";

// Test contract for the TokenFactory
contract TokenFactoryTest is Test {
    TokenFactory factory; // Instance of the TokenFactory contract
    address initialOwner; // Address of the initial owner of the token
    uint256 initialSupply = 1000; // Initial supply of the token
    string name = "MyToken"; // Name of the token
    string symbol = "MTK"; // Symbol of the token

    // Event emitted when a new token is created
    event TokenCreated(address indexed tokenAddress, address indexed owner, uint256 initialSupply);

    // Setup function to initialize the test environment
    function setUp() public {
        factory = new TokenFactory(); // Create a new instance of TokenFactory
        initialOwner = address(this); // Set the initial owner to the address of this contract
    }

    // Test function to verify token creation
    function testCreateToken() public {
        // Expect the TokenCreated event to be emitted with specified parameters
        vm.expectEmit(false, false, false, false);
        emit TokenCreated(address(0), initialOwner, initialSupply);

        // Create a new token and get its address
        address tokenAddr = factory.createToken(initialOwner, initialSupply, name, symbol);
        assertTrue(tokenAddr != address(0), "Token creation failed"); // Ensure the token address is valid

        Token token = Token(tokenAddr); // Create an instance of the Token contract at the new address
        // Verify that the token's owner is set correctly
        assertEq(token.owner(), initialOwner, "Owner is not set correctly");
        // Verify that the total supply of the token is correct
        assertEq(token.totalSupply(), initialSupply * 10 ** 18, "Initial supply is incorrect");
        // Verify that the token's name is correct
        assertEq(token.name(), name, "Token name is incorrect");
        // Verify that the token's symbol is correct
        assertEq(token.symbol(), symbol, "Token symbol is incorrect");
    }
}
