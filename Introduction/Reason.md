# Reason / ReScript

Modern ReScript is the continuation of the Reason toolchain and compiles to
JavaScript.

## Install

```bash
apt-get update && apt-get install -y nodejs npm && npm install rescript
```

## Version

```bash
npx rescript -version
```

## Code

```rescript
let n = 100000000.
Js.log(n *. (n -. 1.) /. 2.)
```

## Tests

```bash
npx rescript && node src/Main.res.js
# 4999999950000000
```
