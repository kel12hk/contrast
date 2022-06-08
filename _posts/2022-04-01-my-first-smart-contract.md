---
title: "My first smart contract"
layout: post
---

There are quite a number of DeFi projects are actually supported by smart contracts. Once the conditions in the smart contracts are fulfilled, participants are eligble to retrieve the return. Hence, I have also tried to built one on my own to see how does it work.

The smart contract I built is a rather simple one and I am just to experience how is a smart contact being developed and deployed in a blockchain protocol. The 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract HelloWorld {
    function helloWorld() external pure returns (string memory) {
        return "Hello, World!";
    }
}
```
//
