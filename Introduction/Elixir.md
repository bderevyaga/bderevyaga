# Elixir

## Install

```bash
add-apt-repository ppa:rabbitmq/rabbitmq-erlang && \
    apt-get update && apt-get install elixir erlang
```

## Version

```bash
elixir -v

#Erlang/OTP 27 [erts-15.2.7.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [jit:ns]
#Elixir 1.17.3 (compiled with Erlang/OTP 26)
```

## Code

```elixir
sum = Enum.reduce(0..99_999_999, 0, &+/2)
IO.puts(sum)
```

## Tests

```bash
time elixir index.exs

# 4999999950000000

# real    0m2.902s
# user    0m3.967s
# sys     0m0.869s
```
