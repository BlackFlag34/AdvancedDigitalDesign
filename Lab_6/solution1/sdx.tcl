# ==============================================================
# File generated on Fri Dec 08 16:33:21 -0500 2023
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../testbench.cpp -cflags { -Wno-unknown-pragmas}
add_files Lab_6/convolution.cpp
add_files Lab_6/convolution.hpp
add_files Lab_6/image.cpp
add_files Lab_6/image.hpp
add_files Lab_6/rock512.pgm
set_part xc7z020clg400-1
create_clock -name default -period 10
config_export -display_name=hw_conv
config_export -format=ip_catalog
config_export -rtl=vhdl
