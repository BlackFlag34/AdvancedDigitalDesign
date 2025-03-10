############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Lab_6
set_top hw_conv
add_files Lab_6/rock512.pgm
add_files Lab_6/image.hpp
add_files Lab_6/image.cpp
add_files Lab_6/convolution.hpp
add_files Lab_6/convolution.cpp
add_files -tb Lab_6/testbench.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -display_name hw_conv -format ip_catalog -rtl vhdl
#source "./Lab_6/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -display_name "hw_conv"
