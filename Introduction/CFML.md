# CFML

## Install

```bash
apt-get update && apt-get install -y curl unzip default-jre && \
curl -fsSL https://www.ortussolutions.com/parent/download/commandbox/type/bin -o /tmp/commandbox.zip && \
unzip /tmp/commandbox.zip -d /usr/local/bin && chmod +x /usr/local/bin/box
```

## Version

```bash
box version
```

## Code

```cfml
<cfscript>
n = 100000000;
writeOutput((n * (n - 1)) / 2);
</cfscript>
```

## Tests

```bash
box server start cfengine=lucee@5 && curl http://127.0.0.1:8080/main.cfm
# 4999999950000000
```
