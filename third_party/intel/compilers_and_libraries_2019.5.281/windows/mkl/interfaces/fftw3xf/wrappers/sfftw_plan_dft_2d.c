/*******************************************************************************
* Copyright 2005-2019 Intel Corporation.
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
 * sfftw_plan_dft_2d - FFTW3 Fortran 77 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "fftw3_mkl_f77.h"

void
sfftw_plan_dft_2d(PLAN *p, INTEGER *nx, INTEGER *ny, COMPLEX8 *in,
                  COMPLEX8 *out, INTEGER *sign, INTEGER *flags)
{
    INTEGER two = 2;
    INTEGER n[2] = { *nx, *ny };

    sfftw_plan_dft(p, &two, n, in, out, sign, flags);
}
