#include <stdio.h>


int main(void)
{
	uint32_t *regmap = (uint32_t *) 0x70000000;
	
	void testBench(size_t A, size_t B, size_t k){
		regmap[0] = A;
		regmap[1] = B;
		regmap[2] = k;
		size_t r = regmap[0];
		size_t c = regmap[2];
		long long int C = (long long int)A+(long long int)B;
		long long int D = (long long int)A-(long long int)B;
		if((k == 1) && ((D) >= 0)){
			printf("%2zu %s %2zu = %3zu (%s) Cout = %2zu\n", A,"-",
					B, r,  ((r == A - B) && (c == 1)) ? "COR" : "ERR", c);
		}
		else if((k==1) && ((D) < 0)){
			printf("%2zu %s %2zu = %3zu (%s) Cout = %2zu\n", A,"-",
					B, r,  ((r == (4294967296 -(B - A))) && (c == 0)) ? "COR" : "ERR", c);
		}
		else if((k==0) && (C > 4294967295)){
			printf("%2zu %s %2zu = %3zu (%s) Cout = %2zu\n", A,"+",
					B, r,  ((r == (size_t)C) && (c == 1)) ? "COR" : "ERR", c);
		}
		else if((k==0) && (C <= 4294967295)){
				printf("%2zu %s %2zu = %3zu (%s) Cout = %2zu\n", A,"+",
					B, r,  ((r == A + B) && (c == 0)) ? "COR" : "ERR", c);
		}
		else printf("ERR unstable K");
	}

	size_t zero = 0;
	testBench(35624,4352, zero); //a+b <= overflow
	testBench(2345465344,3423456344,zero);	// overflow case
	testBench(456432,653,1);	// positive subtraction
	testBench(2452,2452,1);	//subtraction to 0
	testBench(2344,6434,1); //negitive subtaction
	testBench(4356,3456,zero);
	testBench(4356,3456,1);
	testBench(768589,6457,zero);
	testBench(768589,6457,1);



	return 0;
}
