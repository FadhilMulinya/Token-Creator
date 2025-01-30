// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

// Importing the Test contract from Forge
import "forge-std/Test.sol";
// Importing the Token contract for testing
import "../src/Token.sol";

// TokenTest contract to test the Token functionality
contract TokenTest is Test {
    Token token; // Instance of the Token contract
    address initialOwner; // Address of the initial owner
    uint initialSupply = 1000; // Initial supply of tokens
    string name = "TestToken"; // Name of the token for testing
    string symbol = "TT"; // Symbol of the token for testing

    // Setup function to initialize the test environment
    function setUp() public {
        initialOwner = address(this); // Setting the initial owner to the test contract
        token = new Token(initialOwner, initialSupply, name, symbol); // Deploying a new token
    }

    // Test to check the initial owner of the token
    function testInitialOwner() public view {
        assertEq(token.owner(), initialOwner); // Asserting that the owner is correct
    }

    // Test to check the initial supply of the token
    function testInitialSupply() public view {
        uint expectedSupply = initialSupply * 10 ** token.decimals(); // Calculating expected supply
        assertEq(token.totalSupply(), expectedSupply); // Asserting total supply
        assertEq(token.balanceOf(initialOwner), expectedSupply); // Asserting balance of the owner
    }

    // Test to check the name and symbol of the token
    function testNameAndSymbol() public view {
        assertEq(token.name(), name); // Asserting the name
        assertEq(token.symbol(), symbol); // Asserting the symbol
    }
}
