#include <stdio.h>
#include <math.h>

int main(void)
{
	uint32_t *regmap = (uint32_t *) 0x70000000;
	// A = regmap[0]
	// B = regmap[1]
	// rst = regmap[2]
	// R_hi = regmap[0]
	// R_lo = regmap[1]
	// done = regmap[2]

	void testBench(size_t A, size_t B){
			regmap[0] = A;
			regmap[1] = B;
			regmap[2] = 1;
			printf("resetting \n");
			for(int i = 0; i<100; i++){}
			regmap[2] = 0;
			printf("ready \n");
			size_t done = regmap[2];
			while(done == 0){done = regmap[2];}
			printf("done \n");
			size_t R_hi = regmap[0];
			size_t R_lo = regmap[1];
			unsigned long long int Result = ((unsigned long long int)R_hi << 32)
											+ (unsigned long long int)R_lo;
			unsigned long long int Expected_Result =
					(unsigned long long int)A * (unsigned long long int)B;
			printf("%2zu %s %2zu = %llu (%s) \n", A,"*",B, Result,
					(Result == Expected_Result) ? "COR" : "ERR");
			printf("hi = %2zu, lo = %2zu \n", R_hi, R_lo);
	}

	testBench(345, 352);
	testBench(234526452, 34563452);
	testBench(23532356725, 23452);
	testBench(2313, 36578467854);
	testBench(12, 4);

	return 0;
}



