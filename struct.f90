! ``STRUCTURE /name/ ... END STRUCTURE'' becomes
! ``TYPE name ... END TYPE''
module kind
    implicit none
    
    TYPE item
    INTEGER id
    CHARACTER(LEN=200) description
    REAL price
    END TYPE
    
    contains
    subroutine show(pear)
        TYPE(item), intent(IN):: pear
        print *, pear%description, pear%id
    end

    subroutine add(pear)
        TYPE(item), intent(INOUT):: pear
        pear%id = pear%id + 1
        ! call show(pear)
    end
end module kind


program hello
    use kind
    implicit none
    
    ! ``RECORD /name/ variable'' becomes ``TYPE(name) variable''
    TYPE(item) pear, store_catalog(100)
    INTEGER, dimension(3, 2)::x = (/ 1, 1, 2, 2, 3, 3 /)
    ! (/1, 2, 3/), /1, 2, 3/)
    ! size,
    ! print *, shape(x)
    print *, shape(x)
    print *, size(x) ! length

    ! Instead of using a dot (.) to access fields of a record, the
    ! standard syntax uses a percent sign (%)
    pear%id = 92316
    pear%description = "juicy D'Anjou pear"
    pear%price = 0.15
    store_catalog(7)%id = 7831
    store_catalog(7)%description = "milk bottle"
    store_catalog(7)%price = 1.2

    ! Assignments of a whole variable do not change
    store_catalog(12) = pear
    call add(pear)
    call show(pear)
    ! print *, store_catalog(12)
end program hello


