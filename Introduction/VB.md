# Visual Basic .NET

## Install

```bash
apt-get update && apt-get install -y curl && \
curl -fsSL https://dot.net/v1/dotnet-install.sh -o /tmp/dotnet-install.sh && \
bash /tmp/dotnet-install.sh --channel 8.0 --install-dir /usr/local/dotnet && \
ln -s /usr/local/dotnet/dotnet /usr/local/bin/dotnet
```

## Version

```bash
dotnet --version
```

## Code

`Program.vb`:

```vb
Module Program
    Sub Main()
        Dim n As Long = 100000000
        Console.WriteLine(n * (n - 1) \ 2)
    End Sub
End Module
```

`Main.vbproj`:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
  </PropertyGroup>
</Project>
```

## Tests

```bash
dotnet run --project Main.vbproj
# 4999999950000000
```
