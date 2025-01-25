// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating what version is use

contract SimpleStorage {
  
    uint256 myfavoriteNumber;
 
    //uint256[] listOfFavoriteNumbers;
    struct Person{
            uint256 favoriteNumber;
            string name;
    }
    // dynamic array because "Person[]" has no limit
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;
    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }

    // calldata, memory, are temporary variables // storage are permanent variable
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push( Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
