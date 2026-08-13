# F#

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://dot.net/v1/dotnet-install.sh -o /tmp/dotnet-install.sh && \
bash /tmp/dotnet-install.sh --channel 8.0 --install-dir /usr/local/dotnet && \
ln -s /usr/local/dotnet/dotnet /usr/local/bin/dotnet
```

## Version

```bash
dotnet fsi --version
```

## Code

```fsharp
let n = 100000000L
printfn "%d" (n * (n - 1L) / 2L)
```

## Tests

```bash
dotnet fsi main.fsx
# 4999999950000000
```
