############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lms_classes
set_top lms
add_files lms_classes/lms_class.h
add_files lms_classes/lms.cpp
add_files lms_classes/datatypes.h
add_files -tb lms_classes/lms_test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./lms_classes/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
