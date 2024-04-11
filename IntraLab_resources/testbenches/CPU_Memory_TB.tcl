restart 

add_force Clk 1 {0 5ns} -repeat_every 10ns
add_force MemWrite 1
add_force addr -radix hex 0000001c
add_force dataIn -radix hex 00000011
run 30