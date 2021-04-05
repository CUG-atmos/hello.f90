cmake_minimum_required(VERSION 3.0.0)
project(hello.f90 VERSION 0.1.0)

enable_language(Fortran)
# include(CTest)
# enable_testing()


# all:	
# 	gfortran ${FFLAG} struct.f90 -o main.exe
	# ./main.exe
add_executable(main.exe src/struct.f90)
add_executable(add2.exe src/main.f90 src/add2.f90)

set (NETCDF_F90 "YES")
# set (NETCDF_F77 "YES")
include(cmake/FindNetCDF.cmake)
find_package(NETCDF REQUIRED)
# find_package (NetCDF REQUIRED)
include_directories(${NETCDF_INCLUDES_F90})
# target_link_libraries (${NETCDF_LIBRARIES_F90})
# message("${NETCDF_LIBRARIES} ${NETCDF_LIBRARIES_F90}")
add_executable(netcdf.exe netcdf/read_ncdf.f90 )
target_link_libraries (netcdf.exe ${NETCDF_LIBRARIES_F90})
# target_link_libraries (netcdf.exe ${NETCDF_LIBRARIES})

# message("${NETCDF_LIBRARIES_F90}")
# message("${NETCDF_LIBRARIES_F90}")

# NETCDF=/opt/anaconda3
# FFLAGS = -I${NETCDF}/include -g
# LIB = -L${NETCDF}/lib -lnetcdf -lnetcdff

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)
