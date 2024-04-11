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
add_force {/CPU_TB/U_1/mw_U_0ram_table[3]} -radix hex {ACEB0013}
add_force {/CPU_TB/U_1/mw_U_0ram_table[4]} -radix hex {ACEB000f}

add_force Clock 1 {0 5ns} -repeat_every 10ns

add_force Reset 1
run 15 ns
add_force reset 0
	
run 210 ns

if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]] ==  {00000014}} {
		puts "Correct! sub:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
} else {
		puts "Wrong!   sub:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[8]]"
}
if {[get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]] ==  {00000014}} {
		puts "Correct! sub:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]]"
} else {
		puts "Wrong!   sub:  = [get_value -radix hex /CPU_TB/U_1/mw_U_0ram_table[9]]"
}