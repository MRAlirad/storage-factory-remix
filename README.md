# Storage Factory

In this section, we'll work with three new contracts:

1. `SimpleStorage.sol` - the contract we build in the previous section, with some modifications
2. `AddFiveStorage.sol` - a child contract of `SimpleStorage` that leverages _inheritance_
3. `StorageFactory.sol` - a contract that will _deploy_ a `SimpleStorage` contract and _interact_ with it

### Section overview

```solidity
contract SimpleStorage {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {};
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {};
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {}
}
```

After deploying `StorageFactory` and executing its function `createSimpleStorageContract`, we can observe a new transaction appear in the Remix terminal. It's a **deployment transaction** of the `SimpleStorage` contract, executed by the `StorageFactory` contract.

It's possible to interact with this newly deployed `SimpleStorage` via the `store` function. We'll do this by using the **`sfStore`** function from the `StorageFactory` contract. This function accepts two parameters: the index of a deployed `SimpleStorage` contract, which will be '0' since we just deployed one contract, and the value of a `favoriteNumber`.

The **`sfGet`** function, when given the input '0', will indeed return the number provided by the previous function. The **address** of the `SimpleStorage` contract can then be retrieved by clicking on the get function `listOfSimpleStorageContracts`.

<!-- # Solidity

## Importing

we can import a contract .sol file into an other one. [learn more](https://solidity-by-example.org/import/)

```js
import './contract/SimpleStorage.sol';
```

and we can use the "**new**" keyword to have a object of the imported contract. [learn more](https://docs.soliditylang.org/en/latest/control-structures.html#creating-contracts-via-new)

```js
    SimpleStorage public simpleStorage = new SimpleStoreage();
```

## Interacting with other Contracts

in order to intract with other contract you need two things

1. address
2. ABI => Application Binary interface [learn more](https://docs.soliditylang.org/en/latest/abi-spec.html)

## Inheritance & Overrides

Contracts can inherit other contract by using the "**is**" keyword.

Function that is going to be overridden by a child contract must be declared as "**virtual**".

Function that is going to override a parent function must use the keyword "**override**".

[learn more about inheritance](https://solidity-by-example.org/inheritance/)

[learn more about function overriding](https://docs.soliditylang.org/en/latest/contracts.html#function-overriding/) -->
