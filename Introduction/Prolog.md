# Prolog

## Install

```bash
apt-get update && apt-get install -y swi-prolog
```

## Version

```bash
swipl --version
```

## Code

```prolog
:- initialization(main).

main :-
    N = 100000000,
    Result is N * (N - 1) // 2,
    writeln(Result),
    halt.
```

## Tests

```bash
swipl -q -s main.pl
# 4999999950000000
```
