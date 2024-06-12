P = packihx
S = sdcc
all:Computer.hex
.PHONY: clean

clean:
	del *.sym
	del *.rel
	del *.lst
	del *.asm
	del *.lib
	del *.ihx
	del *lk
	del *.map
	del *.mem
	del *.rst
	del *.hex
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

