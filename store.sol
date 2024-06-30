// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Store {
    string public name = "Clothing Shop";
    uint public itemCount = 0;
    mapping (uint => string) private clothes;
    mapping(string => uint) private price;
    address public owner;

    constructor () {
        owner = msg.sender;
    }

    function addCollection(string memory clotheName, uint value, uint itemId) public {
        require(msg.sender == owner, 'Only owner can add a collection');
        assert(itemId == itemCount + 1);
        price[clotheName] = value;
        clothes[itemId] = clotheName;
        itemCount++;
    }

    function buyItem(uint itemId) public payable {
        require(itemId > 0 && itemId <= itemCount, 'Item does not exist');
        string storage clotheName = clothes[itemId];
        uint clothePrice = price[clotheName];
        if (msg.value < clothePrice) {
            revert("Not enough money");
        } else {
            itemCount--;
        }
    }
}
