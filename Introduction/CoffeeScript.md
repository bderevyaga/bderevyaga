# CoffeeScript

## Install

```bash
apt-get update \
    && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm i -g coffeescript \
```

## Version

```bash
coffee -v

# CoffeeScript version 2.7.0
```

## Code

```coffee
sum = 0
for i in [0...100000000]
    sum += i
console.log sum
```

## Tests

```bash
time coffee index.coffee

# 4999999950000000
#
# real    0m0.298s
# user    0m0.230s
# sys     0m0.068s
```

```bash
coffee -c index.coffee
time node index.js

# 4999999950000000
#
# real    0m0.208s
# user    0m0.176s
# sys     0m0.032s
```