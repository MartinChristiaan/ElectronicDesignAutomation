/* image convolution function in C - the original version */
/* Image Convolution: given two five-by-five matrices (a */
/* kernel and an image piece) convolution is a process of */
/* multiplying locationaly similar entries and summing the */
/* partial results  */

void IMG_conv_5x5_c(const unsigned char *inptr,
                    unsigned char *outptr,
                    int x_dim,
                    const char *mask,
                    int shift)
{
    const unsigned char *IN1, *IN2, *IN3, *IN4, *IN5;
    unsigned char *OUT;

    short pix10, pix20, pix30, pix40, pix50;
    short mask10, mask20, mask30, mask40, mask50;

    int sum, sum00, sum11, sum22, sum33, sum44;
    int i;
    int x;

    /*-------------------------------------------------------------------*/
    /* Set imgcols to the width of the image and set three pointers for  */
    /* reading data from the three input rows. Alos set the output poin- */
    /* ter.                                                              */
    /*-------------------------------------------------------------------*/

    IN1 = inptr;
    IN2 = IN1 + x_dim;
    IN3 = IN2 + x_dim;
    IN4 = IN3 + x_dim;
    IN5 = IN4 + x_dim;
    OUT = outptr;

    /*-------------------------------------------------------------------*/
    /* The x: loop iterates to produce one output pixel per iteration.   */
    /* The mask values and the input values are read using the i loop.   */
    /* The convolution sum is then computed. The convolution sum is      */
    /* then shifted and range limited to 0..255                          */
    /*-------------------------------------------------------------------*/
    
    for (x = 0; x < x_dim - 5; x++)
    {
        /*---------------------------------------------------------------*/
        /* Initialize convolution sum to zero, for every iteration of    */
        /* outer loop. The inner loop computes convolution sum.          */
        /*---------------------------------------------------------------*/

        sum = 0;

        for (i = 0; i < 5; i++)
        {
            pix10 = IN1[i];
            pix20 = IN2[i];
            pix30 = IN3[i];
            pix40 = IN4[i];
            pix50 = IN5[i];

            mask10 = mask[i];
            mask20 = mask[i + 5];
            mask30 = mask[i + 10];
            mask40 = mask[i + 15];
            mask50 = mask[i + 20];

            sum00 = pix10 * mask10;
            sum11 = pix20 * mask20;
            sum22 = pix30 * mask30;
            sum33 = pix40 * mask40;
            sum44 = pix50 * mask50;

            sum += sum00 + sum11 + sum22 + sum33 + sum44;
        }

        /*---------------------------------------------------------------*/
        /*  Increment input pointers and shift sum and range limit to    */
        /*  0..255.                                                      */
        /*---------------------------------------------------------------*/

        IN1++;
        IN2++;
        IN3++;
        IN4++;
        IN5++;

        sum = (sum >> shift);

        if (sum < 0)
            sum = 0;
        if (sum > 255)
            sum = 255;

        /*--------------------------------------------------------------*/
        /* Store output sum into the output pointer OUT                 */
        /*--------------------------------------------------------------*/

        *OUT++ = sum;
    }
}
