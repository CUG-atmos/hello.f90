# setting the path of netcdf.mod
# -lnetcdf 

# FFLAGS and LIB should be separated
NETCDF=/opt/anaconda3
FFLAGS = -I${NETCDF}/include -g
LIB = -L${NETCDF}/lib -lnetcdf -lnetcdff

all:
	@echo "hello"
	@echo ${LD_LIBRARY_PATH}
	gfortran read_ncdf.f90 ${FFLAGS} ${LIB} -o main.exe
	# ./main.exe
