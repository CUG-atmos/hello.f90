subroutine hello
  print *, "hello"
end subroutine

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
