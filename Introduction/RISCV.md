# RISC-V

## Install

```bash
apt-get update && apt-get install -y gcc-riscv64-linux-gnu qemu-user
```

## Version

```bash
riscv64-linux-gnu-gcc --version
```

## Code

```asm
.section .rodata
format: .string "%ld\n"

.text
.globl main
main:
    addi sp, sp, -16
    sd ra, 8(sp)
    li t0, 100000000
    addi t1, t0, -1
    mul a1, t0, t1
    li t2, 2
    div a1, a1, t2
    la a0, format
    call printf
    li a0, 0
    ld ra, 8(sp)
    addi sp, sp, 16
    ret
```

## Tests

```bash
riscv64-linux-gnu-gcc -static main.S -o main && qemu-riscv64 ./main
# 4999999950000000
```
