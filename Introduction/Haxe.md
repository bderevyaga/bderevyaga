# Haxe

## Install

```bash
apt-get update && apt-get install -y haxe neko
```

## Version

```bash
haxe --version
```

## Code

```haxe
class Main {
    static function main() {
        var n:haxe.Int64 = 100000000;
        Sys.println(n * (n - 1) / 2);
    }
}
```

## Tests

```bash
haxe --main Main --interp
# 4999999950000000
```
