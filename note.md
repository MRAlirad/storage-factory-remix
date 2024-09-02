# Solidity

## Importing

we can import a contract .sol file into an other one.

```js
import './contract/SimpleStorage.sol';
```

and we can use the "**new**" keyword to have a object of the imported contract

```js
    SimpleStorage public simpleStorage = new SimpleStoreage();
```

## Interacting with other Contracts

in order to intract with other contract you need two things

1. address
2. ABI => Application Binary interface