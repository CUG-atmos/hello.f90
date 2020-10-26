program cluster
    implicit none
    ! , INTENT(IN)
    INTEGER, dimension(10,10,10) ::idCluster
    INTEGER, dimension(3) :: dim
    INTEGER :: ntime, nC
    INTEGER :: nCellInte = 1
    
    dim = shape(idCluster)
    ntime = dim(3)

    print *, dim, ntime
  ! do t=2,ntime
  !   do i=1,nC(t)
  !     if (cno(t,i) == -9) cycle
  !     do j=1,nC(t-1) ! 上一时刻所有cluster
  !       if (cno(t-1,j) == -9) cycle
  !       ncInter = count ( idCluster(:,:,t) == cno(t,i) .and. idCluster(:,:,t-1) == cno(t-1,j) )
  !       if ( ncInter >= nCellInter ) then
  !         ! renumber all from 1 to t, 为何是1:t?
  !         where ( idCluster(:,:,1:t) == cno(t-1,j) ) idCluster(:,:,1:t) =  cno(t,i) ! 空间上编号更新
  !         ! rename cluster id from cno
  !         where ( cno(1:t,:) == cno(t-1,j) ) cno(1:t,:) = cno(t,i) ! 更新成现在的编号
  !       end if
  !     end do
  !   end do
  ! end do
end program cluster


! get nC from idCluster
! function get_
