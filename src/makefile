LIB = ../lib
objects = ConsistentHash.o md5.o MD5HashFunc.o Node.o
		
all: $(objects)

#把 *.o 放到./libs下
%.o: %.cpp
	g++ -std=c++11 -c $< -o $(LIB)/$@  

.PHONY: clean
clean:
	-rm $(LIB)/ConsistentHash.o $(LIB)/md5.o $(LIB)/MD5HashFunc.o $(LIB)/Node.o