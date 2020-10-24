subroutine say
  print *, "hello"
end subroutine

real function add2(x, y)
  implicit none
  real, intent(in)::x
  real, intent(in)::y
  add2 = x + y
end
