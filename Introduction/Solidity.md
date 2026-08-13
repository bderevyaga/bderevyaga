# Solidity

## Install

```bash
apt-get update && apt-get install -y nodejs npm && npm install --global solc
```

## Version

```bash
solcjs --version
```

## Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Sum {
    function sumTo(uint256 n) external pure returns (uint256) {
        return n * (n - 1) / 2;
    }
}
```

## Tests

```bash
solcjs --bin Sum.sol
# Call sumTo(100000000): 4999999950000000
```
