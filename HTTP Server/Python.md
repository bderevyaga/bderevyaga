# HTTP

## Code

```python
from http.server import BaseHTTPRequestHandler, HTTPServer


class HTTPHandler(BaseHTTPRequestHandler):
    def log_message(self, format, *args):
        pass

    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-Length', '12')
        self.end_headers()
        self.wfile.write(b'Hello World!')


with HTTPServer(('', 8080), HTTPHandler) as server:
    server.serve_forever()
```

## AutoCannon

```shell
autocannon -c 100 -d 5 -p 10 http://localhost:8080
```

Running 5s test @ http://localhost:8080 \
100 connections with 10 pipelining factor

```text
┌─────────┬───────┬────────┬─────────┬─────────┬───────────┬───────────┬─────────┐
│ Stat    │ 2.5%  │ 50%    │ 97.5%   │ 99%     │ Avg       │ Stdev     │ Max     │
├─────────┼───────┼────────┼─────────┼─────────┼───────────┼───────────┼─────────┤
│ Latency │ 62 ms │ 558 ms │ 3540 ms │ 3757 ms │ 760.96 ms │ 804.62 ms │ 4146 ms │
└─────────┴───────┴────────┴─────────┴─────────┴───────────┴───────────┴─────────┘
┌───────────┬────────┬────────┬────────┬────────┬────────┬─────────┬────────┐
│ Stat      │ 1%     │ 2.5%   │ 50%    │ 97.5%  │ Avg    │ Stdev   │ Min    │
├───────────┼────────┼────────┼────────┼────────┼────────┼─────────┼────────┤
│ Req/Sec   │ 4519   │ 4519   │ 5395   │ 5591   │ 5264.4 │ 385.32  │ 4518   │
├───────────┼────────┼────────┼────────┼────────┼────────┼─────────┼────────┤
│ Bytes/Sec │ 556 kB │ 556 kB │ 664 kB │ 688 kB │ 648 kB │ 47.4 kB │ 556 kB │
└───────────┴────────┴────────┴────────┴────────┴────────┴─────────┴────────┘
```

Req/Bytes counts sampled once per second.

26k requests in 5.03s, 3.24 MB read \
14k errors (0 timeouts)

# TCP

## Code

```python
from socketserver import BaseRequestHandler, TCPServer


class TCPHandler(BaseRequestHandler):
    def handle(self):
        self.request.sendall(b'HTTP/1.1 200\r\nContent-Length: 12\r\n\r\nHello world!')


with TCPServer(('', 8080), TCPHandler) as server:
    server.serve_forever()
```

## AutoCannon

```shell
autocannon -c 100 -d 5 -p 10 http://localhost:8080
```

Running 5s test @ http://localhost:8080 \
100 connections with 10 pipelining factor

```text
┌─────────┬────────┬─────────┬─────────┬─────────┬────────────┬────────────┬─────────┐
│ Stat    │ 2.5%   │ 50%     │ 97.5%   │ 99%     │ Avg        │ Stdev      │ Max     │
├─────────┼────────┼─────────┼─────────┼─────────┼────────────┼────────────┼─────────┤
│ Latency │ 241 ms │ 2198 ms │ 4356 ms │ 4424 ms │ 2227.98 ms │ 1244.43 ms │ 4642 ms │
└─────────┴────────┴─────────┴─────────┴─────────┴────────────┴────────────┴─────────┘
┌───────────┬────────┬────────┬────────┬────────┬────────┬─────────┬────────┐
│ Stat      │ 1%     │ 2.5%   │ 50%    │ 97.5%  │ Avg    │ Stdev   │ Min    │
├───────────┼────────┼────────┼────────┼────────┼────────┼─────────┼────────┤
│ Req/Sec   │ 6275   │ 6275   │ 7195   │ 7323   │ 6999.6 │ 377.5   │ 6274   │
├───────────┼────────┼────────┼────────┼────────┼────────┼─────────┼────────┤
│ Bytes/Sec │ 301 kB │ 301 kB │ 345 kB │ 351 kB │ 336 kB │ 18.1 kB │ 301 kB │
└───────────┴────────┴────────┴────────┴────────┴────────┴─────────┴────────┘
```

Req/Bytes counts sampled once per second.

35k requests in 5.04s, 1.68 MB read \
36k errors (0 timeouts)