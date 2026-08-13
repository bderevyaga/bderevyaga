# Lean

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y && \
ln -s /root/.elan/bin/lean /usr/local/bin/lean
```

## Version

```bash
lean --version
```

## Code

```lean
def sumTo (n : Nat) : Nat := n * (n - 1) / 2
#eval sumTo 100000000
```

## Tests

```bash
lean Main.lean
# 4999999950000000
```
