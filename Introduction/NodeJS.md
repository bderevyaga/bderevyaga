# NodeJS

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
apt-get install -y nodejs
```

## Version

```bash
node -v

# v18.4.0
```

## Code

```js
let sum = 0;
for (let i = 0; i < 100000000; i++) {
    sum +=i;
}
console.log(sum);
```

## Tests

```bash
time node index.js

# 4999999950000000
# 
# real    0m0.194s
# user    0m0.153s
# sys     0m0.041s
```