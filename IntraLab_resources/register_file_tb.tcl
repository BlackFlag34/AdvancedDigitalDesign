restart
add_force clock -radix hex {0 0ns} {1 5ns} -repeat_every 10000ps

add_force reset 1
run 10 ns
add_force reset 0

for {set i 0} {$i < 32} {incr i} {
	add_force write_register -radix unsigned [expr $i]
	add_force write_data -radix unsigned [expr $i*111]
	add_force RegWrite 1
	run 10 ns
}
add_force RegWrite 0

for {set i 0} {$i < 32} {incr i} {
	add_force read_register_1 -radix unsigned [expr $i]
	add_force read_register_2 -radix unsigned [expr 31 - $i]
	run 10 ns
	if {[get_value -radix unsigned read_data_1] == [expr 111*$i]} {
		puts "Correct! 1 i= $i"
	}
	
	if {[get_value -radix unsigned read_data_2] == [expr 111*(31 - $i)]} { 
		puts "Correct! 2 i= $i"
	}
	
}

add_force reset 1
run 10 ns
add_force reset 0

for {set i 0} {$i < 32} {incr i} {
	add_force write_register -radix unsigned [expr $i]
	add_force write_data -radix unsigned [expr $i*222]
	add_force RegWrite 1
	run 10 ns
}
add_force RegWrite 0

for {set i 0} {$i < 32} {incr i} {
	add_force read_register_1 -radix unsigned [expr $i]
	add_force read_register_2 -radix unsigned [expr 31 - $i]
	run 10 ns
	if {[get_value -radix unsigned read_data_1] == [expr 222*$i]} {
		puts "Correct! 1 i= $i"
	}
	
	if {[get_value -radix unsigned read_data_2] == [expr 222*(31 - $i)]} { 
		puts "Correct! 2 i= $i"
	}
	
}