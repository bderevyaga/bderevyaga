# PHP

## Install

```bash
apt-get update \
    && apt-get install -y curl build-essential pkg-config libxml2-dev libsqlite3-dev \
    && curl -fsSL https://www.php.net/distributions/php-8.1.7.tar.gz | tar -xz \
    && cd ./php-8.1.7 \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -fr php-8.1.7*
```

## Version

```bash
php -v

# PHP 8.1.7 (cli) (built: Jun 23 2022 21:39:53) (NTS)
# Copyright (c) The PHP Group
# Zend Engine v4.1.7, Copyright (c) Zend Technologies
```

## Code

```php
<?php
    $sum = 0;
    for ($i = 0; $i < 100000000; $i++) {
        $sum += $i;
    }    
    echo $sum . "\n";
?>
```

## Tests

```bash
time php index.php

# 4999999950000000
#
# real    0m0.597s
# user    0m0.593s
# sys     0m0.003s
```