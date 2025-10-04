# Scala

## Install

```bash
apt-get update && apt-get install -y scala
```

## Version

```bash
scala -version

# Scala code runner version 2.11.12 -- Copyright 2002-2017, LAMP/EPFL
```

## Code

```text
object index {
  def main(args: Array[String]): Unit = {
    var sum: Long = 0

    for (i <- 0 until 100000000) {
      sum += i
    }

    println(s"$sum")
  }
}
```

## Tests

```bash
scalac index.scala
time scala index

# 4999999950000000
#
# real    0m0.589s
# user    0m0.918s
# sys     0m0.174s
```