---
title: "My first smart contract"
layout: post
---

There are quite a number of DeFi projects are actually supported by smart contracts. Once the conditions in the smart contracts are fulfilled, participants are eligble to retrieve the return. Hence, I have also tried to built one on my own to see how does it work.

The smart contract I built is a rather simple one and I was just to experience how was a smart contact being developed and deployed in a blockchain protocol. 
The smart contract is written in Solidity and it will be developed in the Remix IDE, you can visit the link [here](http://remix.ethereum.org/). 

The function of the smart contract is simply storing name/number pair in the form of array and retrieve the respective number by inputting the name.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract SimpleStorage {

uint256 favoriteNumber;
bool favoriteBool;
bool favoriteBool2;

struct People {    
    uint256 favoriteNumber;
    string name;}

People[] public people;
mapping (string => uint256)public nameToFavouriteNumber;

function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
}
function retrieve() public view returns(uint256) {return favoriteNumber;}

function addPerson(string memory _name, uint256 _favoriteNumber)public{
    people.push(People(_favoriteNumber, _name));
    nameToFavouriteNumber[_name]=_favoriteNumber;
}
}
```
Once the contract is complied in the IDE, we may deploy the contract with the ethereum in our MetaMask test wallet. 
![Screenshot 2022-06-08 at 19 51 27](https://user-images.githubusercontent.com/76480688/172610204-905e497b-2050-4d7c-9eb9-f9c468fc0110.png)


The functions can be simulated once the contract deployed. Here you go!

![Screenshot 2022-06-08 at 19 54 25](https://user-images.githubusercontent.com/76480688/172610109-e733828d-7e7e-45a7-aa5c-1a790c830dff.png)

