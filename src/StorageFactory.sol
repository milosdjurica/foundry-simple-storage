// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ! always import like this instead to import everything
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI -> Application Binary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageindex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageindex].retreive();
    }
}