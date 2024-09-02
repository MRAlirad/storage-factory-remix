// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import './SimpleStorage.sol';

contract StorageFactory {
    SimpleStorage public simpleStorage;
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage()
    }
    
    function createSimpleStorageContractAndAddToArray() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
}