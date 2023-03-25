# Bash

## Install

```bash
apt-get update
apt-get install curl build-essential
curl -OL http://ftp.gnu.org/gnu/bash/bash-5.2.15.tar.gz && tar -xf bash-5.2.15.tar.gz && cd ./bash-5.2.15
./configure && make && make install
cd .. && rm -fr bash-5.2.15*
```

## Version

```bash
bash --version

# GNU bash, version 5.2.15(1)-release (x86_64-pc-linux-gnu)
# Copyright (C) 2022 Free Software Foundation, Inc.
# License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
#
# This is free software; you are free to change and redistribute it.
# There is NO WARRANTY, to the extent permitted by law.
```

## Code

```bash
#!/bin/bash

sum=0
for (( i=0; i<100000000; i++ ))
do
  ((sum+=i))
done

echo $sum
```

## Tests

```bash
time bash index.sh

# 4999999950000000
#
# real    6m40.866s
# user    6m41.244s
# sys     0m0.018s
```