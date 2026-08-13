# Julia

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.5-linux-x86_64.tar.gz | tar -xz -C /opt && \
ln -s /opt/julia-1.10.5/bin/julia /usr/local/bin/julia
```

## Version

```bash
julia --version
```

## Code

```julia
n = Int64(100_000_000)
println(n * (n - 1) ÷ 2)
```

## Tests

```bash
julia main.jl
# 4999999950000000
```
