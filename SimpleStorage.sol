// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // the "^" represents the required version or higher, you can also use boolean

contract SimpleStorage {
    //Basic Types: boolean, uint, int, address, bytes
//    bool hasFavoriteNumber = true;
//    uint256 favoriteNumber = 88; //refers to as whole number or no decimal point
//    int256 favoriteNumber = 88; //refers to as whole number
//    string favoriteNumberInText = "88"; //text in code like "hello world!"
//    address myAddress = 0x; //you can put your metamask address here
//    bytes32 favoriteBytes32 = "cat";
   uint256 internal myfavoriteNumber;//0
  
    //uint256[] listOfFavoriteNumbers;

    struct Person{
        uint favoriteNumber;
        string name;
    }

    // example of dynamic array
    Person[] public listOfPeople;
    
    // example of static array due to the limited number
    //Person[3] public listOfPeople;

   // Person public pat = Person({favoriteNumber: 7, name: "Pat"});

   function store(uint256 _favoriteNumber) public{
        myfavoriteNumber = _favoriteNumber;

   }
    //view, pure
   function retrieve() public view returns(uint256){
        return myfavoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
   } 
}
