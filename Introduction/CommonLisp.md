# Common Lisp

## Install

```bash
apt-get update && apt-get install -y sbcl
```

## Version

```bash
sbcl --version
```

## Code

```lisp
(let ((n 100000000))
  (format t "~D~%" (/ (* n (1- n)) 2)))
```

## Tests

```bash
sbcl --script main.lisp
# 4999999950000000
```
