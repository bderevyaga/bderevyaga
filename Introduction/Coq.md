# Coq

## Install

```bash
apt-get update && apt-get install -y coq
```

## Version

```bash
coqc --version
```

## Code

```coq
Require Import ZArith.
Open Scope Z_scope.
Definition n : Z := 100000000.
Definition result : Z := n * (n - 1) / 2.
Compute result.
```

## Tests

```bash
coqc Main.v
# = 4999999950000000 : Z
```
