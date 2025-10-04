# Ruby

## Install

```bash
apt-get update && apt-get install -y curl build-essential libyaml-dev && \
curl -fsSL https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.1.tar.gz | tar -xz && \
(
    cd ./ruby-3.2.1 && \
    ./configure && \
    make -j"$(nproc)" && \
    make install
) && \
rm -fr ruby-3.2.1*
```

## Version

```bash
ruby -v

# ruby 3.2.1 (2023-02-08 revision 31819e82c8) [x86_64-linux]
```

## Code

```rb
sum = 0
for i in 0...100000000
    sum += i
end
puts sum
```

## Tests

```bash
time ruby index.rb

# 4999999950000000
#
# real    0m5.671s
# user    0m5.685s
# sys     0m0.014s
```