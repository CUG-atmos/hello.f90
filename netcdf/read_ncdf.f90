program hello
    use netcdf
    implicit none

    character(len=*), parameter :: FILE_NAME = "../data/prcp-2008-10.nc"
    integer :: status

    ! We are reading 2D data, a 6 x 12 grid.
    integer, parameter :: NX = 360, NY = 180, ntime = 248
    integer :: data_in(NY, NX)

    ! This will be the netCDF ID for the file and data variable.
    integer :: ncid, varid

    ! Loop indexes, and error handling.
    ! integer :: x, y

    ! Open the file. NF90_NOWRITE tells netCDF we want read-only access to
    ! the file.
    status = nf90_open(FILE_NAME, NF90_NOWRITE, ncid)

    ! Get the varid of the data variable, based on its name.
    status = nf90_inq_varid(ncid, "prcp", varid)
    ! Read the data.
    status = nf90_get_var(ncid, varid, data_in, (/1, 1, 1/), (/NY, NX, 1/)) ! [time, lat, lon]
    print *, data_in
    print *, "hello"
    ! print *, data_in
end program hello

subroutine fwrite(arr)
    REAL, DIMENSION(:, :), INTENT(IN)::arr
    OPEN (UNIT=12, FILE="aoutput.txt", ACTION="write", STATUS="replace")
    write (12, *) arr
end
