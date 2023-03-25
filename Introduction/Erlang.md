# Erlang

## Install

```bash
apt-get update
apt-get install curl build-essential ncurses-dev
curl -OL https://github.com/erlang/otp/releases/download/OTP-25.0.4/otp_src_25.0.4.tar.gz && tar -xf otp_src_25.0.4.tar.gz && cd ./otp_src_25.0.4
./configure && make && make install
cd .. && rm -fr otp_src_25.0.4*
```

## Version
```bash
erl -version

# Erlang (SMP,ASYNC_THREADS) (BEAM) emulator version 13.0.4
```

## Code

```erl
-module(index).
-export([for/1,for/2,start/0]).

for(I,Sum) when I == 0 -> io:fwrite("~w~n",[Sum]);
for(I,Sum) when I > 0 -> for(I-1,Sum+I).
for(I) when I > 0  -> for(I-1,I).

start() -> 
    for(99999999).
```

## Tests

```bash
erlc index.erl
time erl -noshell -s index start -s init stop

# 4999999950000000
# 
# real    0m2.217s
# user    0m0.973s
# sys     0m0.419s
```
