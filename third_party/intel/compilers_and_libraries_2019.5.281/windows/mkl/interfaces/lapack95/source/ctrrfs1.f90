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

PURE SUBROUTINE CTRRFS1_F95(A,B,X,UPLO,TRANS,DIAG,FERR,BERR,INFO)
    ! Fortran77 call:
    ! CTRRFS(UPLO,TRANS,DIAG,N,NRHS,A,LDA,B,LDB,X,LDX,FERR,BERR,WORK,
    !   RWORK,INFO)
    ! UPLO='U','L'; default: 'U'
    ! TRANS='N','C','T'; default: 'N'
    ! DIAG='N','U'; default: 'N'
    ! <<< Use statements >>>
    USE F77_LAPACK1, ONLY: F77_TRRFS
    USE F77_LAPACK, ONLY: F77_XERBLA
    ! <<< Implicit statement >>>
    IMPLICIT NONE
    ! <<< Kind parameter >>>
    INTEGER, PARAMETER :: WP = KIND(1.0E0)
    ! <<< Scalar arguments >>>
    CHARACTER(LEN=1), INTENT(IN), OPTIONAL :: UPLO
    CHARACTER(LEN=1), INTENT(IN), OPTIONAL :: TRANS
    CHARACTER(LEN=1), INTENT(IN), OPTIONAL :: DIAG
    REAL(WP), INTENT(OUT), OPTIONAL :: FERR
    REAL(WP), INTENT(OUT), OPTIONAL :: BERR
    INTEGER, INTENT(OUT), OPTIONAL :: INFO
    ! <<< Array arguments >>>
    COMPLEX(WP), INTENT(IN) :: A(:,:)
    COMPLEX(WP), INTENT(IN) :: B(:)
    COMPLEX(WP), INTENT(IN) :: X(:)
    ! <<< Local declarations >>>
    ! <<< Parameters >>>
    CHARACTER(LEN=5), PARAMETER :: SRNAME = 'TRRFS'
    ! <<< Local scalars >>>
    CHARACTER(LEN=1) :: O_UPLO
    CHARACTER(LEN=1) :: O_TRANS
    CHARACTER(LEN=1) :: O_DIAG
    INTEGER :: O_INFO
    INTEGER :: N
    INTEGER :: NRHS
    INTEGER :: LDA
    INTEGER :: LDB
    INTEGER :: LDX
    INTEGER :: L_STAT_ALLOC, L_STAT_DEALLOC
    ! <<< Local arrays >>>
    COMPLEX(WP), POINTER :: WORK(:)
    REAL(WP), POINTER :: RWORK(:)
    REAL(WP) :: R_BERR(1)
    REAL(WP) :: R_FERR(1)
    ! <<< Intrinsic functions >>>
    INTRINSIC MAX, PRESENT, SIZE
    ! <<< Executable statements >>>
    ! <<< Init optional and skipped scalars >>>
    IF(PRESENT(DIAG)) THEN
        O_DIAG = DIAG
    ELSE
        O_DIAG = 'N'
    ENDIF
    IF(PRESENT(TRANS)) THEN
        O_TRANS = TRANS
    ELSE
        O_TRANS = 'N'
    ENDIF
    IF(PRESENT(UPLO)) THEN
        O_UPLO = UPLO
    ELSE
        O_UPLO = 'U'
    ENDIF
    LDA = MAX(1,SIZE(A,1))
    LDB = MAX(1,SIZE(B,1))
    LDX = MAX(1,SIZE(X,1))
    N = SIZE(A,2)
    NRHS = 1
    ! <<< Init allocate status >>>
    L_STAT_ALLOC = 0
    ! <<< Allocate local and work arrays >>>
    ALLOCATE(RWORK(N), STAT=L_STAT_ALLOC)
    IF(L_STAT_ALLOC==0) THEN
        ALLOCATE(WORK(2*N), STAT=L_STAT_ALLOC)
    ENDIF
    ! <<< Call lapack77 routine >>>
    IF(L_STAT_ALLOC==0) THEN
        CALL F77_TRRFS(O_UPLO,O_TRANS,O_DIAG,N,NRHS,A,LDA,B,LDB,X,LDX,  &
     &                                  R_FERR,R_BERR,WORK,RWORK,O_INFO)
    ELSE; O_INFO = -1000
    ENDIF
    ! <<< Set output optional scalars for reduced arrays >>>
    IF(PRESENT(BERR)) THEN
        BERR = R_BERR(1)
    ENDIF
    IF(PRESENT(FERR)) THEN
        FERR = R_FERR(1)
    ENDIF
    ! <<< Deallocate local and work arrays >>>
    DEALLOCATE(RWORK, STAT=L_STAT_DEALLOC)
    DEALLOCATE(WORK, STAT=L_STAT_DEALLOC)
    ! <<< Error handler >>>
    IF(PRESENT(INFO)) THEN
        INFO = O_INFO
    ELSEIF(O_INFO <= -1000) THEN
        CALL F77_XERBLA(SRNAME,-O_INFO)
    ENDIF
END SUBROUTINE CTRRFS1_F95
