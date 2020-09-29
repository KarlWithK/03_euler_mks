.POSIX:
CC= gcc
OBJECTS= main.o
CFLAGS= -lm

run: main
	./main

main: $(OBJECTS)
	$(CC) -o main $(OBJECTS) $(CFLAGS)

main.o: main.c
	$(CC) -c main.c

clean:
	rm *.o
