
#CC = gcc -O3
CC = icc -mmic -O0 -fasm-blocks

#INC = 
#LIB = 

SRC = write.c
EXE = write

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -lrt

run:
	./$(EXE)
	
clean: $(SRC)
	rm -f $(EXE)
