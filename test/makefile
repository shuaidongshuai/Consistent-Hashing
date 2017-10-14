LIB = ../lib
objects = main.o
		
all: $(objects)

%.o: %.cpp
	g++ -std=c++11 -c $< -o $(LIB)/$@  

.PHONY: clean
clean:
	-rm $(LIB)/main.o