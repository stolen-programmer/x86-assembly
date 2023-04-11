.PHONY: clean, boot

boot: master.img
	bochsdbg -q

%.bin: %.asm
	nasm $< -o $@

dd.exe: ../dd/dd.cpp 
	$(MAKE) -C ../dd 
	cmake -E copy ../dd/dd.exe .

master.img: operator.bin dd.exe
	dd $< master.img 

clean:
	$(MAKE) -C ../dd clean
	cmake -E rm -rf dd.exe *.bin

