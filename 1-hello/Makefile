.PHONY: clean, boot

boot: master.img 
	bochsdbg -q

dd.exe: ../dd/dd.cpp 
	$(MAKE) -C ../dd 
	cmake -E copy ../dd/dd.exe .

hello.bin: hello.asm
	nasm hello.asm -o hello.bin

master.img: dd.exe hello.bin
	dd hello.bin master.img 

clean:
	$(MAKE) -C ../dd clean
	cmake -E rm -rf dd.exe hello.bin

