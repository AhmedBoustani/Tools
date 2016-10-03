# This is a template for a Makefile

CC=  #Here you put compiler: gcc or g++
CFLAGS=  #Here you put all options for the compiler

default:  #Names of the binaries that are to be compiled by default

prog: dep1.o dep2.o #dependencies (object files that the program needs)
	$(CC) $(CFLAGS) -o prog1 dep1.o dep2.o  #[dep1.o dep2.o .... depn.o]

# Repeat for each program

dep1.o: dep2.h dep1.c
	$(CC) $(CFLAGS) -c dep1.c

dep2.o: dep2.c dep2.h
	$(CC) $(CFLAGS) -c dep2.c

clean: FORCE
	/bin/rm -f *.o *.a *~ prog

FORCE:
