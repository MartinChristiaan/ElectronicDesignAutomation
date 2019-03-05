/*******************************************************

this file defines types and constants for use in 
img_conv_5x5 convolution function.

Types defined here are NOT used in the function but show how it should be done according to VivadoHLS guidelines.


*******************************************************/
                                               
#ifndef _IMG_CONV_5X5_  
#define _IMG_CONV_5X5_

#include <stdio.h>
#include "ap_cint.h"

#define X_N 64  // width of row
#define Y_N 32  // number of rows 
#define M_N 25  // size of mask array

typedef const unsigned char  imgpix; 
typedef unsigned char  convpix; 
typedef const char mpix; 
// arbitary precision types 
typedef int3 i_t;  // limited rage to save hardware
typedef int10 j_t; // limited rage to save hardware

void img_conv_5x5(unsigned char inptr[X_N*Y_N], 
                  unsigned char outptr[X_N], 
                 // int8 x_dim,
                  char mask[M_N],
                  int  shift) ;

#endif



