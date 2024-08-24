# Rust

## Install

```bash
apt-get update
apt-get install curl build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
```

## Version

```bash
rustc -V

# rustc 1.80.1 (3f5fd8dd4 2024-08-06)
```

## Code

```rust
fn main() {
    let mut sum: u64 = 0;
    for i in 0..100_000_000 {
        sum += i;
    }
    println!("{}", sum);
}
```

## Tests

```bash
rustc main.rs
time ./main

# 4999999950000000
#
# real    0m0.673s
# user    0m0.672s
# sys     0m0.001s
```