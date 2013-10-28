
#CC = gcc -O3 -fopenmp
CC = icc -mmic -O3
#INC = 
#LIB = 

SRC = exp.c
EXE = exp

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE) *.dat *.dump
