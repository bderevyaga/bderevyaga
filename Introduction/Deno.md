# Deno

## Install

```bash
apt-get update \
    && apt-get install -y curl unzip \
    && curl -fsSL https://deno.land/install.sh | DENO_INSTALL=/usr/local sh
```

## Version

```bash
deno -V

# deno 1.23.0
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
time deno run index.ts

# 4999999950000000
# 
# real    0m0.158s
# user    0m0.140s
# sys     0m0.021s
```