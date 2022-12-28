# HTTP

## Code

```javascript
const http = require('http');

const {pid, env} = process;

const {
  PORT = 8080
} = env;

http
  .createServer((_, res) => {
    res.end('Hello World!!');
  })
  .listen(PORT, () => {
    console.log(`Servere started PID: ${pid}, PORT: ${PORT}`);
  });
```

## AutoCannon

```shell
autocannon -c 100 -d 5 -p 10 http://localhost:8080
```

Running 5s test @ http://localhost:8080 \
100 connections with 10 pipelining factor

```text
┌─────────┬──────┬───────┬───────┬───────┬──────────┬─────────┬───────┐
│ Stat    │ 2.5% │ 50%   │ 97.5% │ 99%   │ Avg      │ Stdev   │ Max   │
├─────────┼──────┼───────┼───────┼───────┼──────────┼─────────┼───────┤
│ Latency │ 5 ms │ 11 ms │ 16 ms │ 20 ms │ 10.87 ms │ 4.68 ms │ 87 ms │
└─────────┴──────┴───────┴───────┴───────┴──────────┴─────────┴───────┘
┌───────────┬─────────┬─────────┬─────────┬─────────┬─────────┬────────┬─────────┐
│ Stat      │ 1%      │ 2.5%    │ 50%     │ 97.5%   │ Avg     │ Stdev  │ Min     │
├───────────┼─────────┼─────────┼─────────┼─────────┼─────────┼────────┼─────────┤
│ Req/Sec   │ 73855   │ 73855   │ 92223   │ 92863   │ 88057.6 │ 7230.2 │ 73815   │
├───────────┼─────────┼─────────┼─────────┼─────────┼─────────┼────────┼─────────┤
│ Bytes/Sec │ 8.42 MB │ 8.42 MB │ 10.5 MB │ 10.6 MB │ 10 MB   │ 823 kB │ 8.41 MB │
└───────────┴─────────┴─────────┴─────────┴─────────┴─────────┴────────┴─────────┘
```

Req/Bytes counts sampled once per second.

440k requests in 5.04s, 50.2 MB read

# TCP

## Code 

```javascript
const net = require('net');

const {pid, env} = process;

const {
  PORT = 8080
} = env;

net.createServer(connection => {
    connection.on('data',  () => {
      connection.write('HTTP/1.1 200\r\nContent-Length: 12\r\n\r\nHello world!');
    });

    connection.on('error', () => {});
  })
  .listen(PORT, () => {
    console.log(`Server started PID: ${pid}, PORT: ${PORT}`);
  });
```

## AutoCannon

```shell
autocannon -c 100 -d 5 -p 10 http://localhost:8080
```

Running 5s test @ http://localhost:8080 \
100 connections with 10 pipelining factor

```text
┌─────────┬───────┬───────┬───────┬───────┬──────────┬─────────┬────────┐
│ Stat    │ 2.5%  │ 50%   │ 97.5% │ 99%   │ Avg      │ Stdev   │ Max    │
├─────────┼───────┼───────┼───────┼───────┼──────────┼─────────┼────────┤
│ Latency │ 11 ms │ 16 ms │ 22 ms │ 35 ms │ 17.32 ms │ 4.96 ms │ 115 ms │
└─────────┴───────┴───────┴───────┴───────┴──────────┴─────────┴────────┘
┌───────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│ Stat      │ 1%      │ 2.5%    │ 50%     │ 97.5%   │ Avg     │ Stdev   │ Min     │
├───────────┼─────────┼─────────┼─────────┼─────────┼─────────┼─────────┼─────────┤
│ Req/Sec   │ 48703   │ 48703   │ 58047   │ 59839   │ 56099.2 │ 3921.15 │ 48677   │
├───────────┼─────────┼─────────┼─────────┼─────────┼─────────┼─────────┼─────────┤
│ Bytes/Sec │ 2.34 MB │ 2.34 MB │ 2.79 MB │ 2.87 MB │ 2.69 MB │ 189 kB  │ 2.34 MB │
└───────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┘
```

Req/Bytes counts sampled once per second.

281k requests in 5.04s, 13.5 MB read