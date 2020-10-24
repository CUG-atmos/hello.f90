

program hello

  implicit none
  integer::t
  integer::nMonths = 1
  real::z

  ! [...]
  interface add2
    function add2(x, y)
      real, intent(in)::x
      real, intent(in)::y
      real::add2
    end function
  end interface

  ! ---------------------------------
  do t=2,nMonths
    print *, t
  end do
  
  z = add2(1.0, 1.0)
  print *, z
  call say
end program hello
