.PHONY: clean, boot

boot: master.img dd.exe 
	bochsdbg -q

%.bin: %.asm
	nasm $< -o $@

dd.exe: ../dd/dd.cpp 
	$(MAKE) -C ../dd 
	cmake -E copy ../dd/dd.exe .

master.img: loop.bin
	dd $< master.img 

clean:
	$(MAKE) -C ../dd clean
	cmake -E rm -rf dd.exe *.bin

