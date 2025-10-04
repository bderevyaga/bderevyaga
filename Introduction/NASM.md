# NASM

## Install

```bash
apt-get update && apt-get install -y nasm build-essential
```

## Version

```bash
nasm -v

# NASM version 2.16.01
```

## Code

```text
section .data
    newline db 10

section .bss
    sum resq 1              ; Variable to store the sum

section .text
    global _start

_start:
    mov rax, 0              ; rax will be used to store the sum
    mov rcx, 0              ; counter starting from 0

.loop:
    add rax, rcx            ; add rcx to rax
    inc rcx                 ; increment rcx by 1
    cmp rcx, 100000000      ; check if rcx reached 100,000,000
    jne .loop               ; if not, repeat the loop

    mov [sum], rax          ; store the result in the variable sum

    ; Convert the result to decimal format and output
    mov rax, [sum]
    call print_number       ; call the function to print the number

    ; Output a newline
    mov rax, 1              ; syscall: write
    mov rdi, 1              ; file descriptor: stdout
    mov rsi, newline        ; address of the newline character
    mov rdx, 1              ; length of the newline
    syscall

    ; Exit the program
    mov rax, 60             ; syscall: exit
    xor rdi, rdi            ; return status 0
    syscall

print_number:
    mov rbx, 10             ; base (decimal system)
    mov rcx, 0              ; digit counter
    mov rsi, rsp            ; pointer to the top of the stack

.convert_loop:
    xor rdx, rdx
    div rbx                 ; rax = rax / 10, rdx = rax % 10
    add dl, '0'             ; convert remainder to character
    dec rsi                 ; decrement pointer
    mov [rsi], dl           ; store character on the stack
    inc rcx                 ; increment counter
    test rax, rax           ; check if rax = 0
    jnz .convert_loop       ; if not, repeat the loop

    ; Output the number from the buffer
    mov rax, 1              ; syscall: write
    mov rdi, 1              ; file descriptor: stdout
    mov rdx, rcx            ; length of the string
    syscall

    ret
```

## Tests

```bash
nasm -f elf64 -o index.o index.asm
ld -o index index.o
time ./index

# 4999999950000000
#
# real    0m0.040s
# user    0m0.040s
# sys     0m0.001s
```