//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Feb 28 11:55:33 2019
//Host        : DESKTOP-DQMU8ME running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPTR_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPTR_ADDRESS0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [10:0]inptr_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPTR_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPTR_ADDRESS1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [10:0]inptr_address1;
  output inptr_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPTR_CE1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPTR_CE1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [0:0]inptr_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPTR_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPTR_Q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [7:0]inptr_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPTR_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPTR_Q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [7:0]inptr_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MASK_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MASK_ADDRESS0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [4:0]mask_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MASK_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MASK_ADDRESS1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [4:0]mask_address1;
  output mask_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MASK_CE1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MASK_CE1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [0:0]mask_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MASK_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MASK_Q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *) input [7:0]mask_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MASK_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MASK_Q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [7:0]mask_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTPTR_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTPTR_ADDRESS0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [5:0]outptr_address0;
  output outptr_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTPTR_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTPTR_D0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [7:0]outptr_d0;
  output outptr_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SHIFT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SHIFT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *) input [31:0]shift;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [10:0]hls_inst_inptr_address0;
  wire [10:0]hls_inst_inptr_address1;
  wire hls_inst_inptr_ce0;
  wire [0:0]hls_inst_inptr_ce1;
  wire [4:0]hls_inst_mask_address0;
  wire [4:0]hls_inst_mask_address1;
  wire hls_inst_mask_ce0;
  wire [0:0]hls_inst_mask_ce1;
  wire [5:0]hls_inst_outptr_address0;
  wire hls_inst_outptr_ce0;
  wire [7:0]hls_inst_outptr_d0;
  wire hls_inst_outptr_we0;
  wire [7:0]inptr_q0_0_1;
  wire [7:0]inptr_q1_0_1;
  wire [7:0]mask_q0_0_1;
  wire [7:0]mask_q1_0_1;
  wire [31:0]shift_0_1;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign inptr_address0[10:0] = hls_inst_inptr_address0;
  assign inptr_address1[10:0] = hls_inst_inptr_address1;
  assign inptr_ce0 = hls_inst_inptr_ce0;
  assign inptr_ce1[0] = hls_inst_inptr_ce1;
  assign inptr_q0_0_1 = inptr_q0[7:0];
  assign inptr_q1_0_1 = inptr_q1[7:0];
  assign mask_address0[4:0] = hls_inst_mask_address0;
  assign mask_address1[4:0] = hls_inst_mask_address1;
  assign mask_ce0 = hls_inst_mask_ce0;
  assign mask_ce1[0] = hls_inst_mask_ce1;
  assign mask_q0_0_1 = mask_q0[7:0];
  assign mask_q1_0_1 = mask_q1[7:0];
  assign outptr_address0[5:0] = hls_inst_outptr_address0;
  assign outptr_ce0 = hls_inst_outptr_ce0;
  assign outptr_d0[7:0] = hls_inst_outptr_d0;
  assign outptr_we0 = hls_inst_outptr_we0;
  assign shift_0_1 = shift[31:0];
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .inptr_address0(hls_inst_inptr_address0),
        .inptr_address1(hls_inst_inptr_address1),
        .inptr_ce0(hls_inst_inptr_ce0),
        .inptr_ce1(hls_inst_inptr_ce1),
        .inptr_q0(inptr_q0_0_1),
        .inptr_q1(inptr_q1_0_1),
        .mask_address0(hls_inst_mask_address0),
        .mask_address1(hls_inst_mask_address1),
        .mask_ce0(hls_inst_mask_ce0),
        .mask_ce1(hls_inst_mask_ce1),
        .mask_q0(mask_q0_0_1),
        .mask_q1(mask_q1_0_1),
        .outptr_address0(hls_inst_outptr_address0),
        .outptr_ce0(hls_inst_outptr_ce0),
        .outptr_d0(hls_inst_outptr_d0),
        .outptr_we0(hls_inst_outptr_we0),
        .shift(shift_0_1));
endmodule
