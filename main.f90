real function add2(x, y)
  implicit none
  real, intent(in)::x
  real, intent(in)::y
  add2 = x + y
end

subroutine add3(x, y, z)
  implicit none
  real, intent(in)::x
  real, intent(in)::y
  real, intent(out)::z
  z = x + y  
end

program hello

  implicit none
  integer::t
  integer::nMonths = 1
  real::z = 0.0

  ! FUNCTIONS 
  real::add2
  ! real::add3

  ! [...]
  ! interface add2
  !   function add2(x, y)
  !     real, intent(in)::x
  !     real, intent(in)::y
  !     real::add2
  !   end function
  ! end interface
  
  ! ---------------------------------
  do t=2,nMonths
    print *, t
  end do
  
  z = add2(1.0, 1.0)
  call add3(2.0, 1.0, z)
  print *, z
  ! call say
end program hello
