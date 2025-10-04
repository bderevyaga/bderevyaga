# Kotlin

## Install

```bash
apt-get update && apt-get install -y openjdk-21-jdk kotlin
```

## Version

```bash
kotlinc -version

# OpenJDK 64-Bit Server VM warning: Options -Xverify:none and -noverify were deprecated in JDK 13 and will likely be removed in a future release.
# info: kotlinc-jvm 1.3-SNAPSHOT (JRE 17.0.16+8-Ubuntu-0ubuntu124.04.1)
```

## Code

```kotlin
fun main() {
    var sum = 0L
    for (i in 0 until 100_000_000) {
        sum += i
    }
    println(sum)
}
```

## Tests

```bash
kotlinc index.kt -include-runtime -d index.jar
time java -jar index.jar

# 4999999950000000

# real    0m0.097s
# user    0m0.088s
# sys     0m0.027s
```
