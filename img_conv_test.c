#include "img_conv_5x5.h"
#include <stdio.h>
#include <math.h>

int main()
{
    unsigned char outptr[X_N-4];
    unsigned char outptr2[X_N-4];
    unsigned char inptr[X_N*Y_N];
    unsigned char inptr2[X_N*Y_N];
    unsigned char mask[M_N];
    unsigned char mask2[M_N];
    int shift = 0;
    // Generate some data
    for(int y = 0; y < Y_N; y++)
    {
        for(int x = 0; x < X_N; x++)
        {
            inptr[x + y * X_N] = x+y;
            inptr2[x + y * X_N] = x+y;
        }   
    }

    for(int i = 0; i < M_N; i++)
    {
        mask[i] = 6;
        mask2[i] = 6;
    }

    //Perform convolution
    for (int x = 0; x < X_N - 4; x++)
    {
        int sum  = 0;
        for (int ymask = 0; ymask < 5; ymask++)
        {
            for(int xmask = 0; xmask < 5; xmask++)
            {
                sum += mask[xmask + ymask * 5] * inptr[x + xmask + ymask * X_N];
            }
        }

        sum = (sum >> shift);

        if (sum < 0)
            sum = 0;
        if (sum > 255)
            sum = 255;

        outptr[x] = sum; // Add +1 here to see tests fail!
    }
    img_conv_5x5(inptr2,outptr2, mask2,shift);
    int incorrect = 0;
    for(int x2 = 0; x2 < X_N-4; x2++)
    {
    	if(outptr[x2]!=outptr2[x2])
    	{
    		printf("%c , %c : %i \n ",outptr[x2],outptr2[x2],x2);
    		incorrect = 1;
    	}
	}
    if (incorrect == 1)
    {
    	printf("INCORRECT! \n");
    	return 1;
    }
    else
    {
    	printf("CORRECT! \n");
    	return 0;

    }
    




    
    

}
