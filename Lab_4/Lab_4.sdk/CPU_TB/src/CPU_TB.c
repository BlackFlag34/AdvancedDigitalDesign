
#include "xparameters.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include <stdio.h>
#include "sleep.h"
#define BRAM_DEPTH 16
#define BRAM_CONTROLLER_ADDR 0x41000000
#define LAB_CPU_ADDR 0x40000000
// Instruction memory for program 1
// Forcing a program (instruction memory) and the rest initialized to zero
// addi $7, $0, 17
// addi $11, $0, -3
// and $11, $7, $11
// sw $11, 15($7)
uint32_t program1[] = {
0x20070011, 0x200BFFFD, 0x00EB5824, 0xACEB000F,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};

//follow tests as done in CPU_tb_2.tcl
uint32_t program2[] = {
0x20070011, 0x200BFFFD, 0x00EB5822, 0xACEB0013,
0xACEB000f, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program3[] = {
0x20070011, 0x200BFFFD, 0x00EB5821, 0xACEB000F,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program4[] = {
0x20070011, 0x200BFFFD, 0x00075843, 0xACEB000F,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program5[] = {
0x20070011, 0x200BFFFD, 0x00e75804, 0xACEB000F,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program6[] = {
0x20070011, 0x200BFFFD, 0x28eb003f, 0xACEB000F,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program7[] = {
0x20070011, 0x200BFFFD, 0x15670003, 0x20010002,
0x00000000, 0x00000000, 0x20010001, 0xACE1000f,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program8[] = {
0x3c011001, 0x342d0020, 0x3c010123, 0x34294567,
0xada90000, 0x85ab0002, 0xadab0010, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program9[] = {
0x3c011001, 0x342d0020, 0x2009ffd3, 0x71205021,
0xadaa0000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program10[] = {
0x3c011001, 0x3403ff0f, 0xac230020, 0x3405bbbb,
0x00000000, 0x8c220020, 0x00452024, 0xac240024,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program11[] = {
0x20010080, 0x3c021010, 0x20421111, 0x2003000c,
0x00220019, 0x00002010, 0x00002812, 0xac640018,
0xac65001c, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
};


// function prototype to run the program
void run_program(uint32_t *program, int a);

//defining pointers for bram controller (bram_ptr) and the RegMap (cpu_ptr)
uint32_t * bram_ptr = (uint32_t *)BRAM_CONTROLLER_ADDR;
uint32_t * cpu_ptr = (uint32_t *)LAB_CPU_ADDR;


void run_program(uint32_t *program, int a) {

	// assert cpu reset
	cpu_ptr[0] = 1;

	// initialize instruction memory
	for (int i = 0; i < BRAM_DEPTH; ++i) {
		bram_ptr[i] = program[i];
	}

	// one way to test for correctness, is to print the memory content before and after the execution.
	// feel free to do this as you see fit.
	// print memory contents
	//printf("Memory Contents (BEFORE)\n");
	//for (int i = 0; i < BRAM_DEPTH; ++i) {
	//	printf("%2d : 0x%08X ", i, (unsigned int)bram_ptr[i]);
	//	// print 2 columns per line
	//	if (i % 2 == 1) {
	//		printf("\n");
	//	}
	//}
	// deassert cpu reset
	cpu_ptr[0] = 0;
	//while( (unsigned int)bram_ptr[a] == 0 ){}

	for(int i = 0; i < 1000; ++i){

	}
	// cpu execution will very likely finish faster than a read to bram_ptr through AXI-LITE
	// interface, but just in case you came up with a long program, you might wanna try one of
	// the following:
	//
	// 1. add a delay loop from some time, may be a second or so.
	// 2. poll a memory location that you will change by the end of your program execution.
	// print memory contents
	printf("Memory Contents (AFTER)\n");
	for (int i = 0; i < BRAM_DEPTH; ++i) {
		printf("%2d : 0x%08X ", i, (unsigned int)bram_ptr[i]);
		// print 2 columns per line
		if (i % 2 == 1) {
			printf("\n");
		}
	}
}

int main(void) {
	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 1	AND\n");
	run_program(program1, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x00000011) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 2 SUB\n");
	run_program(program2, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[9],
			((unsigned int)bram_ptr[9] == 0x00000014) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 3 ADDU\n");
	run_program(program3, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x0000000e) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 4 SRA\n");
	run_program(program4, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x00000008) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 5 SLLV\n");
	run_program(program5, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x00220000) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 6 SLTI\n");
	run_program(program6, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x00000001) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 7 BNE\n");
	run_program(program7, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x00000001) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 8 LH LUI ORI\n");
	run_program(program8, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x01234567) ? "COR" : "ERR");
	printf("\t$12 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[12],
				((unsigned int)bram_ptr[12] == 0x00004567) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 9 CLO\n");
	run_program(program9, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x0000001a) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 10 LW \n");
	run_program(program10, 8);
	printf("\t$8 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[8],
			((unsigned int)bram_ptr[8] == 0x0000ff0f) ? "COR" : "ERR");
	printf("\t$9 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[9],
				((unsigned int)bram_ptr[9] == 0x0000bb0b) ? "COR" : "ERR");

	printf("-------------------------------------\n");
	printf("\nRunning PROGRAM 11 MULTU MFHI MFLO\n");
	run_program(program11, 10);
	printf("\t$9 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[9],
			((unsigned int)bram_ptr[9] == 0x00000008) ? "COR" : "ERR");
	printf("\t$10 = 0x%08X (%s)\n\n", (unsigned int)bram_ptr[10],
				((unsigned int)bram_ptr[10] == 0x08088880) ? "COR" : "ERR");
}
