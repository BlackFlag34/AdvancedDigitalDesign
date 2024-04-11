restart

#testing LSL register
add_force clock -radix hex {0 0ns} {1 5ns} -repeat_every 10000ps

add_force input -radix hex 10000011
add_force load 1
run 10 ns

if {[get_value -radix unsigned output] == [expr {0x10000011}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}

add_force load 0
add_force shift 1

run 10 ns

if {[get_value -radix unsigned output] == [expr {0x20000022}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}

run 15 ns

add_force shift 0

run 10 ns