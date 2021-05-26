CC=gcc
CFLAGS=-I.

all : parallel_MM Zombie process_memory parallel_sum


parallel_MM : utils.o find_min_max.o utils.h find_min_max.h parallel_min_max.c
	$(CC) -o parallel_MM utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

utils.o : utils.h utils.c
	@$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.o find_min_max.h find_min_max.c
	@$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

parallel_sum: parallel_sum.c sum.o utils.o
	@$(CC) -o parallel_sum utils.o sum.o parallel_sum.c -lpthread $(CFLAGS)

process_memory : process_memory.c
	@$(CC) process_memory.c -o process_memory $(CFLAGS)

sum.o : sum.h sum.c
	$(CC) -o sum.o -c sum.c $(CFLAGS)

clean :
	rm utils.o find_min_max.o parallel_MM Zombie process_memory parallel_sum