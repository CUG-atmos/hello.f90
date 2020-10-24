
FFLAG = -g

all:	
	gfortran ${FFLAG} -c src/add2.f90
	gfortran ${FFLAG} main.f90 say.o -o main.exe
	./main.exe

clean:
	@rm *.o *.exe
