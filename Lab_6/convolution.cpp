/*------------------------------------------------------------------------------
--                                                                            --
--       .oooooo..o ooooo   ooooo ooooooooo.   oooooooooooo   .oooooo.        --
--      d8P'    `Y8 `888'   `888' `888   `Y88. `888'     `8  d8P'  `Y8b       --
--      Y88bo.       888     888   888   .d88'  888         888               --
--       `"Y8888o.   888ooooo888   888ooo88P'   888oooo8    888               --
--           `"Y88b  888     888   888`88b.     888    "    888               --
--      oo     .d8P  888     888   888  `88b.   888       o `88b    ooo       --
--      8""88888P'  o888o   o888o o888o  o888o o888ooooood8  `Y8bood8P'       --
--                                                                            --
--------------------------------------------------------------------------------
-- Vivado HLS 2D Convolutional Accelerator          author: Sebastian Sabogal --
--------------------------------------------------------------------------------
--                                                                            --
-- Copyright (C) 2020 SHREC.                                                  --
--                                                                            --
-- This file is part of HLS-2D-CONV.                                          --
--                                                                            --
-- HLS-2D-CONV is free software; you can redistribute it and/or modify        --
-- it under the terms of the GNU General Public License as published by the   --
-- Free Software Foundation; either version 3, or (at your option) any later  --
-- version.                                                                   --
-- HLS-2D-CONV is distributed in the hope that it will be useful, but         --
-- WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License   --
-- for more details.                                                          --
-- You should have received a copy of the GNU General Public License along    --
-- with HLS-2D-CONV; see the file LICENSE.  If not see                        --
-- <http://www.gnu.org/licenses/>.                                            --
--                                                                            --
------------------------------------------------------------------------------*/

#include "convolution.hpp"

// kernel to be used for convolution
int8_t kern[K * K] = {
	1,  1,  1,
	1, -8,  1,
	1,  1,  1
};
uint8_t shift_div = 0;


// software convolution function

void sw_conv(uint8_t *A, uint8_t *B)
{
	// A is the input picture and B is the output picture.
	// Note, these two arrays are 1D arrays, arranged row after row.

    //loop over image
    for(int j = 0; j < IMG_HEIGHT; j++){
        for(int i = 0; i < IMG_WIDTH; i++){
            int32_t result = 0;

            //loop over kernel
            for(int k = 0; k < K; k++){
                for(int l = 0; l < K; l++){

                    //calculate x and y coordinates
                    int x = i + l - W;
                    int y = j + k - W;

                    //check if out of bounds
                    if(x < 0 || x >= IMG_WIDTH || y < 0 || y >= IMG_HEIGHT){
                        continue;
                    }

                    //calculate result
                    result += A[y * IMG_WIDTH + x] * kern[k * K + l];
                }
            }

            //shift and clamp result
            result = result >> shift_div;

            if(result > 0xFF)       result = 0xFF;
            else if(result < 0)     result = 0;

            B[j * IMG_WIDTH + i] = result;
        }
    }
	
	// write the implementation of the software convolution function.
	// Couple of Hints:
	// 	1. figure out the limit of the loops that would scan the kernel over the image.
	//	2. have a variable of type int32_t to be used as the result of the convolution process. make sure to clear it before each convolution step.
	//	3. figure out the limit of the loops that would do the convolution (i.e. multiply th kernel with the corresponding pixels.
	//	4. in those loops, figure out the correct indexing method to access A (remember that A is a 1D image)
	// 	5. when you are done calculating the result, shift it to the right by the value shift_div defined above.
	//	6. before assigning the result to the corresponding pixel in B. make sure to check for saturation as follows:
	//		if the result > 0xFF then it should be clamped to 0xFF
	//		if less than 0, then it should be clamped to 0
	//		otherwise, it should be the same value.
}



