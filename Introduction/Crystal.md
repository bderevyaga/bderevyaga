# Crystal

## Install

```bash
apt-get update && apt-get install -y crystal
```

## Version

```bash
crystal --version
```

## Code

```crystal
n = 100_000_000_i64
puts n * (n - 1) // 2
```

## Tests

```bash
crystal run main.cr --release
# 4999999950000000
```
