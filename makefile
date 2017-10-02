VPATH = src
objects = main.o ConsistentHash.o md5.o MD5HashFunc.o Node.o
		 
conHash: $(objects)
	g++ -std=c++11 -o conHash $(objects)
main.o: ConsistentHash.h
	g++ -std=c++11 -c main.cpp
ConsistentHash.o: ConsistentHash.h
	g++ -std=c++11 -c src/ConsistentHash.cpp
md5.o: md5.h
MD5HashFunc.o: MD5HashFunc.h
	g++ -std=c++11 -c src/MD5HashFunc.cpp
Node.o: Node.h

.PHONY: clean
clean:
	-rm conHash main.o ConsistentHash.o md5.o MD5HashFunc.o Node.o
