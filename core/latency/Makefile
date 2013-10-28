
#CC = gcc -O3 -fopenmp
CC = icc -mmic -O0 -fasm-blocks 

#INC = 
#LIB = 

SRC = lat.c
EXE = lat

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE) *.dat *.dump
