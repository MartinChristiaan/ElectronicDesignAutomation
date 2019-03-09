#include "img_conv_5x5.h"
void convolve()
{
	unsigned char inptr[X_N * Y_N];
	unsigned char outptr[X_N -4];//outptr for a single row
	unsigned char foutptr[(X_N -4) * (Y_N -4)];// final output
	char mask[M_N];
	int shift = 0,z=0;
	for( z=0; z<Y_N-4; z++)
	{
			img_conv_5x5(inptr,outptr, mask,shift,z);
			for(int x = 0; x < X_N-4; x++)
			{
				foutptr[z*(X_N-4) + x]= outptr[x];
			}


	}
}
