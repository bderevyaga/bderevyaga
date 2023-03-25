# TypeScript

## Install

```bash
apt-get update
apt-get install curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
npm i -g ts-node typescript
```

## Version
```bash
ts-node -v
# v10.8.1

tsc -v
# Version 4.7.4
```

## Code

```ts
let sum: number = 0;
for (let i = 0; i < 100000000; i++) {
    sum +=i;
}
console.log(sum);
```

## Tests

```bash
time ts-node index.ts

# 4999999950000000
# 
# real    0m1.230s
# user    0m1.945s
# sys     0m0.346s
```

```bash
tsc index.ts
time node index.js

# 4999999950000000
# 
# real    0m0.193s
# user    0m0.169s
# sys     0m0.025s
```

