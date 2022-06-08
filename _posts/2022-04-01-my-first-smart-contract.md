---
title: "My first smart contract"
layout: post
---

There are quite a number of DeFi projects are actually supported by smart contracts. Once the conditions in the smart contracts are fulfilled, participants are eligble to retrieve the return. Hence, I have also tried to built one on my own to see how does it work.

The smart contract I built is a rather simple one and I am just to experience how is a smart contact being developed and deployed in a blockchain protocol. 

{% highlight ruby %}
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
{% endhighlight %}

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:



Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
