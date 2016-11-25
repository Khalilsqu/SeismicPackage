!!------------------------ clip_wrap.f90 --------------------------!!
!!------------------------ clip_wrap.f90 --------------------------!!
!!------------------------ clip_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module clip_wrap_module
      use clip_module
      implicit none
      public

      type :: clip_wrap_struct
        type(clip_struct),pointer :: obj
      end type clip_wrap_struct

      end module clip_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine clip_wrap_create (fpoint)  
      use clip_wrap_module
      implicit none
      type(clip_wrap_struct),intent(out)   :: fpoint
      type(clip_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call clip_create (obj)
      fpoint%obj => obj

      end subroutine clip_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine clip_wrap_delete (fpoint)   
      use clip_wrap_module
      implicit none
      type(clip_wrap_struct),intent(inout) :: fpoint
      type(clip_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call clip_delete (obj)
      fpoint%obj => obj

      end subroutine clip_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine clip_wrap_update (fpoint)     
      use clip_wrap_module
      implicit none
      type(clip_wrap_struct),intent(inout) :: fpoint
      type(clip_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call clip_update (obj)

      end subroutine clip_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine clip_wrap_wrapup (fpoint)      
      use clip_wrap_module
      implicit none
      type(clip_wrap_struct),intent(inout) :: fpoint
      type(clip_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call clip_wrapup (obj)

      end subroutine clip_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine clip_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use clip_wrap_module
      implicit none
      type(clip_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(clip_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call clip (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine clip_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine clip_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use clip_wrap_module
      implicit none
      type(clip_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(clip_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call clip (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine clip_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!