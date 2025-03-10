#include <stdio.h>

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
				printf("A and B =  %3zu (%s)", r, ((A & B) == r) ? "COR" : "ERR");
				break;

			case 1: //or
				printf("A  B or =  %3zu (%s)", r, ((A | B) == r) ? "COR" : "ERR");
				break;

			case 2: //xor
				printf("A xor B =  %3zu (%s)", r, (((A & (!B)) | ((!A) & B)) == r) ? "COR" : "ERR");
				break;

			case 3: //nor
				printf("A nor B =  %3zu (%s)", r, ((!(A | B)) == r) ? "COR" : "ERR");
				break;

			case 4: //signed add
				printf("A + B =  %3zu (%s) (S)", r, ((A + B) == r) ? "COR" : "ERR");
				break;

			case 5: //unsigned add
				printf("A + B =  %3zu (%s) (U)", r, ((A + B) == r) ? "COR" : "ERR");
				break;

			case 6: // signed sub
				printf("A - B =  %3zu (%s) (S)", r, ((A - B) == r) ? "COR" : "ERR");
				break;

			case 7: // unsigned sub
				printf("A - B =  %3zu (%s) (U)", r, ((A - B) == r) ? "COR" : "ERR");
				break;

			case 10: // slt
				printf("A < B ==  %3zu (%s) (S)", r, ((A < B) == (r == 1)) ? "COR" : "ERR");
				break;

			case 11: // uslt
				printf("A < B ==  %3zu (%s) (U)", r, ((A < B) == (r == 1)) ? "COR" : "ERR");
				break;

			case 12: // LSL
				printf("A << %2zu =  %3zu (%s) ",shamt, r, ((A << shamt) == r) ? "COR" : "ERR");
				break;

			case 14: // ASL
				printf("A >> %2zu =  %3zu (%s) (A) ",shamt, r, ((A / (2^shamt)) == r) ? "COR" : "ERR");
				break;

			case 15: // LSR
				printf("A >> %2zu =  %3zu (%s) (L) ",shamt, r, ((A >> shamt) == r) ? "COR" : "ERR");
				break;

			default : printf("ERR unrecognized operation code");
			}
		}


	testBench(3,2,1,0);
	testBench(3,2,1,1);
	testBench(3,2,1,2);
	testBench(3,2,1,3);
	testBench(3,2,1,4);
	testBench(3,2,1,5);
	testBench(3,2,1,6);
	testBench(3,2,1,7);
	testBench(3,2,1,10);
	testBench(3,2,1,11);
	testBench(3,2,1,12);
	testBench(3,2,1,14);
	testBench(3,2,1,15);

	return 0;
}

