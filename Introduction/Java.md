# Java

## Install

```bash
apt-get update && apt-get install -y openjdk-21-jdk
```

## Version

```bash
java -version

# openjdk version "21.0.4" 2024-07-16
# OpenJDK Runtime Environment (build 21.0.4+7-Ubuntu-1ubuntu224.04)
# OpenJDK 64-Bit Server VM (build 21.0.4+7-Ubuntu-1ubuntu224.04, mixed mode, sharing)
```

## Code

```java
public class index {
    public static void main(String[] args) {
        long sum = 0;

        for (int i = 0; i < 100_000_000; i++) {
            sum += i;
        }

        System.out.println(sum);
    }
}
```

## Tests

```bash
javac index.java
time java index

# 4999999950000000
#
# real    0m0.078s
# user    0m0.074s
# sys     0m0.020s
```