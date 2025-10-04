# Lua

## Install

```bash
apt-get update
apt-get install -y lua5.4
```

## Version

```bash
lua -v

# Lua 5.4.6  Copyright (C) 1994-2023 Lua.org, PUC-Rio
```

## Code

```lua
local sum = 0
for i = 0, 99999999 do
    sum = sum + i
end
print(string.format("%.0f", sum))
```

## Tests

```bash
time lua index.lua

# 4999999950000000

# real    0m0.478s
# user    0m0.476s
# sys     0m0.002s
```
