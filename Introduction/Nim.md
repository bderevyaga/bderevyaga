# Nim

## Install

```bash
apt-get update && apt-get install -y nim
```

## Version

```bash
nim --version
```

## Code

```nim
let n = 100_000_000'i64
echo n * (n - 1) div 2
```

## Tests

```bash
nim c -d:release --run main.nim
# 4999999950000000
```
