//SPDX-License-Identifier: MIT

pragma solidity = 0.6.0;

contract SimpleStorage {
    uint public favoriteNumber = 9;
    string name;

    struct People {
        string name;
        uint256 favoriteNumber;
    }

    People[] public people;
    mapping (string => uint256) public nameToFavoriteNumber;

    function addPerson (string memory _name, uint256 _favoriteNumber) public {
        people.push (People(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // People public person = People ({favoriteNumber:3, name: "Julien"});

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function store (uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}
