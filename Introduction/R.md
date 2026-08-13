# R

## Install

```bash
apt-get update && apt-get install -y r-base
```

## Version

```bash
R --version
```

## Code

```r
n <- 100000000
cat(format(n * (n - 1) / 2, scientific = FALSE), "\n")
```

## Tests

```bash
Rscript main.r
# 4999999950000000
```
