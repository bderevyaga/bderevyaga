# Agda

## Install

```bash
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y locales agda agda-stdlib
locale-gen sv_SE.UTF-8

# Configure Agda standard library
mkdir -p /root/.agda
printf "name: standard-library\ninclude:\n  .\n  src\n" > /usr/share/agda-stdlib/standard-library.agda-lib
echo "/usr/share/agda-stdlib/standard-library.agda-lib" > /root/.agda/libraries
echo "standard-library" > /root/.agda/defaults

export LC_ALL=sv_SE.UTF-8
```

## Version

```bash
agda --version

#Agda version 2.8.0
#Built with flags (cabal -f)
# - optimise-heavily: extra optimisations
```

## Code

```agda
{-# OPTIONS --guardedness #-}
module Main where

open import Data.Nat using (ℕ; _*_; _∸_)
open import Data.Nat.DivMod using (_/_)
open import Data.Nat.Show using (show)
open import IO using (Main; run; putStrLn)

sumTo : ℕ → ℕ
sumTo n = (n * (n ∸ 1)) / 2

main : Main
main = run (putStrLn (show (sumTo 100000000)))
```

## Tests

```bash
agda --guardedness --compile Main.agda
time ./Main

# 4999999950000000
#
# real    0m0,009s
# user    0m0,002s
# sys     0m0,005s
```
