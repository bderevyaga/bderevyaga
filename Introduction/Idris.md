# Idris 2

## Install

```bash
apt-get update && apt-get install -y git build-essential chezscheme && \
git clone --depth 1 https://github.com/idris-lang/Idris2.git /tmp/Idris2 && \
make -C /tmp/Idris2 bootstrap SCHEME=chezscheme && make -C /tmp/Idris2 install
```

## Version

```bash
~/.idris2/bin/idris2 --version
```

## Code

```idris
module Main

main : IO ()
main = do
  let n : Integer = 100000000
  printLn (n * (n - 1) `div` 2)
```

## Tests

```bash
~/.idris2/bin/idris2 Main.idr -o main && ./build/exec/main
# 4999999950000000
```
