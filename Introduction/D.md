# D

## Install

```bash
apt-get update && apt-get install -y ldc
```

## Version

```bash
ldc2 --version
```

## Code

```d
import std.stdio;

void main()
{
    long n = 100_000_000;
    writeln(n * (n - 1) / 2);
}
```

## Tests

```bash
ldc2 -O3 main.d -of=main && ./main
# 4999999950000000
```
