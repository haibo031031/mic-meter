
#CC = gcc -O3 -fopenmp
#CC = icc -mmic -O3 -openmp -vec-report6
CC = icc -mmic -O3 -openmp -opt-report1  -no-opt-prefetch 

#INC = 
#LIB = 

SRC = cache_bw.c
EXE = cache_bw

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE) *.dat
