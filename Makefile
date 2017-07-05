all: test

test: mul.o main.o
	gcc -o test mul.o main.o

mul.o: mul.c mul.h
	gcc -c -o mul.o mul.c

main.o: main.c mul.h
	gcc -c -o main.o main.c

clean:
	rm *.o test
