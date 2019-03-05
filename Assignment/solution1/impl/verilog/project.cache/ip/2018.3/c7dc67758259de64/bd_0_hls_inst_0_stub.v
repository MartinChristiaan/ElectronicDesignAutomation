// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 28 11:56:20 2019
// Host        : DESKTOP-DQMU8ME running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7z030fbv484-1I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "img_conv_5x5,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(inptr_ce0, outptr_ce0, outptr_we0, mask_ce0, 
  ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, inptr_address0, inptr_q0, inptr_address1, 
  inptr_ce1, inptr_q1, outptr_address0, outptr_d0, mask_address0, mask_q0, mask_address1, 
  mask_ce1, mask_q1, shift)
/* synthesis syn_black_box black_box_pad_pin="inptr_ce0,outptr_ce0,outptr_we0,mask_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,inptr_address0[10:0],inptr_q0[7:0],inptr_address1[10:0],inptr_ce1[0:0],inptr_q1[7:0],outptr_address0[5:0],outptr_d0[7:0],mask_address0[4:0],mask_q0[7:0],mask_address1[4:0],mask_ce1[0:0],mask_q1[7:0],shift[31:0]" */;
  output inptr_ce0;
  output outptr_ce0;
  output outptr_we0;
  output mask_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [10:0]inptr_address0;
  input [7:0]inptr_q0;
  output [10:0]inptr_address1;
  output [0:0]inptr_ce1;
  input [7:0]inptr_q1;
  output [5:0]outptr_address0;
  output [7:0]outptr_d0;
  output [4:0]mask_address0;
  input [7:0]mask_q0;
  output [4:0]mask_address1;
  output [0:0]mask_ce1;
  input [7:0]mask_q1;
  input [31:0]shift;
endmodule
