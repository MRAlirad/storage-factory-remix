// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    uint favouriteNumber = 10;

    mapping(string => uint256) public nameToFavouriteNumber;

    Person public person = Person({
        favouriteNumber: 10,
        name: "John"
    });

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person[] public people;

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(Person({
            favouriteNumber: _favouriteNumber,
            name: _name
        }));

        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}