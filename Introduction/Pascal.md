# Pascal

## Install

```bash
apt-get update
apt-get install -y fpc
```

## Version

```bash
fpc -version

# Free Pascal Compiler version 3.2.2+dfsg-9ubuntu1 [2022/04/11] for x86_64
# Copyright (c) 1993-2021 by Florian Klaempfl and others
```

## Code

```txt
program Main;

var
  i: LongInt;
  sum: Int64;

begin
  sum := 0;
  for i := 0 to 99999999 do
    sum := sum + i;
  WriteLn(sum);
end.
```

## Tests

```bash
fpc index.pas
time ./index

# 4999999950000000
#
# real    0m0.188s
# user    0m0.184s
# sys     0m0.003s
```