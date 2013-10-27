
#CC = gcc -O3
CC = icc -mmic -O3 

#INC = 
#LIB = 

SRC = stride.c
EXE = stride

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE)
