# Deno

## Install

```bash
apt-get update
apt-get install curl unzip
curl -fsSL https://deno.land/install.sh | DENO_INSTALL=/usr/local sh
```

## Version
```bash
deno -V
# deno 1.23.0
```

## Code

```ts
let _sum: number = 0
for (let i = 0; i < 100000000; i++) {
    _sum +=i
}
console.log(_sum);
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