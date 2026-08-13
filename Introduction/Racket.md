# Racket

## Install

```bash
apt-get update && apt-get install -y racket
```

## Version

```bash
racket --version
```

## Code

```racket
#lang racket
(define n 100000000)
(displayln (/ (* n (sub1 n)) 2))
```

## Tests

```bash
racket main.rkt
# 4999999950000000
```
