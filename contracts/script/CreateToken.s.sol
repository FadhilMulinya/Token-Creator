// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

// Importing the Script contract from Forge
import "forge-std/Script.sol";
// Importing the TokenFactory contract
import "../src/Factory.sol";

// CreateToken script to deploy a new token
contract CreateToken is Script {
    // Function to run the script
    function run() public {
        // Starting the broadcast for transactions
        vm.startBroadcast();

        // Setting up initial parameters for the token
        address initialOwner = msg.sender; // Owner is the sender of the transaction
        uint256 initialSupply = 1000; // Initial supply of tokens
        string memory name = "MyToken"; // Name of the token
        string memory symbol = "MTK"; // Symbol of the token

        // Creating a new instance of TokenFactory
        TokenFactory factory = new TokenFactory();

        // Creating a new token using the factory
        address tokenAddress = factory.createToken(initialOwner, initialSupply, name, symbol);
        // Logging the address of the created token
        console.log("Token created at address:", tokenAddress);

        // Stopping the broadcast
        vm.stopBroadcast();
    }
}
