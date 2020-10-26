
FFLAG = -g

# all:	
# 	gfortran ${FFLAG} -c src/add2.f90
# 	gfortran ${FFLAG} main.f90 add2.o -o main.exe
# 	./main.exe

all:	
	gfortran ${FFLAG} struct.f90 -o main.exe
	./main.exe

clean:
	@rm *.o *.exe *.mod *.out
