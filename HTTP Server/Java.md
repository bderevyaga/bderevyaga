# HTTP

## Code

```java
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

public class http {
    public static void main(String[] args) throws Exception {
        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);

        server.createContext("/", new MyHandler());
        server.setExecutor(null);
        server.start();
    }

    static class MyHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange t) throws IOException {
            String response = "Hello World!";

            t.sendResponseHeaders(200, response.length());

            OutputStream os = t.getResponseBody();

            os.write(response.getBytes());
            os.close();
        }
    }
}
```

## AutoCannon

```shell
autocannon -c 100 -d 5 -p 10 http://localhost:8080
```

Running 5s test @ http://localhost:8080 \
100 connections with 10 pipelining factor

```text
┌─────────┬──────┬──────┬───────┬───────┬─────────┬─────────┬────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%   │ Avg     │ Stdev   │ Max    │
├─────────┼──────┼──────┼───────┼───────┼─────────┼─────────┼────────┤
│ Latency │ 4 ms │ 9 ms │ 14 ms │ 17 ms │ 9.06 ms │ 3.86 ms │ 117 ms │
└─────────┴──────┴──────┴───────┴───────┴─────────┴─────────┴────────┘
┌───────────┬─────────┬─────────┬────────┬────────┬──────────┬─────────┬─────────┐
│ Stat      │ 1%      │ 2.5%    │ 50%    │ 97.5%  │ Avg      │ Stdev   │ Min     │
├───────────┼─────────┼─────────┼────────┼────────┼──────────┼─────────┼─────────┤
│ Req/Sec   │ 92799   │ 92799   │ 107967 │ 111359 │ 104377.6 │ 6981.06 │ 92756   │
├───────────┼─────────┼─────────┼────────┼────────┼──────────┼─────────┼─────────┤
│ Bytes/Sec │ 8.17 MB │ 8.17 MB │ 9.5 MB │ 9.8 MB │ 9.18 MB  │ 614 kB  │ 8.17 MB │
└───────────┴─────────┴─────────┴────────┴────────┴──────────┴─────────┴─────────┘
```

Req/Bytes counts sampled once per second.

522k requests in 5.04s, 45.9 MB read