#Clothing Shop - Store Smart Contract
##Introduction
The Store smart contract is designed to manage a simple clothing store. It allows the store owner to add clothing items to their collection and enables users to purchase these items by sending ETH equivalent to the item's price. This contract uses Solidity 0.8.24 and includes various mechanisms for ensuring secure and reliable transactions.

###Features
Owner Management: Only the owner can add new clothing items to the collection.
Add Clothing Items: The owner can add new clothing items with a specified price and unique item ID.
Purchase Items: Users can buy items by sending the required amount of ETH.
Error Handling: Includes require, assert, and revert statements to ensure robust contract behavior.

###Contract Details
Variables
name: The name of the store, set to "Clothing Shop".
itemCount: The total number of items in the store.
clothes: A mapping from item IDs to clothing names.
price: A mapping from clothing names to their prices.
owner: The address of the store owner.
