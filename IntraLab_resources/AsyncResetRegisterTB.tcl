restart
add_force clock -radix hex {0 0ns} {1 5ns} -repeat_every 10000ps

add_force reset 1
run 10 ns
add_force reset 0

for {set i 0} {$i < 32} {incr i} {
	add_force input -radix unsigned [expr $i*2]
	add_force load 1
	run 10 ns
	add_force load 0
	if {[get_value -radix unsigned output] == [expr 2*$i]} {
		puts "Correct! $i"
	}
}