# PureScript

## Install

```bash
apt-get update && apt-get install -y nodejs npm && \
npm install --global purescript spago
```

## Version

```bash
purs --version
```

## Code

```purescript
module Main where

import Prelude
import Effect (Effect)
import Effect.Console (logShow)

main :: Effect Unit
main = do
  let n = 100000000.0
  logShow (n * (n - 1.0) / 2.0)
```

## Tests

```bash
spago init && cp Main.purs src/Main.purs && spago run
# 4999999950000000
```
