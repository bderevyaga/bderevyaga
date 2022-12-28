# Python

## Install

```bash
apt-get update
apt-get install curl build-essential zlib1g-dev libssl-dev
curl -OL https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz && tar -xf Python-3.10.5.tgz && cd ./Python-3.10.5
./configure --enable-optimizations
make && make install
cd .. && rm -fr Python-3.10.5*
```

## Version

```bash
python3 --version
# Python 3.10.5
```

## Code

```python
sum = 0
for i in range(100000000):
    sum += i
print(sum)
```

## Tests

```bash
time python3 index.py

# 4999999950000000
#
# real    0m11.798s
# user    0m11.782s
# sys     0m0.007s
```