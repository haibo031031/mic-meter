
#CC = gcc -O3 -fopenmp
CC = icc -mmic -openmp -O3 -vec-report6 
#INC = 
#LIB = 

SRC = write.c
EXE = write

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE) *.dat *.dump
