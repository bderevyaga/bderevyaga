# Dart

## Install

```bash
apt-get update && apt-get install -y curl unzip && \
curl -fsSL https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip -o /tmp/dart.zip && \
unzip /tmp/dart.zip -d /usr/local/lib && ln -s /usr/local/lib/dart-sdk/bin/dart /usr/local/bin/dart
```

## Version

```bash
dart --version
```

## Code

```dart
void main() {
  const n = 100000000;
  print(n * (n - 1) ~/ 2);
}
```

## Tests

```bash
dart run main.dart
# 4999999950000000
```
