# Forth

## Install

```bash
apt-get update && apt-get install -y gforth
```

## Version

```bash
gforth --version
```

## Code

```forth
: sum-to ( n -- sum ) dup 1- * 2 / ;
100000000 sum-to . cr
bye
```

## Tests

```bash
gforth main.fs
# 4999999950000000
```
