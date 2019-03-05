
/************************************************************

This convolution function is limited compared to the original pointer based function IMG_conv_5x5_c: 
1. inputs, outputs and all vector variables are declared as limited arrays to assure Vivado synthesis limitations are met.
 There are ways to work with pointers on vectors - pls see Vivado examples - but it is easier at this stage to work with arrays(vectors must be limited anyway).   
2. size of arrays is limited to small numbers - not realistic for image processing - in the .h file, can be easily changed.
3. the names of variables are mostly kept as in the original but their types can be changed  
4. .h file contains all needed definitionsas recommended by HLS guidelines 

************************************************************/
/***********************************************************
This function calculates 5x5 convolution of one row of the image inptr[].
The result is a row OUT for conoluted image outptr[].
The type definitions in img_conv_5x5.h are NOT used here to keep this function as close as possible to the origial function IMG_conv_5x5_c which is NOT synthesizable due to use of not fixed size arrays.

*************************************************************/
#include "img_conv_5x5.h"

void img_conv_5x5(unsigned char inptr[X_N*Y_N],
                  unsigned char outptr[X_N-4], // should this not be X_N - 5
                 // int8 x_dim,
                  char mask[M_N],
                  int  shift) 
{
  
   unsigned char     *IN1,*IN2,*IN3,*IN4,*IN5;
   unsigned char     *OUT; 

   short    pix10,  pix20,  pix30,  pix40,  pix50;
   short    mask10, mask20, mask30, mask40, mask50;

   int      sum,    sum00,  sum11, sum22, sum33, sum44;
   int      i;
   int      j;

// seting pointers to read data from five rows of inptr[]
// and to write the results to a row OUT
   IN1      =   inptr;
   IN2      =   IN1 + X_N;  // X_N row width
   IN3      =   IN2 + X_N;
   IN4      =   IN3 + X_N;
   IN5      =   IN4 + X_N;
   OUT      =   outptr;

// go through the row of inptr[] image with j index
// produce one convolution output OUT pixel per iteration  

for (j = 0; j < X_N - 4 ; j++)
    {
         sum = 0;

         for (i = 0; i < 5; i++) // i is x position for the mask
// calculate convolution sum by summing mask*pixel 
         {
            pix10  =   IN1[i];
            pix20  =   IN2[i];
            pix30  =   IN3[i];
            pix40  =   IN4[i];
	        pix50  =   IN5[i];

            mask10 =   mask[i];
            mask20 =   mask[i + 5];
            mask30 =   mask[i + 10];
	        mask40 =   mask[i + 15];
	        mask50 =   mask[i + 20];

            sum00  =   pix10 * mask10;
            sum11  =   pix20 * mask20;
            sum22  =   pix30 * mask30;
	        sum33  =   pix40 * mask40;
	        sum44  =   pix50 * mask50;
	     
            sum   +=   sum00 + sum11 + sum22 + sum33 + sum44;
        }
// move to next column of image 
         IN1++;
         IN2++;
         IN3++;
	     IN4++;
         IN5++;
// calculate OUT pixel
         sum = (sum >> shift);

         if ( sum <  0  )       sum = 0;
         if ( sum > 255 )       sum = 255;
		 
         *OUT++ = sum;
     }

} //end func



