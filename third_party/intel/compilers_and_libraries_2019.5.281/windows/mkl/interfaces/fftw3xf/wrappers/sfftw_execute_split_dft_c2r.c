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
 * sfftw_execute_split_dft_c2r - FFTW3 Fortran 77 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "fftw3_mkl_f77.h"

void
sfftw_execute_split_dft_c2r(PLAN *p, REAL4 *ri, REAL4 *ii, REAL4 *out)
{
    if (p == NULL) return;
    fftwf_execute_split_dft_c2r(*(fftwf_plan *)p, ri, ii, out);
}