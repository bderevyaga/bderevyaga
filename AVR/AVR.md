## Install

```bash
brew install avrdude
brew tap osx-cross/avr
brew install avr-gcc
```

### Makefile

```text
CC := avr-gcc
MCU := atmega8

flash: index.hex
	avrdude -c usbasp -p m8 -U flash:w:index.hex

index.hex: index.elf
	avr-objcopy -j .text -j .data -O ihex index.elf index.hex

index.elf: index.c
	$(CC) -mmcu=atmega8 -Wall -Os -o index.elf index.c -DF_CPU=1000000UL

clean:
	rm -rf *.hex *.elf *.o
```

## Code

```c
#include <avr/io.h>
#include <util/delay.h>

int main(void) {
  DDRB = DDRB | (1 << PB0);

  while (1) {
    _delay_ms(1000);
    PORTB = PORTB ^ (1 << PB0);
  }
}
```

## Deploy

```bash
make flash
```