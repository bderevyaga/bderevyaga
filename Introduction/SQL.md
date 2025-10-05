# SQL

## Install

```bash
apt-get update && apt-get install -y sqlite3
```

## Version

```bash
sqlite3 -version

#3.45.1 2024-01-30 16:01:20 e876e51a0ed5c5b3126f52e532044363a014bc594cfefa87ffb5b82257ccalt1 (64-bit)
```

## Code

```sql
WITH RECURSIVE counter(i) AS (
    SELECT 0
    UNION ALL
    SELECT i + 1 FROM counter WHERE i < 99999999
)
SELECT SUM(i) AS total_sum FROM counter;
```

## Tests

```bash
time sqlite3 :memory: < index.sql

# 4999999950000000

# real    0m40.908s
# user    0m40.824s
# sys     0m0.075s
```
