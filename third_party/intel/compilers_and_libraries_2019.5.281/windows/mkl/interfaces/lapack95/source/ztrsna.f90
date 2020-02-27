!===============================================================================
! Copyright 2005-2019 Intel Corporation.
!
! This software and the related documents are Intel copyrighted  materials,  and
! your use of  them is  governed by the  express license  under which  they were
! provided to you (License).  Unless the License provides otherwise, you may not
! use, modify, copy, publish, distribute,  disclose or transmit this software or
! the related documents without Intel's prior written permission.
!
! This software and the related documents  are provided as  is,  with no express
! or implied  warranties,  other  than those  that are  expressly stated  in the
! License.
!===============================================================================

!  Content:
!      F95 interface for LAPACK routines
!*******************************************************************************
! This file was generated automatically!
!*******************************************************************************

PURE SUBROUTINE ZTRSNA_F95(T,S,SEP,VL,VR,SELECT,M,INFO)
    ! Fortran77 call:
    ! ZTRSNA(JOB,HOWMNY,SELECT,N,T,LDT,VL,LDVL,VR,LDVR,S,SEP,MM,M,WORK,
    !   LDWORK,RWORK,INFO)
    ! <<< Use statements >>>
    USE F77_LAPACK, ONLY: F77_TRSNA, F77_XERBLA
    ! <<< Implicit statement >>>
    IMPLICIT NONE
    ! <<< Kind parameter >>>
    INTEGER, PARAMETER :: WP = KIND(1.0D0)
    ! <<< Scalar arguments >>>
    INTEGER, INTENT(OUT), OPTIONAL :: M
    INTEGER, INTENT(OUT), OPTIONAL :: INFO
    ! <<< Array arguments >>>
    COMPLEX(WP), INTENT(IN) :: T(:,:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: S(:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: SEP(:)
    ! VL: INOUT intent instead of IN because PURE.
    COMPLEX(WP), INTENT(INOUT), OPTIONAL, TARGET :: VL(:,:)
    ! VR: INOUT intent instead of IN because PURE.
    COMPLEX(WP), INTENT(INOUT), OPTIONAL, TARGET :: VR(:,:)
    ! SELECT: INOUT intent instead of IN because PURE.
    LOGICAL, INTENT(INOUT), OPTIONAL, TARGET :: SELECT(:)
    ! <<< Local declarations >>>
    ! <<< Parameters >>>
    CHARACTER(LEN=5), PARAMETER :: SRNAME = 'TRSNA'
    ! <<< Local scalars >>>
    INTEGER :: O_M
    INTEGER :: O_INFO
    CHARACTER(LEN=1) :: JOB
    CHARACTER(LEN=1) :: HOWMNY
    INTEGER :: N
    INTEGER :: LDT
    INTEGER :: LDVL
    INTEGER :: LDVR
    INTEGER :: MM
    INTEGER :: LDWORK
    INTEGER :: L_STAT_ALLOC, L_STAT_DEALLOC
    ! <<< Local arrays >>>
    REAL(WP), POINTER :: O_S(:)
    REAL(WP), POINTER :: O_SEP(:)
    COMPLEX(WP), POINTER :: O_VL(:,:)
    COMPLEX(WP), POINTER :: O_VR(:,:)
    LOGICAL, POINTER :: O_SELECT(:)
    COMPLEX(WP), POINTER :: WORK(:,:)
    REAL(WP), POINTER :: RWORK(:)
    ! <<< Stubs to "allocate" optional arrays >>>
    LOGICAL, TARGET :: L_A1_LOGI(1)
    REAL(WP), TARGET :: L_A1_REAL(1)
    COMPLEX(WP), TARGET :: L_A2_COMP(1,1)
    ! <<< Intrinsic functions >>>
    INTRINSIC MAX, PRESENT, SIZE
    ! <<< Executable statements >>>
    ! <<< Init optional and skipped scalars >>>
    IF(PRESENT(SELECT)) THEN
        HOWMNY = 'S'
    ELSE
        HOWMNY = 'A'
    ENDIF
    IF(.NOT.(PRESENT(S).AND.PRESENT(VL).AND.PRESENT(VR))) THEN
        IF(PRESENT(S).OR.PRESENT(VL).OR.PRESENT(VR)) THEN
            O_INFO=-1001; GOTO 1001
        ENDIF
    ENDIF
    IF(PRESENT(S).AND.PRESENT(SEP)) THEN
        JOB = 'B'
    ELSEIF(PRESENT(S)) THEN
        JOB = 'E'
    ELSEIF(PRESENT(SEP)) THEN
        JOB = 'V'
    ELSE
        O_INFO=-1001; GOTO 1001
    ENDIF
    LDT = MAX(1,SIZE(T,1))
    IF(PRESENT(VL)) THEN
        LDVL = MAX(1,SIZE(VL,1))
    ELSE
        LDVL = 1
    ENDIF
    IF(PRESENT(VR)) THEN
        LDVR = MAX(1,SIZE(VR,1))
    ELSE
        LDVR = 1
    ENDIF
    IF(PRESENT(S)) THEN
        MM = SIZE(S)
    ELSE
        MM = SIZE(SEP)
    ENDIF
    N = SIZE(T,2)
    IF(PRESENT(SEP)) THEN
        LDWORK = N
    ELSE
        LDWORK = 1
    ENDIF
    ! <<< Init allocate status >>>
    L_STAT_ALLOC = 0
    ! <<< Allocate local and work arrays >>>
    IF(PRESENT(S)) THEN
        O_S => S
    ELSE
        O_S => L_A1_REAL
    ENDIF
    IF(PRESENT(SELECT)) THEN
        O_SELECT => SELECT
    ELSE
        O_SELECT => L_A1_LOGI
    ENDIF
    IF(PRESENT(SEP)) THEN
        O_SEP => SEP
    ELSE
        O_SEP => L_A1_REAL
    ENDIF
    IF(PRESENT(VL)) THEN
        O_VL => VL
    ELSE
        O_VL => L_A2_COMP
    ENDIF
    IF(PRESENT(VR)) THEN
        O_VR => VR
    ELSE
        O_VR => L_A2_COMP
    ENDIF
    ALLOCATE(RWORK(N), STAT=L_STAT_ALLOC)
    IF(L_STAT_ALLOC==0) THEN
        ALLOCATE(WORK(LDWORK,N+1), STAT=L_STAT_ALLOC)
    ENDIF
    ! <<< Call lapack77 routine >>>
    IF(L_STAT_ALLOC==0) THEN
        CALL F77_TRSNA(JOB,HOWMNY,O_SELECT,N,T,LDT,O_VL,LDVL,O_VR,LDVR, &
     &                        O_S,O_SEP,MM,O_M,WORK,LDWORK,RWORK,O_INFO)
    ELSE; O_INFO = -1000
    ENDIF
    ! <<< Set output optional scalar parameters >>>
    IF(PRESENT(M)) THEN
        M = O_M
    ENDIF
    ! <<< Deallocate local and work arrays >>>
    DEALLOCATE(RWORK, STAT=L_STAT_DEALLOC)
    DEALLOCATE(WORK, STAT=L_STAT_DEALLOC)
1001    CONTINUE
    ! <<< Error handler >>>
    IF(PRESENT(INFO)) THEN
        INFO = O_INFO
    ELSEIF(O_INFO <= -1000) THEN
        CALL F77_XERBLA(SRNAME,-O_INFO)
    ENDIF
END SUBROUTINE ZTRSNA_F95