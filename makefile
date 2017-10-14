# VPATH = src
LIB = lib
objects = $(LIB)/main.o $(LIB)/ConsistentHash.o $(LIB)/md5.o $(LIB)/MD5HashFunc.o $(LIB)/Node.o
USR_SUB_DIR = src

all: sub_make conHash 

sub_make:
	@for n in $(USR_SUB_DIR);	\
	do $(MAKE) -C $$n;	\
	done
      
conHash:
	g++ -std=c++11 -o conHash $(objects)


.PHONY: clean
clean:
	@for n in $(USR_SUB_DIR); do $(MAKE) -C $$n clean; done
	-rm conHash
