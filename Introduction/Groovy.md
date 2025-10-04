# Groovy

## Install

```bash
apt-get update && apt-get install -y groovy
```

## Version

```bash
groovy --version

# Groovy Version: 2.4.21 JVM: 21.0.8 Vendor: Ubuntu OS: Linux
```

## Code

```groovy
class Sum {
    static void main(String[] args) {
        long sum = 0
        for (long i = 0; i < 100000000; i++) {
            sum += i
        }
        println(sum)
    }
}
```

## Tests

```bash
time groovy index.groovy

# 4999999950000000

# real    0m0.710s
# user    0m1.135s
# sys     0m0.167s
```
