# ==============================================================
# File generated on Sat Mar 09 10:48:32 +0100 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../img_conv_test.c -cflags { -Wno-unknown-pragmas}
add_files -tb ../../img_conv_5x5.h -cflags { -Wno-unknown-pragmas}
add_files img_conv_5x5.h
add_files img_conv_5x5.c
add_files full_img_conv_5x5.c
set_part xa7z030fbv484-1i
create_clock -name default -period 10
