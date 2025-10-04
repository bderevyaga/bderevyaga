# Haskell

## Install

```bash
apt-get update && apt-get install -y ghc
```

## Version

```bash
ghc --version

# The Glorious Glasgow Haskell Compilation System, version 9.4.7
```

## Code

```haskell
main :: IO ()
main = print (sum [0 .. 99999999 :: Integer])
```

## Tests

```bash
time runhaskell index.hs

# 4999999950000000

# real    0m3.959s
# user    0m3.906s
# sys     0m0.065s
```
