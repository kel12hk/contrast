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