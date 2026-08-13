# Factor

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://downloads.factorcode.org/releases/0.100/factor-linux-x86-64-0.100.tar.gz | tar -xz -C /opt && \
ln -s /opt/factor/factor /usr/local/bin/factor-lang
```

## Version

```bash
factor-lang -version
```

## Code

```factor
USING: kernel math prettyprint ;
: sum-to ( n -- sum ) dup 1 - * 2 / ;
100000000 sum-to .
```

## Tests

```bash
factor-lang main.factor
# 4999999950000000
```
