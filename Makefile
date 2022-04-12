all: code.o main.o
	gcc code.o main.o -o main -fno-pie -no-pie -g 

code.o: code.asm
	yasm -f elf64 code.asm -o code.o -g dwarf2

main.o: main.c
	gcc main.c -c -o main.o

clean:
	rm *.o main
