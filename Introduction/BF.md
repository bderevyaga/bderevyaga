# Brainfuck (BF)

## Install

```bash
apt-get update && apt-get install -y beef
```

## Version

```bash
dpkg-query --show --showformat='${Version}\n' beef

# 1.2.0-2build3
```

## Code

The program reads `n` as one raw byte and calculates
`0 + 1 + ... + (n - 1)`. It keeps the current counter in the first cell, the
sum in the second cell, and uses the third cell to restore the counter after
each addition.

Canonical Brainfuck cells are 8-bit, so this portable example uses `n = 10`;
larger results wrap modulo 256. Calculating the repository's full
`n = 100000000` task requires a much larger multi-precision implementation.

```brainfuck
,
[
    -
    [->+>+<<]
    >>[-<<+>>]
    <<
]
>.
```

## Tests

```bash
printf '\012' | beef main.bf | od -An -tu1
# 45
```

Here `\012` is the raw byte `10`, and `45` is the calculated value of
`0 + 1 + ... + 9`.