void hw_conv(stream_t &sin, stream_t &sout)
{
	
	// directives to assign ports
#	pragma HLS INTERFACE ap_ctrl_none port=return
#	pragma HLS INTERFACE axis port=sin
#	pragma HLS INTERFACE axis port=sout

	uint8_t kbuf[K][K]       = {0};	// the buffer used pixels to be multiplied by the kernel

	// directives to partition these arrays
#	pragma HLS ARRAY_PARTITION variable=kbuf  complete dim=0



#	define L_SIZE (IMG_WIDTH - K)
	uint8_t lbuf[K-1][L_SIZE]  = {0};	// the line buffer used for pixels in between the pixels multiplied by the kernel. (see lecture slides)
#	pragma HLS ARRAY_PARTITION variable=lbuf  complete dim=1



	int32_t result;		// variable to store the conv result



	// a pipelined loop to go through all stream length + a delay (till the first convoluted pixel is correct.)
	for (int i = 0; i < STREAM_LENGTH + DELAY; ++i) {
		
		// pipeline directive
#		pragma HLS PIPELINE II=1


		/* Sliding Window */

		{

//-----------------SHIFTING VARIANT-----------------


//			int offset = i % L_SIZE;
//
//			//shifting within the kernel buffer
//			for(int j = 0; j < K-1; ++j){
//#				pragma HLS UNROLL
//				for(int k = 0; k < K-1; ++k){
//#					pragma HLS UNROLL
//				kbuf[j][k] = kbuf[j][k+1];
//				}
//
//				//shifting in the top and middle row(s) of the kernel over the current line buffer offset
//				//replacing the line buffer offset with the back of the kernel
//				kbuf[j][K-1]    = lbuf[j][offset];
//				lbuf[j][offset] = kbuf[j+1][0];
//				//shifting the bottom row of the window
//				kbuf[K-1][j] = kbuf[K-1][j+1];
//			}



//-----------------RING VARIANT---------------------


			int end_k   =   (i -  K) % L_SIZE;
			int end_j   =  ((i -  K) / L_SIZE) % K;

			int start_k =  (end_k + 1) % L_SIZE;
			int start_j =  (end_j + 1) %  K;

			for(int j = 0; j < K-1; ++j){
#				pragma HLS UNROLL
				for(int k = 0; k < K-1; ++k){
#					pragma HLS UNROLL
					kbuf[j][k] = lbuf[(start_j + j) % K][(start_k + k) % L_SIZE];
					kbuf[j][K-1]    = lbuf[start_j + j][start_k + k];
					kbuf[K-1][j]    = kbuf[K-1][j+1];
				}
			}


			beat_t input;


			if(i < STREAM_LENGTH){
						sin >> input;
						kbuf[K-1][K-1] = input.data(7,0);
		    }


		}




		// write code to implement the convolution operation.
		// Hints:
		//	1. reset the variable result before each conv operation.
		//	2. write loops to do the multiplication and accumulation in the result variable. use the command "# pragma HLS UNROLL"
		//	3. in those loops, figure out the correct indexing method to kernel kern (remember that kern is a 1D image)
		//	4. when you are done calculating the result, shift it to the right by the value shift_div defined above.
		//	5. make sure to check for saturation in the result variable as follows:
		//		if the result > 0xFF then it should be clamped to 0xFF
		//		if less than 0, then it should be clamped to 0
		//		otherwise, it should be the same value.


		/* Convolution */
		{
			// TODO
			result = 0;
			for(int j = 0; j < K; ++j){
#				pragma HLS UNROLL
				for(int k = 0; k < K; ++k){
#					pragma HLS UNROLL
			        result += kbuf[j][k] * kern[(j * K) + k];
			    }
			}

			if(result > 0xFF)       result = 0xFF;
			else if(result < 0)     result = 0;

			result >>= shift_div;


			// generate a beat_t object with the convoluted pixel and sending it the output stream
			// this is only done after a delay to ensure that we have calculated the correct pixel at the beginning
			if (i >= DELAY) {
				beat_t val;
				val.data(7, 0) = result;
				val.keep(0, 0) = 0x1;
				val.last.set_bit(0, i == STREAM_LENGTH + DELAY - 1);
				sout << val;
			}
		}
	}
}
