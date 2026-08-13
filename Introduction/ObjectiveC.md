# Objective-C

## Install

```bash
apt-get update && apt-get install -y clang
```

## Version

```bash
clang --version
```

## Code

```objective-c
#include <stdio.h>

int main(void)
{
    long long n = 100000000LL;
    printf("%lld\n", n * (n - 1) / 2);
    return 0;
}
```

## Tests

```bash
clang -O3 main.m -o main && ./main
# 4999999950000000
```
