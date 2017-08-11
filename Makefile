# file Makefile
CC= gcc
RM= rm -vf
CFLAGS= -Wall -g
.PHONY: all clean

all : ext2_ls ext2_cp
ext2_ls : ext2_ls.o
		$(CC) $(CFLAGS) -o ext2_ls $^
ext2_cp : ext2_cp.o
		$(CC) $(CFLAGS) -o ext2_cp $^

%.o : %.c ext2.h shared.h
		$(CC) $(CFLAGS) -c $<

clean :
		$(RM) *.o ext2_ls ext2_cp *~
## eof Makefile
