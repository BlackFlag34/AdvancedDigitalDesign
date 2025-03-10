#include <stdio.h>
#include <math.h>

int main(void)
{
	uint32_t *regmap = (uint32_t *) 0x70000000;
	// A = regmap[0]
	// B = regmap[1]
	// shamt = regmap[2]
	// ALUOp = regmap[3]
	//overflow = regmap[4]
	//zero = regmap[5]
	//R = regmap[0]

	void testBench(size_t A, size_t B, size_t shamt, size_t alu_op){
			regmap[0] = A;
			regmap[1] = B;
			regmap[2] = shamt;
			regmap[3] = alu_op;
			size_t r = regmap[0];
			//size_t overflow = regmap[4];
			//size_t zero = regmap[5];
			//long long int C = (long long int)A+(long long int)B;
			//long long int D = (long long int)A-(long long int)B;
//printf("%2zu %s %2zu = %3zu (%s) Cout = %2zu\n", A,"-",B, r,  (true) ? "COR" : "ERR", c);

			switch(alu_op){
			case 0: //and
				printf("A and B =  %3zu (%s) \n", r, ((A & B) == r) ? "COR" : "ERR");
				break;

			case 1: //or
				printf("A  B or =  %3zu (%s) \n", r, ((A | B) == r) ? "COR" : "ERR");
				break;

			case 2: //xor
				printf("A xor B =  %3zu (%s)\n", r, (A ^ B == r) ? "COR" : "ERR");
				break;

			case 3: //nor
				printf("A nor B =  %3zu (%s)\n", r, ((~(A | B)) == r) ? "COR" : "ERR");
				break;

			case 4: //signed add
				printf("A + B =  %3zu (%s) (S)\n", r, ((A + B) == r) ? "COR" : "ERR");
				break;

			case 5: //unsigned add
				printf("A + B =  %3zu (%s) (U)\n", r, ((A + B) == r) ? "COR" : "ERR");
				break;

			case 6: // signed sub
				printf("A - B =  %3zu (%s) (S)\n", r, ((A - B) == r) ? "COR" : "ERR");
				break;

			case 7: // unsigned sub
				printf("A - B =  %3zu (%s) (U)\n", r, ((A - B) == r) ? "COR" : "ERR");
				break;

			case 10: // slt
				printf("A < B ->  %3zu (%s) (S)\n", r, ((A < B) == (r == 1)) ? "COR" : "ERR");
				break;

			case 11: // uslt
				printf("A < B ->  %3zu (%s) (U)\n", r, ((A < B) == (r == 1)) ? "COR" : "ERR");
				break;

			case 12: // LSL
				printf("A << %2zu =  %3zu (%s) \n",shamt, r, ((A << shamt) == r) ? "COR" : "ERR");
				break;

			case 14: // ASR
				printf("A >> %2zu =  %3zu (%s) (A) \n",shamt, r, (A >> shamt  == r) ? "COR" : "ERR");
				break;

			case 15: // LSR
				printf("A >> %2zu =  %3zu (%s) (L) \n",shamt, r, ((A >> shamt) == r) ? "COR" : "ERR");
				break;

			default : printf("ERR unrecognized operation code");
			}
		}


	testBench(23,245,5,0);
	testBench(3234,2134,3,1);
	testBench(324,213,681,2);
	testBench(32345,869213,24,3);
	testBench(3467,8692,8,4);
	testBench(385,982,15,5);
	testBench(35678,82,8,6);
	testBench(333,682,7,7);
	testBench(8753,682,7,10);
	testBench(9683,2869,3,11);
	testBench(573,6892,4,12);
	testBench(-397,2689,13,14);
	testBench(93,6782,7,15);

	return 0;
}



