############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nlms_classes
set_top lms
add_files lms_classes/datatypes.h
add_files nlms_classes/nlms.cpp
add_files nlms_classes/nlms_class.h
add_files -tb nlms_classes/nlms_test.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./nlms_classes/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
