CC=gcc
CFLAGS=-I.

all : sequential_MM parallel_MM launch_seq


sequential_MM : utils.o find_min_max.o utils.h find_min_max.h sequential_min_max.c
	$(CC) -o sequential_MM find_min_max.o utils.o sequential_min_max.c $(CFLAGS)

parallel_MM : utils.o find_min_max.o utils.h find_min_max.h parallel_min_max.c
	$(CC) -o parallel_MM utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

launch_seq: launch_seq.c
	$(CC) -o launch_seq launch_seq.c $(CFLAGS)
  

utils.o : utils.h utils.c
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h find_min_max.c
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)


clean :
	rm utils.o find_min_max.o sequential_MM parallel_MM
