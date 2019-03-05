############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AsignmentProj2
set_top img_conv_5x5
add_files img_conv_5x5.c
add_files img_conv_5x5.h
add_files img_conv_5x5.c
add_files img_conv_5x5.h
add_files -tb img_conv_test.c
add_files -tb img_conv_test.c
open_solution "solution1"
set_part {xa7z030fbv484-1i} -tool vivado
create_clock -period 10 -name default
#source "./AsignmentProj2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
