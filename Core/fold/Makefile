
CC = icc -O3 -openmp -mmic -fasm-blocks -vec-report6 
#CC = gcc -O3 -fopenmp

#INC = 
#LIB = 

SRC = flops.c
EXE = flops

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE) *~
