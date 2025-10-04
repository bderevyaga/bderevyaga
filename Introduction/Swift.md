# Swift

## Install

```bash
apt-get update
apt-get install -y clang libicu-dev libatomic1 libcurl4-openssl-dev libxml2 pkg-config tzdata wget

wget https://download.swift.org/swift-5.9.2-release/ubuntu2204/swift-5.9.2-RELEASE/swift-5.9.2-RELEASE-ubuntu22.04.tar.gz

tar -xzf swift-5.9.2-RELEASE-ubuntu22.04.tar.gz
mv swift-5.9.2-RELEASE-ubuntu22.04 /opt/swift-5.9.2
rm swift-5.9.2-RELEASE-ubuntu22.04.tar.gz
export PATH=/opt/swift-5.9.2/usr/bin:$PATH
```

## Version

```bash
swift --version

# Swift version 5.9.2 (swift-5.9.2-RELEASE)
# Target: x86_64-unknown-linux-gnu
```

## Code

```swift
import Foundation

var sum: Int64 = 0
for i in 0..<100_000_000 {
    sum += Int64(i)
}
print(sum)
```

## Tests

```bash
swiftc index.swift -O -o index
time ./index

# 4999999950000000

# real    0m0.067s
# user    0m0.064s
# sys     0m0.003s
```
