# Solidity

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

[learn more about function overriding](https://docs.soliditylang.org/en/latest/contracts.html#function-overriding/)
