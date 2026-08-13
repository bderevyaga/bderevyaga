# Elm

## Install

```bash
apt-get update && apt-get install -y nodejs npm && npm install --global elm
```

## Version

```bash
elm --version
```

## Code

```elm
module Main exposing (main)
import Html exposing (text)

main =
    let n = 100000000.0
    in text (String.fromFloat (n * (n - 1.0) / 2.0))
```

## Tests

```bash
elm make src/Main.elm --output=main.html
# Open main.html: 4999999950000000
```
