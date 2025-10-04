# Erlang

## Install

```bash
apt-get update && apt-get install -y curl build-essential ncurses-dev && \
curl -fsSL https://github.com/erlang/otp/releases/download/OTP-25.0.4/otp_src_25.0.4.tar.gz | tar -xz && \
(
    cd ./otp_src_25.0.4 && \
    ./configure && \
    make -j"$(nproc)" && \
    make install
) && \
rm -fr otp_src_25.0.4*
```

## Version

```bash
erl -version

# Erlang (SMP,ASYNC_THREADS) (BEAM) emulator version 13.0.4
```

## Code

```erl
-module(index).
-export([start/0]).

sum(N, M, Acc) when N > M ->
    Acc;
sum(N, M, Acc) ->
    sum(N + 1, M, Acc + N).

start() -> 
    Sum = sum(0, 99999999, 0),
    io:format("~w~n", [Sum]).
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