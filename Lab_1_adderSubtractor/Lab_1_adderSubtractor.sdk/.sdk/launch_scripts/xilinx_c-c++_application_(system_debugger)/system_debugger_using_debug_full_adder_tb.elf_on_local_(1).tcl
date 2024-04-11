connect -url tcp:127.0.0.1:3121
source C:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_1_adderSubtractor/Lab_1_adderSubtractor.sdk/Lab_1_adderSub_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2AEA" && level==0} -index 1
fpga -file C:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_1_adderSubtractor/Lab_1_adderSubtractor.sdk/Lab_1_adderSub_wrapper_hw_platform_0/Lab_1_adderSub_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2AEA"} -index 0
loadhw -hw C:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_1_adderSubtractor/Lab_1_adderSubtractor.sdk/Lab_1_adderSub_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2AEA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2AEA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2AEA"} -index 0
dow C:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_1_adderSubtractor/Lab_1_adderSubtractor.sdk/Full_adder_TB/Debug/Full_adder_TB.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2AEA"} -index 0
con
