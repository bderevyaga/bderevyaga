# COBOL

## Install

```bash
apt-get update && apt-get install -y gnucobol4
```

## Version

```bash
cobc -v

#cobc (GnuCOBOL) 4.0-early-dev.0
#Built     Mar 31 2024 06:15:26  
#Packaged  Jun 06 2020 20:56:36 UTC
#C version "13.2.0"
```

## Code

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUMLOOP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-SUM   PIC 9(16) VALUE 0.
       77 I     PIC 9(18) VALUE 0.
       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 0 BY 1 UNTIL I = 100000000
               ADD I TO WS-SUM
           END-PERFORM
           DISPLAY WS-SUM
           STOP RUN.
```

## Tests

```bash
cobc -x index.cob && time ./index

# 4999999950000000

# real    0m27.449s
# user    0m27.437s
# sys     0m0.002s
```
