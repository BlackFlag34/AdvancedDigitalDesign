restart
add_force clock -radix hex {0 0ns} {1 5ns} -repeat_every 10000ps

add_force reset 1
run 10 ns
add_force reset 0

add_force Op -radix bin 001000
run 100