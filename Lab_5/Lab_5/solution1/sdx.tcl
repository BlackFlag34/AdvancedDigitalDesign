# ==============================================================
# File generated on Tue Nov 14 22:02:18 -0500 2023
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../vhls/mmult_test.cpp -cflags { -Wno-unknown-pragmas}
add_files vhls/mmult.h
add_files vhls/mmult_accel.cpp
add_files vhls/mmult_test.cpp
set_part xc7z020clg400-1
create_clock -name default -period 10
