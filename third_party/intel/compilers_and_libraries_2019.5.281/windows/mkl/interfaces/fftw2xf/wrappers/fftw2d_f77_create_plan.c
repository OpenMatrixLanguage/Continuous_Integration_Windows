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
 * fftw2d_f77_create_plan - FFTW2 Fortran 77 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "fftw.h"
#include "fftw2_mkl.h"
#include "fftw2_f77_mkl.h"

void
fftw2d_f77_create_plan(fftwnd_plan *plan_f77, int *nx, int *ny,
                       fftw_direction *dir, int *flags)
{
    if (plan_f77 == NULL) return;
    *(MKL_INT64 *)plan_f77 = 0;
    if (nx == NULL || ny == NULL || dir == NULL || flags == NULL) return;
    *plan_f77 = fftw2d_create_plan(*ny, *nx, *dir, *flags);
}
