P = packihx
S = sdcc
all:Computer.hex
.PHONY: clean

clean:
	rm *.sym
	rm *.rel
	rm *.lst
	rm *.asm
	rm *.lib
	rm *.ihx
	rm *lk
	rm *.map
	rm *.mem
	rm *.rst
	rm *.hex
Computer.hex:Computer.ihx
	$(P) Computer.ihx > Computer.hex
Computer.ihx:Computer.C myIO.lib
	$(S) Computer.c myIO.lib
myIO.lib: Keypad.ihx Display.ihx
	sdar -o myIO.lib -rc Display.rel Keypad.rel
Keypad.ihx:Keypad.C
	$(S) -c Keypad.c
Display.ihx:Display.C
	$(S) -c Display.c

