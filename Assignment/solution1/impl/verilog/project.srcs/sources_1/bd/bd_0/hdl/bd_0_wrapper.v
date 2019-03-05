//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Feb 28 11:55:33 2019
//Host        : DESKTOP-DQMU8ME running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    inptr_address0,
    inptr_address1,
    inptr_ce0,
    inptr_ce1,
    inptr_q0,
    inptr_q1,
    mask_address0,
    mask_address1,
    mask_ce0,
    mask_ce1,
    mask_q0,
    mask_q1,
    outptr_address0,
    outptr_ce0,
    outptr_d0,
    outptr_we0,
    shift);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [10:0]inptr_address0;
  output [10:0]inptr_address1;
  output inptr_ce0;
  output [0:0]inptr_ce1;
  input [7:0]inptr_q0;
  input [7:0]inptr_q1;
  output [4:0]mask_address0;
  output [4:0]mask_address1;
  output mask_ce0;
  output [0:0]mask_ce1;
  input [7:0]mask_q0;
  input [7:0]mask_q1;
  output [5:0]outptr_address0;
  output outptr_ce0;
  output [7:0]outptr_d0;
  output outptr_we0;
  input [31:0]shift;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [10:0]inptr_address0;
  wire [10:0]inptr_address1;
  wire inptr_ce0;
  wire [0:0]inptr_ce1;
  wire [7:0]inptr_q0;
  wire [7:0]inptr_q1;
  wire [4:0]mask_address0;
  wire [4:0]mask_address1;
  wire mask_ce0;
  wire [0:0]mask_ce1;
  wire [7:0]mask_q0;
  wire [7:0]mask_q1;
  wire [5:0]outptr_address0;
  wire outptr_ce0;
  wire [7:0]outptr_d0;
  wire outptr_we0;
  wire [31:0]shift;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .inptr_address0(inptr_address0),
        .inptr_address1(inptr_address1),
        .inptr_ce0(inptr_ce0),
        .inptr_ce1(inptr_ce1),
        .inptr_q0(inptr_q0),
        .inptr_q1(inptr_q1),
        .mask_address0(mask_address0),
        .mask_address1(mask_address1),
        .mask_ce0(mask_ce0),
        .mask_ce1(mask_ce1),
        .mask_q0(mask_q0),
        .mask_q1(mask_q1),
        .outptr_address0(outptr_address0),
        .outptr_ce0(outptr_ce0),
        .outptr_d0(outptr_d0),
        .outptr_we0(outptr_we0),
        .shift(shift));
endmodule
