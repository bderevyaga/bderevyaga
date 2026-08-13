# λ Calculus

The untyped lambda calculus has no built-in numbers or output. With Church
numerals, arithmetic is represented as function application; the readable
form below uses conventional arithmetic primitives.

## Install

No compiler is required for the mathematical notation.

## Version

Not applicable.

## Code

```text
(λn. (n × (n − 1)) ÷ 2) 100000000
→ (100000000 × 99999999) ÷ 2
→ 4999999950000000
```

## Tests

```bash
python3 -c 'n=100000000; print(n*(n-1)//2)'
# 4999999950000000
```
