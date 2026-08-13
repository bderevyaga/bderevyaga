# Clojure

## Install

```bash
apt-get update && apt-get install -y clojure
```

## Version

```bash
clojure --help
```

## Code

```clojure
(let [n 100000000N]
  (println (/ (* n (dec n)) 2)))
```

## Tests

```bash
clojure main.clj
# 4999999950000000N
```
