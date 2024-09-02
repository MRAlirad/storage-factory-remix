// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import './SimpleStorage.sol';

contract StorageFactory {
    SimpleStorage public simpleStorage;
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
    
    function createSimpleStorageContractAndAddToArray() public {
        SimpleStorage sStorage = new SimpleStorage();
        simpleStorageArray.push(sStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //! first way
        // SimpleStorage sStorage = simpleStorageArray[_simpleStorageIndex]; // address of the contract
        // sStorage.store(_simpleStorageNumber);

        //! easier way
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        //! first way
        // SimpleStorage sStorage = simpleStorageArray[_simpleStorageIndex];
        // return sStorage.retrieve();

        //! easier way
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}