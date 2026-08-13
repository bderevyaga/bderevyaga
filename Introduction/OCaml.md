# OCaml

## Install

```bash
apt-get update && apt-get install -y ocaml
```

## Version

```bash
ocamlc -version
```

## Code

```ocaml
let n = 100000000L
let result = Int64.div (Int64.mul n (Int64.sub n 1L)) 2L
let () = Printf.printf "%Ld\n" result
```

## Tests

```bash
ocamlopt main.ml -o main && ./main
# 4999999950000000
```
