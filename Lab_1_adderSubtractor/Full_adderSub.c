#include <stdio.h>

int main(void)
{
	uint32_t *regmap = (uint32_t *) 0x70000000;
	
	//regmap[0] is A, regmap[1] is B, regmap[2] is k 
	size_t A;
	size_t B;
	bool k;
	
	A = 36534;
	B = 342;
	k = 1;
	regmap[0] = A;
	regmap[1] = B
	regmap[2] = 1;
	size_t r = regmap[0];
	size_t c = regmap[2];
	printf("%2zu + %2zu = %3zu (%s)\n", 