restart

add_force rst 1

add_force clk -radix hex {0 0ns} {1 5ns} -repeat_every 10000ps

run 20 ns

add_force A -radix unsigned 234
add_force B -radix unsigned 453
add_force rst 0

run 400 ns

if {[get_value -radix unsigned R] == [expr {106002}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}

add_force rst 1
run 20 ns

add_force A -radix unsigned 35643
add_force B -radix unsigned 453566
add_force rst 0

run 400 ns

if {[get_value -radix unsigned R] == [expr {16166452938}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}

add_force rst 1
run 20 ns

add_force A -radix unsigned 7
add_force B -radix unsigned 7
add_force rst 0

run 400 ns

if {[get_value -radix unsigned R] == [expr {49}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}

add_force rst 1
run 20 ns

add_force A -radix unsigned 0
add_force B -radix unsigned 73456356
add_force rst 0

run 400 ns

if {[get_value -radix unsigned R] == [expr {0}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}

add_force rst 1
run 20 ns

add_force A -radix unsigned 1
add_force B -radix unsigned 73456356
add_force rst 0

run 400 ns

if {[get_value -radix unsigned R] == [expr {73456356}]} {
	puts "Correct!"
} else {
	puts "Wrong!"
}