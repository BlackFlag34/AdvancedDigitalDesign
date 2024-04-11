restart 
#program 1
#addi $7, $0, 17 
#addi $11, $0, -3 
#and $11, $7, $11 
#sw $11, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {00EB5824}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB000f}

add_force Clock 1 {0 5ns} -repeat_every 10ns

add_force Reset 1
run 15 ns
add_force reset 0
	
run 160 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00000011}} {
		puts "Correct! and:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   and:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 2
#addi $7, $0, 17 
#addi $11, $0, -3 
#sub $11, $7, $11 
#sw $11, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {00EB5822}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB000f}


add_force Reset 1
run 15 ns
add_force reset 0
	
run 160 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00000014}} {
		puts "Correct! sub:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   sub:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 3
#addi $7, $0, 17 
#addi $11, $0, -3 
#addu $11, $7, $11 
#sw $11, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {00EB5821}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB000f}

add_force Reset 1
run 15 ns
add_force reset 0
	
run 160 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {0000000e}} {
		puts "Correct! addu:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   addu:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 4
#addi $7, $0, 17 
#addi $11, $0, -3 
#sra $11, $7, 1
#sw $11, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {00075843}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB000f}


add_force Reset 1
run 15 ns
add_force reset 0
	
run 160 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00000008}} {
		puts "Correct!  sra:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   	sra:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 5
#addi $7, $0, 17 
#addi $11, $0, -3 
#sllv $11, $7, $7 
#sw $11, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {00e75804}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB000f}


add_force Reset 1
run 15 ns
add_force reset 0
	
run 160 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00220000}} {
		puts "Correct! sllv:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   sllv:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 6
#addi $7, $0, 17 
#addi $11, $0, -3 
#slti $11, $7, 63 
#sw $11, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {28eb003f}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB000f}

add_force Reset 1
run 15 ns
add_force reset 0
	
run 160 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00000001}} {
		puts "Correct! slti:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   slti:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 7
#addi $7, $0, 17 
#addi $11, $0, -3 
#bne $11, $7, B_GO 
#addi $1, $0, 2 
#sll $0, $0, 0 
#sll $0, $0, 0 
#B_GO: addi $1, $0, 1 
#sw $1, 15($7) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20070011}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {200BFFFD}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {15670003}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {20010002}
add_force {/CPU_TB/U_1/mw_U_0ram_table[4]} -radix hex {00000000}
add_force {/CPU_TB/U_1/mw_U_0ram_table[5]} -radix hex {00000000}
add_force {/CPU_TB/U_1/mw_U_0ram_table[6]} -radix hex {20010001}
add_force {/CPU_TB/U_1/mw_U_0ram_table[7]} -radix hex {ACE1000f}

add_force Reset 1
run 15 ns
add_force reset 0
	
run 190 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00000001}} {
		puts "Correct!  bne:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!    bne:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 8
#lui $1, 0x00001001 
#ori $13, $1,0x00000020 
#lui $1, 0x00000123 
#ori $9, $1,0x00004567 
#sw $9, 0($13) 
#lh $11, 2($13) 
#sw $11, 16($13) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {3c011001}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {342d0020}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {3c010123}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {34294567}
add_force {/CPU_TB/U_1/mw_U_0ram_table[4]} -radix hex {ada90000}
add_force {/CPU_TB/U_1/mw_U_0ram_table[5]} -radix hex {85ab0002}
add_force {/CPU_TB/U_1/mw_U_0ram_table[6]} -radix hex {adab0010}

add_force Reset 1
run 15 ns
add_force reset 0
	
run 270 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {01234567}} {
		puts "Correct!   sw:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!     sw:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}
if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[12]] ==  {00000123}} {
		puts "Correct!   lh:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[12]]"
} else {
		puts "Wrong!     lh:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[12]]"
}

restart
#program 9
#lui $1, 0x00001001 
#ori $13, $1,0x00000020 
#addi $9, $0,-45 
#clo, $10,$9 
#sw $10, 0($13)
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {3c011001}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {342d0020}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {2009ffd3}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {71205021}
add_force {/CPU_TB/U_1/mw_U_0ram_table[4]} -radix hex {adaa0000}

add_force Reset 1
run 15 ns
add_force reset 0
	
run 180 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {0000001a}} {
		puts "Correct!  clo:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!    clo:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}

restart
#program 10
#lui $1, 0x00001001 
#ori $3, $0, 0xFF0F
#sw $3, 32($1) 
#ori $5, $0, 0xBBBB
#sll $0,$0,0 
#lw $2, 32($1) 
#and $4, $2,$5 
#sw $4, 36($1) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {3c011001}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {3403ff0f}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {ac230020}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {3405bbbb}
add_force {/CPU_TB/U_1/mw_U_0ram_table[4]} -radix hex {00000000}
add_force {/CPU_TB/U_1/mw_U_0ram_table[5]} -radix hex {8c220020}
add_force {/CPU_TB/U_1/mw_U_0ram_table[6]} -radix hex {00452024}
add_force {/CPU_TB/U_1/mw_U_0ram_table[7]} -radix hex {ac240024}

add_force Reset 1
run 15 ns
add_force reset 0
	
run 320 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {0000ff0f}} {
		puts "Correct!  ori:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!    ori:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}
if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]] ==  {0000bb0b}} {
		puts "Correct!  lw:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]]"
} else {
		puts "Wrong!    lw:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]]"
}

restart
#program 11
#addi $1, $0, 0x0080
#addi $2, $0, 0x1111
#addi $3, $0, 12
#multu $1, $2
#mfhi $4
#mflo $5
#sw $4 20($3)
#sw $5 24($3) 
#for intructions
add_force {/CPU_TB/U_1/mw_U_0ram_table[0]} -radix hex {20010080}
add_force {/CPU_TB/U_1/mw_U_0ram_table[1]} -radix hex {3c021010}
add_force {/CPU_TB/U_1/mw_U_0ram_table[2]} -radix hex {20421111}
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {2003000c}
add_force {/CPU_TB/U_1/mw_U_0ram_table[4]} -radix hex {00220019}
add_force {/CPU_TB/U_1/mw_U_0ram_table[5]} -radix hex {00002010}
add_force {/CPU_TB/U_1/mw_U_0ram_table[6]} -radix hex {00002812}
add_force {/CPU_TB/U_1/mw_U_0ram_table[7]} -radix hex {ac640018}
add_force {/CPU_TB/U_1/mw_U_0ram_table[8]} -radix hex {ac65001c}

add_force Reset 1
run 15 ns
add_force reset 0
	
while {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[10]] ==  {00000000}} {
	 run 10
}

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]] ==  {00000008}} {
		puts "Correct!  mfhi:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]]"
} else {
		puts "Wrong!    mfhi:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]]"
}
if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[10]] ==  {08088880}} {
		puts "Correct!  mflo:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[10]]"
} else {
		puts "Wrong!    mflo:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[10]]"
}