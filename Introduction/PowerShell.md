# PowerShell

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -o /tmp/packages-microsoft-prod.deb && \
dpkg -i /tmp/packages-microsoft-prod.deb && apt-get update && apt-get install -y powershell
```

## Version

```bash
pwsh --version
```

## Code

```powershell
[long]$n = 100000000
$n * ($n - 1) / 2
```

## Tests

```bash
pwsh -File main.ps1
# 4999999950000000
```
