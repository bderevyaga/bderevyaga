# Go

## Install

```bash
apt-get update
apt-get install curl
curl -OL https://go.dev/dl/go1.18.3.linux-amd64.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz
rm go1.18.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
```

## Version

```bash
go version
# go version go1.18.3 linux/amd64
```

## Code

```go
package main

import "fmt"

func main() {
	sum := 0
	for i := 0; i < 100000000; i++ {
		sum += i
	}
	fmt.Println(sum)
}
```

## Tests

```bash
time go run index.go

# 4999999950000000
#
# real    0m0.223s
# user    0m0.198s
# sys     0m0.160s
```

```bash
go build index.go
time ./index

# 4999999950000000
#
# real    0m0.074s
# user    0m0.076s
# sys     0m0.003s
```