/*******************************************************************************
* Copyright 2006-2019 Intel Corporation.
*
* This software and the related documents are Intel copyrighted  materials,  and
* your use of  them is  governed by the  express license  under which  they were
* provided to you (License).  Unless the License provides otherwise, you may not
* use, modify, copy, publish, distribute,  disclose or transmit this software or
* the related documents without Intel's prior written permission.
*
* This software and the related documents  are provided as  is,  with no express
* or implied  warranties,  other  than those  that are  expressly stated  in the
* License.
*******************************************************************************/

/*
 *
 * rfftw_f77_create_plan - FFTW2 Fortran 77 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "rfftw.h"
#include "fftw2_mkl.h"
#include "fftw2_f77_mkl.h"

void
rfftw_f77_create_plan(rfftw_plan *plan, int *n, fftw_direction *dir,
                      int *flags)
{
    if (plan == NULL) return;
    *(MKL_INT64 *)plan = 0;
    if (n == NULL || dir == NULL || flags == NULL) return;

    *plan = rfftw_create_plan(*n, *dir, *flags);
}
