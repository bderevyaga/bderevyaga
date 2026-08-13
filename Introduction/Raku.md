# Raku

## Install

```bash
apt-get update && apt-get install -y rakudo
```

## Version

```bash
raku --version
```

## Code

```raku
my Int $n = 100000000;
say $n * ($n - 1) div 2;
```

## Tests

```bash
raku main.raku
# 4999999950000000
```
