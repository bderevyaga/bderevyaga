# C

## Install

```bash
apt-get update
apt-get install build-essential
```

## Version

```bash
gcc --version

# gcc (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0
# Copyright (C) 2021 Free Software Foundation, Inc.
# This is free software; see the source for copying conditions.  There is NO
# warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Code

```c
#include <stdio.h>

int main() {
    long long int sum = 0;
    for (int i = 0; i < 100000000; i++) {
        sum += i;
    }
    printf("%lld\n", sum);
    return 0;
}
```

## Tests

```bash
gcc -o index index.c
time ./index

# 4999999950000000
#
# real    0m0.254s
# user    0m0.253s
# sys     0m0.001s
```