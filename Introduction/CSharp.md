# C#

## Install

```bash
apt-get update && apt-get install -y mono-devel
```

## Version

```bash
mcs --version
```

## Code

```csharp
using System;

class Program
{
    static void Main()
    {
        long n = 100_000_000;
        Console.WriteLine(n * (n - 1) / 2);
    }
}
```

## Tests

```bash
mcs Main.cs && mono Main.exe
# 4999999950000000
```
