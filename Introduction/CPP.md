# C++

## Install

```bash
apt-get update && apt-get install -y build-essential
```

## Version

```bash
g++ --version

# g++ (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0
# Copyright (C) 2021 Free Software Foundation, Inc.
# This is free software; see the source for copying conditions.  There is NO
# warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Code

```cpp
#include <iostream>

using namespace std;

int main() {
    long long int sum = 0;
    for (int i = 0; i < 100000000; i++) {
        sum += i;
    }
    cout << sum << "\n";
    return 0;
}
```

## Tests

```bash
g++ -o index index.cpp
time ./index

# 4999999950000000
#
# real    0m0.256s
# user    0m0.253s
# sys     0m0.002s
```