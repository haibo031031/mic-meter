
#CC = gcc -O3 -fopenmp
CC = icc -mmic -openmp -O3
#INC = 
#LIB = 

SRC = read.c
EXE = read

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE) *.dat *.dump
