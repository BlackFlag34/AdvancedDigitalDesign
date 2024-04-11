#addi $t0, $t0, 0x000c %% 2108000c
#ori $t1, $t0, 0x1010  %% 35091010
#bne $t0, $t1, one     %% 15090007
#end :                 %% 
#slti $t2, $t0, 0x1fff %% 290a1fff
#addu $t3, $t0, $t2    %% 010a5821
#and $t8, $t1, $t1     %% 0129c024
#sub $t4, $t1, $t0     %% 01286022
#sra $t5, $t0, 2       %% 00086883
#sllv $t6, $t0, $t5    %% 01a87004
#sll $t7, $t6, 3	   %% 000e78c0
#one:                     
#bne $t1, $t8, end     %% 1538fff8
#the assembly code base   
#checking the Branch instructions requires watching the
#	   MemoryAddress signal at the rising edge of IRWrite
restart                   
add_force clock -radix hex {0 0ns} {1 5ns} -repeat_every 10000ps

add_force reset 1
run 15 ns
add_force reset 0

add_force MemoryDataIn -radix hex 2108000c
run 40
add_force MemoryDataIn -radix hex 35091010
run 40
add_force MemoryDataIn -radix hex 15090007
run 30
add_force MemoryDataIn -radix hex 1538fff8
run 30
add_force MemoryDataIn -radix hex 290a1fff
run 40
add_force MemoryDataIn -radix hex 010a5821
run 40
add_force MemoryDataIn -radix hex 0129c024
run 40
add_force MemoryDataIn -radix hex 01286022
run 40
add_force MemoryDataIn -radix hex 00086883
run 40
add_force MemoryDataIn -radix hex 01a87004
run 40
add_force MemoryDataIn -radix hex 000e78c0 
run 40
add_force MemoryDataIn -radix hex 1538fff8
run 40

#jump ouputs for analysis - if test does not stop then this failed
#Jump should go to 0033fffc
add_force MemoryDataIn -radix hex 080cffff 
run 30
add_force MemoryDataIn -radix hex 01200008 

while {[get_value -radix hex /Mips_CPU/PC_output] !=  {0000101c}} {
	run 5
}

if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(8)] ==  {0000000c}} {
		puts "Correct! addi t0 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(8)]"
} else {
		puts "Wrong!   addi t0 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(8)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(9)] ==  {0000101c}} {
		puts "Correct! ori  t1 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(9)]"
} else {                    
		puts "Wrong!   ori  t1 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(9)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(10)] ==  {00000001}} {
		puts "Correct! slti t2 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(10)]"
} else {
		puts "Wrong!   slti t2 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(10)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(11)] ==  {0000000d}} {
		puts "Correct! addu t3 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(11)]"
} else {
		puts "Wrong!   addu t3 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(11)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(12)] ==  {00001010}} {
		puts "Correct! sub  t4 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(12)]"
} else {                    
		puts "Wrong!   sub  t4 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(12)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(13)] ==  {00000003}} {
		puts "Correct! sra  t5 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(13)]"
} else {                    
		puts "Wrong!   sra  t5 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(13)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(14)] ==  {00000060}} {
		puts "Correct! sllv t6 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(14)]"
} else {
		puts "Wrong!   sllv t6 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(14)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(15)] ==  {00000300}} {
		puts "Correct! sll  t7 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(15)]"
} else {                    
		puts "Wrong!   sll  t7 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(15)]"
}
if {[get_value -radix hex /Mips_CPU/RF/output_to_mux(24)] ==  {0000101c}} {
		puts "Correct! and  t8 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(24)]"
} else {                    
		puts "Wrong!   and  t8 = [get_value -radix hex /Mips_CPU/RF/output_to_mux(24)]"
}

