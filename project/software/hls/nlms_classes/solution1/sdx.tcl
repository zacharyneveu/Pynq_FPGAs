# ==============================================================
# File generated on Fri Feb 28 16:01:51 EST 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../lms_test.cpp -cflags { -Wno-unknown-pragmas}
add_files lms_classes/datatypes.h
add_files lms_classes/lms.cpp
add_files lms_classes/lms_class.h
set_part xc7z020clg400-1
create_clock -name default -period 10
