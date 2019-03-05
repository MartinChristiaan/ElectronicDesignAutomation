#include "img_conv_5x5.h"
#include <math.h>

#define X_N 64  // width of row
#define Y_N 32  // number of rows 
#define M_N 25  // size of mask array

#include <stdio.h>
int main()
{
    unsigned char outptr[X_N];
    unsigned char inptr[X_N*Y_N];
    for(int y = 0; y < Y_N; y++)
    {
        for(int x = 0; x < X_N; x++)
        {
            inptr[x + y * X_N] = sin(x) + sin(y);
        }   
    }
    unsigned char mask[M_N];
    for(int i = 0; i < M_N; i++)
    {
        mask[i] = i;
    }

    for (int x = 0; x < X_N - 5; x++)
    {
        int sum  = 0;
        for (int i = 0; i < 5; i++)
        {
            for(int j = 0; j < 5; j++)
            {
                sum += mask[i + j * 5] * inptr[x];    
            }
        }

        sum = (sum >> 0);

        if (sum < 0)
            sum = 0;
        if (sum > 255)
            sum = 255;

        outptr[x] = sum;
    }
    unsigned char outptr2[X_N];
    IMG_conv_5x5_c(outptr2,inptr, X_N, mask,0);
    // bool incorrect = false;
    // for (int newx = 0; newx < X_N-5; newx++)
	// {
    // 	if (outptr[newx] != outptr2[newx])
    // 	{
    // 		incorrect = true;
    // 	}

	// }
    // if(incorrect)
    // {
    // 	printf("Convolution NOT working properly");
    // }
    // else
    // {
    // 	printf("Convolution working properly");
    // }

    return 0;



    
    

}
