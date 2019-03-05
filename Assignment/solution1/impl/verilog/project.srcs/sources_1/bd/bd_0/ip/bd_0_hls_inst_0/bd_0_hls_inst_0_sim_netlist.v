// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 28 11:56:21 2019
// Host        : DESKTOP-DQMU8ME running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/marti/source/repos/EDA_Assignment/Assignment/solution1/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7z030fbv484-1I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,img_conv_5x5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "img_conv_5x5,Vivado 2018.3" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (inptr_ce0,
    outptr_ce0,
    outptr_we0,
    mask_ce0,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    inptr_address0,
    inptr_q0,
    inptr_address1,
    inptr_ce1,
    inptr_q1,
    outptr_address0,
    outptr_d0,
    mask_address0,
    mask_q0,
    mask_address1,
    mask_ce1,
    mask_q1,
    shift);
  output inptr_ce0;
  output outptr_ce0;
  output outptr_we0;
  output mask_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inptr_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inptr_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [10:0]inptr_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inptr_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inptr_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [7:0]inptr_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inptr_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inptr_address1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [10:0]inptr_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inptr_ce1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inptr_ce1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [0:0]inptr_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 inptr_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME inptr_q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [7:0]inptr_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outptr_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outptr_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [5:0]outptr_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 outptr_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME outptr_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [7:0]outptr_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mask_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mask_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [4:0]mask_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mask_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mask_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *) input [7:0]mask_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mask_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mask_address1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [4:0]mask_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mask_ce1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mask_ce1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [0:0]mask_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mask_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mask_q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [7:0]mask_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 shift DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME shift, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *) input [31:0]shift;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
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

  (* ap_ST_fsm_state1 = "9'b000000001" *) 
  (* ap_ST_fsm_state2 = "9'b000000010" *) 
  (* ap_ST_fsm_state3 = "9'b000000100" *) 
  (* ap_ST_fsm_state4 = "9'b000001000" *) 
  (* ap_ST_fsm_state5 = "9'b000010000" *) 
  (* ap_ST_fsm_state6 = "9'b000100000" *) 
  (* ap_ST_fsm_state7 = "9'b001000000" *) 
  (* ap_ST_fsm_state8 = "9'b010000000" *) 
  (* ap_ST_fsm_state9 = "9'b100000000" *) 
  bd_0_hls_inst_0_img_conv_5x5 inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
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

(* ORIG_REF_NAME = "img_conv_5x5" *) (* ap_ST_fsm_state1 = "9'b000000001" *) (* ap_ST_fsm_state2 = "9'b000000010" *) 
(* ap_ST_fsm_state3 = "9'b000000100" *) (* ap_ST_fsm_state4 = "9'b000001000" *) (* ap_ST_fsm_state5 = "9'b000010000" *) 
(* ap_ST_fsm_state6 = "9'b000100000" *) (* ap_ST_fsm_state7 = "9'b001000000" *) (* ap_ST_fsm_state8 = "9'b010000000" *) 
(* ap_ST_fsm_state9 = "9'b100000000" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_img_conv_5x5
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    inptr_address0,
    inptr_ce0,
    inptr_q0,
    inptr_address1,
    inptr_ce1,
    inptr_q1,
    outptr_address0,
    outptr_ce0,
    outptr_we0,
    outptr_d0,
    mask_address0,
    mask_ce0,
    mask_q0,
    mask_address1,
    mask_ce1,
    mask_q1,
    shift);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [10:0]inptr_address0;
  output inptr_ce0;
  input [7:0]inptr_q0;
  output [10:0]inptr_address1;
  output inptr_ce1;
  input [7:0]inptr_q1;
  output [5:0]outptr_address0;
  output outptr_ce0;
  output outptr_we0;
  output [7:0]outptr_d0;
  output [4:0]mask_address0;
  output mask_ce0;
  input [7:0]mask_q0;
  output [4:0]mask_address1;
  output mask_ce1;
  input [7:0]mask_q1;
  input [31:0]shift;

  wire \<const0> ;
  wire IN5_0_rec_reg_186;
  wire [5:0]IN5_0_rec_reg_186__0;
  wire \ap_CS_fsm[0]_i_3_n_2 ;
  wire \ap_CS_fsm_reg_n_2_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire [8:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_ready_INST_0_i_1_n_2;
  wire ap_rst;
  wire ap_start;
  wire exitcond2_fu_246_p2;
  wire [2:0]i_1_fu_272_p2;
  wire [2:0]i_1_reg_606;
  wire [2:0]i_cast_reg_597;
  wire i_reg_2100;
  wire icmp_fu_376_p2;
  wire icmp_reg_637;
  wire \icmp_reg_637[0]_i_10_n_2 ;
  wire \icmp_reg_637[0]_i_11_n_2 ;
  wire \icmp_reg_637[0]_i_12_n_2 ;
  wire \icmp_reg_637[0]_i_13_n_2 ;
  wire \icmp_reg_637[0]_i_14_n_2 ;
  wire \icmp_reg_637[0]_i_15_n_2 ;
  wire \icmp_reg_637[0]_i_16_n_2 ;
  wire \icmp_reg_637[0]_i_17_n_2 ;
  wire \icmp_reg_637[0]_i_18_n_2 ;
  wire \icmp_reg_637[0]_i_19_n_2 ;
  wire \icmp_reg_637[0]_i_20_n_2 ;
  wire \icmp_reg_637[0]_i_21_n_2 ;
  wire \icmp_reg_637[0]_i_22_n_2 ;
  wire \icmp_reg_637[0]_i_23_n_2 ;
  wire \icmp_reg_637[0]_i_24_n_2 ;
  wire \icmp_reg_637[0]_i_25_n_2 ;
  wire \icmp_reg_637[0]_i_2_n_2 ;
  wire \icmp_reg_637[0]_i_3_n_2 ;
  wire \icmp_reg_637[0]_i_4_n_2 ;
  wire \icmp_reg_637[0]_i_5_n_2 ;
  wire \icmp_reg_637[0]_i_6_n_2 ;
  wire \icmp_reg_637[0]_i_7_n_2 ;
  wire \icmp_reg_637[0]_i_8_n_2 ;
  wire \icmp_reg_637[0]_i_9_n_2 ;
  wire img_conv_5x5_mac_bkb_U3_n_10;
  wire img_conv_5x5_mac_bkb_U3_n_11;
  wire img_conv_5x5_mac_bkb_U3_n_12;
  wire img_conv_5x5_mac_bkb_U3_n_13;
  wire img_conv_5x5_mac_bkb_U3_n_14;
  wire img_conv_5x5_mac_bkb_U3_n_15;
  wire img_conv_5x5_mac_bkb_U3_n_16;
  wire img_conv_5x5_mac_bkb_U3_n_17;
  wire img_conv_5x5_mac_bkb_U3_n_18;
  wire img_conv_5x5_mac_bkb_U3_n_2;
  wire img_conv_5x5_mac_bkb_U3_n_3;
  wire img_conv_5x5_mac_bkb_U3_n_4;
  wire img_conv_5x5_mac_bkb_U3_n_5;
  wire img_conv_5x5_mac_bkb_U3_n_6;
  wire img_conv_5x5_mac_bkb_U3_n_7;
  wire img_conv_5x5_mac_bkb_U3_n_8;
  wire img_conv_5x5_mac_bkb_U3_n_9;
  wire [6:0]\^inptr_address0 ;
  wire \inptr_address0[1]_INST_0_i_1_n_2 ;
  wire \inptr_address0[1]_INST_0_i_2_n_2 ;
  wire \inptr_address0[2]_INST_0_i_1_n_2 ;
  wire \inptr_address0[2]_INST_0_i_2_n_2 ;
  wire \inptr_address0[2]_INST_0_i_3_n_2 ;
  wire \inptr_address0[3]_INST_0_i_1_n_2 ;
  wire \inptr_address0[4]_INST_0_i_1_n_2 ;
  wire \inptr_address0[5]_INST_0_i_1_n_2 ;
  wire [7:0]\^inptr_address1 ;
  wire inptr_ce0;
  wire inptr_ce1;
  wire [7:0]inptr_q0;
  wire [7:0]inptr_q1;
  wire [4:0]mask_address0;
  wire [4:0]mask_address1;
  wire [7:0]mask_q0;
  wire [7:0]mask_q1;
  wire [5:0]outptr_address0;
  wire [7:0]outptr_d0;
  wire outptr_we0;
  wire [17:0]p_cast_fu_516_p1;
  wire [5:0]p_rec_fu_252_p2;
  wire [5:0]p_rec_reg_586;
  wire reg_2210;
  wire [31:0]shift;
  wire sum00_fu_454_p2_n_100;
  wire sum00_fu_454_p2_n_101;
  wire sum00_fu_454_p2_n_102;
  wire sum00_fu_454_p2_n_103;
  wire sum00_fu_454_p2_n_104;
  wire sum00_fu_454_p2_n_105;
  wire sum00_fu_454_p2_n_106;
  wire sum00_fu_454_p2_n_107;
  wire sum00_fu_454_p2_n_91;
  wire sum00_fu_454_p2_n_92;
  wire sum00_fu_454_p2_n_93;
  wire sum00_fu_454_p2_n_94;
  wire sum00_fu_454_p2_n_95;
  wire sum00_fu_454_p2_n_96;
  wire sum00_fu_454_p2_n_97;
  wire sum00_fu_454_p2_n_98;
  wire sum00_fu_454_p2_n_99;
  wire sum33_reg_707_reg_n_100;
  wire sum33_reg_707_reg_n_101;
  wire sum33_reg_707_reg_n_102;
  wire sum33_reg_707_reg_n_103;
  wire sum33_reg_707_reg_n_104;
  wire sum33_reg_707_reg_n_105;
  wire sum33_reg_707_reg_n_106;
  wire sum33_reg_707_reg_n_107;
  wire sum33_reg_707_reg_n_92;
  wire sum33_reg_707_reg_n_93;
  wire sum33_reg_707_reg_n_94;
  wire sum33_reg_707_reg_n_95;
  wire sum33_reg_707_reg_n_96;
  wire sum33_reg_707_reg_n_97;
  wire sum33_reg_707_reg_n_98;
  wire sum33_reg_707_reg_n_99;
  wire [6:0]sum3_fu_306_p2;
  wire [6:6]sum3_reg_616;
  wire sum3_reg_6160;
  wire \sum3_reg_616[5]_i_3_n_2 ;
  wire [6:6]sum5_fu_319_p2;
  wire [6:6]sum5_reg_622;
  wire [6:0]sum9_fu_332_p2;
  wire [6:0]sum9_reg_627;
  wire \sum9_reg_627[3]_i_2_n_2 ;
  wire \sum9_reg_627[3]_i_3_n_2 ;
  wire \sum9_reg_627[3]_i_4_n_2 ;
  wire \sum9_reg_627_reg[3]_i_1_n_2 ;
  wire \sum9_reg_627_reg[3]_i_1_n_3 ;
  wire \sum9_reg_627_reg[3]_i_1_n_4 ;
  wire \sum9_reg_627_reg[3]_i_1_n_5 ;
  wire \sum9_reg_627_reg[6]_i_1_n_5 ;
  wire [20:0]sum_2_fu_520_p2;
  wire [20:0]sum_reg_198;
  wire \sum_reg_198[11]_i_10_n_2 ;
  wire \sum_reg_198[11]_i_2_n_2 ;
  wire \sum_reg_198[11]_i_3_n_2 ;
  wire \sum_reg_198[11]_i_4_n_2 ;
  wire \sum_reg_198[11]_i_5_n_2 ;
  wire \sum_reg_198[11]_i_7_n_2 ;
  wire \sum_reg_198[11]_i_8_n_2 ;
  wire \sum_reg_198[11]_i_9_n_2 ;
  wire \sum_reg_198[15]_i_2_n_2 ;
  wire \sum_reg_198[15]_i_3_n_2 ;
  wire \sum_reg_198[15]_i_4_n_2 ;
  wire \sum_reg_198[15]_i_5_n_2 ;
  wire \sum_reg_198[19]_i_10_n_2 ;
  wire \sum_reg_198[19]_i_11_n_2 ;
  wire \sum_reg_198[19]_i_12_n_2 ;
  wire \sum_reg_198[19]_i_13_n_2 ;
  wire \sum_reg_198[19]_i_14_n_2 ;
  wire \sum_reg_198[19]_i_3_n_2 ;
  wire \sum_reg_198[19]_i_4_n_2 ;
  wire \sum_reg_198[19]_i_5_n_2 ;
  wire \sum_reg_198[19]_i_6_n_2 ;
  wire \sum_reg_198[19]_i_8_n_2 ;
  wire \sum_reg_198[19]_i_9_n_2 ;
  wire \sum_reg_198[20]_i_2_n_2 ;
  wire \sum_reg_198[3]_i_10_n_2 ;
  wire \sum_reg_198[3]_i_2_n_2 ;
  wire \sum_reg_198[3]_i_3_n_2 ;
  wire \sum_reg_198[3]_i_4_n_2 ;
  wire \sum_reg_198[3]_i_5_n_2 ;
  wire \sum_reg_198[3]_i_7_n_2 ;
  wire \sum_reg_198[3]_i_8_n_2 ;
  wire \sum_reg_198[3]_i_9_n_2 ;
  wire \sum_reg_198[7]_i_10_n_2 ;
  wire \sum_reg_198[7]_i_2_n_2 ;
  wire \sum_reg_198[7]_i_3_n_2 ;
  wire \sum_reg_198[7]_i_4_n_2 ;
  wire \sum_reg_198[7]_i_5_n_2 ;
  wire \sum_reg_198[7]_i_7_n_2 ;
  wire \sum_reg_198[7]_i_8_n_2 ;
  wire \sum_reg_198[7]_i_9_n_2 ;
  wire \sum_reg_198_reg[11]_i_1_n_2 ;
  wire \sum_reg_198_reg[11]_i_1_n_3 ;
  wire \sum_reg_198_reg[11]_i_1_n_4 ;
  wire \sum_reg_198_reg[11]_i_1_n_5 ;
  wire \sum_reg_198_reg[11]_i_6_n_2 ;
  wire \sum_reg_198_reg[11]_i_6_n_3 ;
  wire \sum_reg_198_reg[11]_i_6_n_4 ;
  wire \sum_reg_198_reg[11]_i_6_n_5 ;
  wire \sum_reg_198_reg[15]_i_1_n_2 ;
  wire \sum_reg_198_reg[15]_i_1_n_3 ;
  wire \sum_reg_198_reg[15]_i_1_n_4 ;
  wire \sum_reg_198_reg[15]_i_1_n_5 ;
  wire \sum_reg_198_reg[19]_i_1_n_2 ;
  wire \sum_reg_198_reg[19]_i_1_n_3 ;
  wire \sum_reg_198_reg[19]_i_1_n_4 ;
  wire \sum_reg_198_reg[19]_i_1_n_5 ;
  wire \sum_reg_198_reg[19]_i_2_n_3 ;
  wire \sum_reg_198_reg[19]_i_2_n_5 ;
  wire \sum_reg_198_reg[19]_i_7_n_2 ;
  wire \sum_reg_198_reg[19]_i_7_n_3 ;
  wire \sum_reg_198_reg[19]_i_7_n_4 ;
  wire \sum_reg_198_reg[19]_i_7_n_5 ;
  wire \sum_reg_198_reg[3]_i_1_n_2 ;
  wire \sum_reg_198_reg[3]_i_1_n_3 ;
  wire \sum_reg_198_reg[3]_i_1_n_4 ;
  wire \sum_reg_198_reg[3]_i_1_n_5 ;
  wire \sum_reg_198_reg[3]_i_6_n_2 ;
  wire \sum_reg_198_reg[3]_i_6_n_3 ;
  wire \sum_reg_198_reg[3]_i_6_n_4 ;
  wire \sum_reg_198_reg[3]_i_6_n_5 ;
  wire \sum_reg_198_reg[7]_i_1_n_2 ;
  wire \sum_reg_198_reg[7]_i_1_n_3 ;
  wire \sum_reg_198_reg[7]_i_1_n_4 ;
  wire \sum_reg_198_reg[7]_i_1_n_5 ;
  wire \sum_reg_198_reg[7]_i_6_n_2 ;
  wire \sum_reg_198_reg[7]_i_6_n_3 ;
  wire \sum_reg_198_reg[7]_i_6_n_4 ;
  wire \sum_reg_198_reg[7]_i_6_n_5 ;
  wire [2:0]tmp1_fu_298_p3;
  wire tmp7_reg_712_reg_n_100;
  wire tmp7_reg_712_reg_n_101;
  wire tmp7_reg_712_reg_n_102;
  wire tmp7_reg_712_reg_n_103;
  wire tmp7_reg_712_reg_n_104;
  wire tmp7_reg_712_reg_n_105;
  wire tmp7_reg_712_reg_n_106;
  wire tmp7_reg_712_reg_n_107;
  wire tmp7_reg_712_reg_n_91;
  wire tmp7_reg_712_reg_n_92;
  wire tmp7_reg_712_reg_n_93;
  wire tmp7_reg_712_reg_n_94;
  wire tmp7_reg_712_reg_n_95;
  wire tmp7_reg_712_reg_n_96;
  wire tmp7_reg_712_reg_n_97;
  wire tmp7_reg_712_reg_n_98;
  wire tmp7_reg_712_reg_n_99;
  wire tmp8_reg_717_reg_n_100;
  wire tmp8_reg_717_reg_n_101;
  wire tmp8_reg_717_reg_n_102;
  wire tmp8_reg_717_reg_n_103;
  wire tmp8_reg_717_reg_n_104;
  wire tmp8_reg_717_reg_n_105;
  wire tmp8_reg_717_reg_n_106;
  wire tmp8_reg_717_reg_n_107;
  wire tmp8_reg_717_reg_n_90;
  wire tmp8_reg_717_reg_n_91;
  wire tmp8_reg_717_reg_n_92;
  wire tmp8_reg_717_reg_n_93;
  wire tmp8_reg_717_reg_n_94;
  wire tmp8_reg_717_reg_n_95;
  wire tmp8_reg_717_reg_n_96;
  wire tmp8_reg_717_reg_n_97;
  wire tmp8_reg_717_reg_n_98;
  wire tmp8_reg_717_reg_n_99;
  wire [7:0]tmp_13_reg_642;
  wire \tmp_13_reg_642[0]_i_1_n_2 ;
  wire \tmp_13_reg_642[0]_i_2_n_2 ;
  wire \tmp_13_reg_642[0]_i_3_n_2 ;
  wire \tmp_13_reg_642[1]_i_1_n_2 ;
  wire \tmp_13_reg_642[1]_i_2_n_2 ;
  wire \tmp_13_reg_642[1]_i_3_n_2 ;
  wire \tmp_13_reg_642[2]_i_1_n_2 ;
  wire \tmp_13_reg_642[2]_i_2_n_2 ;
  wire \tmp_13_reg_642[2]_i_3_n_2 ;
  wire \tmp_13_reg_642[2]_i_4_n_2 ;
  wire \tmp_13_reg_642[3]_i_1_n_2 ;
  wire \tmp_13_reg_642[3]_i_2_n_2 ;
  wire \tmp_13_reg_642[3]_i_3_n_2 ;
  wire \tmp_13_reg_642[3]_i_4_n_2 ;
  wire \tmp_13_reg_642[4]_i_1_n_2 ;
  wire \tmp_13_reg_642[4]_i_2_n_2 ;
  wire \tmp_13_reg_642[4]_i_3_n_2 ;
  wire \tmp_13_reg_642[4]_i_4_n_2 ;
  wire \tmp_13_reg_642[5]_i_1_n_2 ;
  wire \tmp_13_reg_642[5]_i_2_n_2 ;
  wire \tmp_13_reg_642[5]_i_3_n_2 ;
  wire \tmp_13_reg_642[6]_i_1_n_2 ;
  wire \tmp_13_reg_642[6]_i_2_n_2 ;
  wire \tmp_13_reg_642[6]_i_3_n_2 ;
  wire \tmp_13_reg_642[6]_i_4_n_2 ;
  wire \tmp_13_reg_642[7]_i_1_n_2 ;
  wire \tmp_13_reg_642[7]_i_2_n_2 ;
  wire \tmp_13_reg_642[7]_i_3_n_2 ;
  wire \tmp_13_reg_642[7]_i_4_n_2 ;
  wire \tmp_13_reg_642[7]_i_5_n_2 ;
  wire \tmp_13_reg_642[7]_i_6_n_2 ;
  wire NLW_sum00_fu_454_p2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_sum00_fu_454_p2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_sum00_fu_454_p2_OVERFLOW_UNCONNECTED;
  wire NLW_sum00_fu_454_p2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_sum00_fu_454_p2_PATTERNDETECT_UNCONNECTED;
  wire NLW_sum00_fu_454_p2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_sum00_fu_454_p2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_sum00_fu_454_p2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_sum00_fu_454_p2_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_sum00_fu_454_p2_P_UNCONNECTED;
  wire [47:0]NLW_sum00_fu_454_p2_PCOUT_UNCONNECTED;
  wire NLW_sum33_reg_707_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_sum33_reg_707_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_sum33_reg_707_reg_OVERFLOW_UNCONNECTED;
  wire NLW_sum33_reg_707_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_sum33_reg_707_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_sum33_reg_707_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_sum33_reg_707_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_sum33_reg_707_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_sum33_reg_707_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_sum33_reg_707_reg_P_UNCONNECTED;
  wire [47:0]NLW_sum33_reg_707_reg_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_sum9_reg_627_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum9_reg_627_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_sum_reg_198_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_reg_198_reg[19]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_reg_198_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sum_reg_198_reg[20]_i_1_O_UNCONNECTED ;
  wire NLW_tmp7_reg_712_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp7_reg_712_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp7_reg_712_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp7_reg_712_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp7_reg_712_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp7_reg_712_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp7_reg_712_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp7_reg_712_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp7_reg_712_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_tmp7_reg_712_reg_P_UNCONNECTED;
  wire [47:0]NLW_tmp7_reg_712_reg_PCOUT_UNCONNECTED;
  wire NLW_tmp8_reg_717_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp8_reg_717_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp8_reg_717_reg_OVERFLOW_UNCONNECTED;
  wire NLW_tmp8_reg_717_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp8_reg_717_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp8_reg_717_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp8_reg_717_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp8_reg_717_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp8_reg_717_reg_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp8_reg_717_reg_P_UNCONNECTED;
  wire [47:0]NLW_tmp8_reg_717_reg_PCOUT_UNCONNECTED;

  assign ap_done = ap_ready;
  assign inptr_address0[10] = \<const0> ;
  assign inptr_address0[9] = \<const0> ;
  assign inptr_address0[8] = mask_address0[4];
  assign inptr_address0[7] = \<const0> ;
  assign inptr_address0[6:0] = \^inptr_address0 [6:0];
  assign inptr_address1[10] = \<const0> ;
  assign inptr_address1[9] = \<const0> ;
  assign inptr_address1[8] = \<const0> ;
  assign inptr_address1[7:0] = \^inptr_address1 [7:0];
  assign mask_ce0 = inptr_ce0;
  assign mask_ce1 = inptr_ce1;
  assign outptr_ce0 = outptr_we0;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h40)) 
    \IN5_0_rec_reg_186[5]_i_1 
       (.I0(outptr_we0),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_2_[0] ),
        .O(IN5_0_rec_reg_186));
  FDRE \IN5_0_rec_reg_186_reg[0] 
       (.C(ap_clk),
        .CE(outptr_we0),
        .D(p_rec_reg_586[0]),
        .Q(IN5_0_rec_reg_186__0[0]),
        .R(IN5_0_rec_reg_186));
  FDRE \IN5_0_rec_reg_186_reg[1] 
       (.C(ap_clk),
        .CE(outptr_we0),
        .D(p_rec_reg_586[1]),
        .Q(IN5_0_rec_reg_186__0[1]),
        .R(IN5_0_rec_reg_186));
  FDRE \IN5_0_rec_reg_186_reg[2] 
       (.C(ap_clk),
        .CE(outptr_we0),
        .D(p_rec_reg_586[2]),
        .Q(IN5_0_rec_reg_186__0[2]),
        .R(IN5_0_rec_reg_186));
  FDRE \IN5_0_rec_reg_186_reg[3] 
       (.C(ap_clk),
        .CE(outptr_we0),
        .D(p_rec_reg_586[3]),
        .Q(IN5_0_rec_reg_186__0[3]),
        .R(IN5_0_rec_reg_186));
  FDRE \IN5_0_rec_reg_186_reg[4] 
       (.C(ap_clk),
        .CE(outptr_we0),
        .D(p_rec_reg_586[4]),
        .Q(IN5_0_rec_reg_186__0[4]),
        .R(IN5_0_rec_reg_186));
  FDRE \IN5_0_rec_reg_186_reg[5] 
       (.C(ap_clk),
        .CE(outptr_we0),
        .D(p_rec_reg_586[5]),
        .Q(IN5_0_rec_reg_186__0[5]),
        .R(IN5_0_rec_reg_186));
  LUT6 #(
    .INIT(64'h5500550055C05500)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(exitcond2_fu_246_p2),
        .I2(\ap_CS_fsm[0]_i_3_n_2 ),
        .I3(\ap_CS_fsm_reg_n_2_[0] ),
        .I4(ap_CS_fsm_state2),
        .I5(ap_CS_fsm_state3),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(IN5_0_rec_reg_186__0[3]),
        .I1(IN5_0_rec_reg_186__0[4]),
        .I2(IN5_0_rec_reg_186__0[5]),
        .I3(IN5_0_rec_reg_186__0[2]),
        .I4(IN5_0_rec_reg_186__0[1]),
        .I5(IN5_0_rec_reg_186__0[0]),
        .O(exitcond2_fu_246_p2));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[0]_i_3 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state7),
        .I2(ap_CS_fsm_state8),
        .I3(outptr_we0),
        .I4(ap_CS_fsm_state4),
        .I5(mask_address0[4]),
        .O(\ap_CS_fsm[0]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_2_[0] ),
        .I2(outptr_we0),
        .O(ap_NS_fsm[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(i_reg_2100),
        .I1(ap_CS_fsm_state8),
        .O(ap_NS_fsm[2]));
  LUT4 #(
    .INIT(16'h0800)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(tmp1_fu_298_p3[0]),
        .I2(tmp1_fu_298_p3[1]),
        .I3(tmp1_fu_298_p3[2]),
        .O(ap_NS_fsm[8]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_2_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sum3_reg_6160),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state4),
        .Q(mask_address0[4]),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mask_address0[4]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state6),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state7),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(outptr_we0),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_2_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(ap_ready_INST_0_i_1_n_2),
        .I2(IN5_0_rec_reg_186__0[2]),
        .I3(IN5_0_rec_reg_186__0[5]),
        .I4(IN5_0_rec_reg_186__0[4]),
        .I5(IN5_0_rec_reg_186__0[3]),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    ap_ready_INST_0_i_1
       (.I0(IN5_0_rec_reg_186__0[0]),
        .I1(IN5_0_rec_reg_186__0[1]),
        .O(ap_ready_INST_0_i_1_n_2));
  LUT1 #(
    .INIT(2'h1)) 
    \i_1_reg_606[0]_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .O(i_1_fu_272_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_1_reg_606[1]_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(tmp1_fu_298_p3[1]),
        .O(i_1_fu_272_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_1_reg_606[2]_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(tmp1_fu_298_p3[1]),
        .I2(tmp1_fu_298_p3[2]),
        .O(i_1_fu_272_p2[2]));
  FDRE \i_1_reg_606_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(i_1_fu_272_p2[0]),
        .Q(i_1_reg_606[0]),
        .R(1'b0));
  FDRE \i_1_reg_606_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(i_1_fu_272_p2[1]),
        .Q(i_1_reg_606[1]),
        .R(1'b0));
  FDRE \i_1_reg_606_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(i_1_fu_272_p2[2]),
        .Q(i_1_reg_606[2]),
        .R(1'b0));
  FDRE \i_cast1_reg_591_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp1_fu_298_p3[0]),
        .Q(i_cast_reg_597[0]),
        .R(1'b0));
  FDRE \i_cast1_reg_591_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp1_fu_298_p3[1]),
        .Q(i_cast_reg_597[1]),
        .R(1'b0));
  FDRE \i_cast1_reg_591_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp1_fu_298_p3[2]),
        .Q(i_cast_reg_597[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \i_reg_210[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_ready_INST_0_i_1_n_2),
        .I2(IN5_0_rec_reg_186__0[2]),
        .I3(IN5_0_rec_reg_186__0[5]),
        .I4(IN5_0_rec_reg_186__0[4]),
        .I5(IN5_0_rec_reg_186__0[3]),
        .O(i_reg_2100));
  FDRE \i_reg_210_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_1_reg_606[0]),
        .Q(tmp1_fu_298_p3[0]),
        .R(i_reg_2100));
  FDRE \i_reg_210_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_1_reg_606[1]),
        .Q(tmp1_fu_298_p3[1]),
        .R(i_reg_2100));
  FDRE \i_reg_210_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(i_1_reg_606[2]),
        .Q(tmp1_fu_298_p3[2]),
        .R(i_reg_2100));
  LUT5 #(
    .INIT(32'h55550455)) 
    \icmp_reg_637[0]_i_1 
       (.I0(\icmp_reg_637[0]_i_2_n_2 ),
        .I1(\icmp_reg_637[0]_i_3_n_2 ),
        .I2(shift[0]),
        .I3(\icmp_reg_637[0]_i_4_n_2 ),
        .I4(\icmp_reg_637[0]_i_5_n_2 ),
        .O(icmp_fu_376_p2));
  LUT6 #(
    .INIT(64'hABA8FFFFABA80000)) 
    \icmp_reg_637[0]_i_10 
       (.I0(sum_reg_198[20]),
        .I1(shift[4]),
        .I2(shift[3]),
        .I3(sum_reg_198[12]),
        .I4(shift[2]),
        .I5(\tmp_13_reg_642[4]_i_3_n_2 ),
        .O(\icmp_reg_637[0]_i_10_n_2 ));
  LUT6 #(
    .INIT(64'h0000000011111015)) 
    \icmp_reg_637[0]_i_11 
       (.I0(\icmp_reg_637[0]_i_20_n_2 ),
        .I1(sum_reg_198[20]),
        .I2(shift[3]),
        .I3(sum_reg_198[18]),
        .I4(shift[4]),
        .I5(\tmp_13_reg_642[7]_i_5_n_2 ),
        .O(\icmp_reg_637[0]_i_11_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \icmp_reg_637[0]_i_12 
       (.I0(shift[3]),
        .I1(sum_reg_198[16]),
        .I2(shift[4]),
        .O(\icmp_reg_637[0]_i_12_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \icmp_reg_637[0]_i_13 
       (.I0(sum_reg_198[20]),
        .I1(shift[4]),
        .I2(shift[3]),
        .I3(sum_reg_198[13]),
        .O(\icmp_reg_637[0]_i_13_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFCECEC)) 
    \icmp_reg_637[0]_i_14 
       (.I0(\icmp_reg_637[0]_i_21_n_2 ),
        .I1(\icmp_reg_637[0]_i_22_n_2 ),
        .I2(shift[2]),
        .I3(shift[1]),
        .I4(sum_reg_198[20]),
        .I5(\icmp_reg_637[0]_i_23_n_2 ),
        .O(\icmp_reg_637[0]_i_14_n_2 ));
  LUT6 #(
    .INIT(64'hF8F8F8F80000FF00)) 
    \icmp_reg_637[0]_i_15 
       (.I0(shift[1]),
        .I1(sum_reg_198[20]),
        .I2(\icmp_reg_637[0]_i_24_n_2 ),
        .I3(sum_reg_198[14]),
        .I4(\icmp_reg_637[0]_i_25_n_2 ),
        .I5(shift[2]),
        .O(\icmp_reg_637[0]_i_15_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_reg_637[0]_i_16 
       (.I0(shift[18]),
        .I1(shift[15]),
        .I2(shift[28]),
        .I3(shift[16]),
        .O(\icmp_reg_637[0]_i_16_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_reg_637[0]_i_17 
       (.I0(shift[13]),
        .I1(shift[11]),
        .I2(shift[30]),
        .I3(shift[23]),
        .O(\icmp_reg_637[0]_i_17_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_reg_637[0]_i_18 
       (.I0(shift[31]),
        .I1(shift[8]),
        .I2(shift[24]),
        .I3(shift[19]),
        .O(\icmp_reg_637[0]_i_18_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_reg_637[0]_i_19 
       (.I0(shift[26]),
        .I1(shift[22]),
        .I2(shift[17]),
        .I3(shift[12]),
        .O(\icmp_reg_637[0]_i_19_n_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \icmp_reg_637[0]_i_2 
       (.I0(\icmp_reg_637[0]_i_6_n_2 ),
        .I1(\icmp_reg_637[0]_i_7_n_2 ),
        .I2(\icmp_reg_637[0]_i_8_n_2 ),
        .O(\icmp_reg_637[0]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hCCCCCFCFCCCCCFCA)) 
    \icmp_reg_637[0]_i_20 
       (.I0(sum_reg_198[12]),
        .I1(sum_reg_198[20]),
        .I2(shift[3]),
        .I3(sum_reg_198[17]),
        .I4(shift[4]),
        .I5(sum_reg_198[16]),
        .O(\icmp_reg_637[0]_i_20_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \icmp_reg_637[0]_i_21 
       (.I0(shift[3]),
        .I1(sum_reg_198[17]),
        .I2(shift[4]),
        .O(\icmp_reg_637[0]_i_21_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \icmp_reg_637[0]_i_22 
       (.I0(shift[3]),
        .I1(shift[4]),
        .I2(sum_reg_198[20]),
        .O(\icmp_reg_637[0]_i_22_n_2 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \icmp_reg_637[0]_i_23 
       (.I0(shift[3]),
        .I1(shift[4]),
        .I2(sum_reg_198[15]),
        .I3(sum_reg_198[19]),
        .O(\icmp_reg_637[0]_i_23_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAB8)) 
    \icmp_reg_637[0]_i_24 
       (.I0(sum_reg_198[20]),
        .I1(shift[3]),
        .I2(sum_reg_198[18]),
        .I3(shift[4]),
        .O(\icmp_reg_637[0]_i_24_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_reg_637[0]_i_25 
       (.I0(shift[4]),
        .I1(shift[3]),
        .O(\icmp_reg_637[0]_i_25_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_reg_637[0]_i_3 
       (.I0(\icmp_reg_637[0]_i_9_n_2 ),
        .I1(shift[1]),
        .I2(\icmp_reg_637[0]_i_10_n_2 ),
        .O(\icmp_reg_637[0]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \icmp_reg_637[0]_i_4 
       (.I0(shift[1]),
        .I1(\tmp_13_reg_642[7]_i_2_n_2 ),
        .I2(\icmp_reg_637[0]_i_9_n_2 ),
        .O(\icmp_reg_637[0]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F45)) 
    \icmp_reg_637[0]_i_5 
       (.I0(\icmp_reg_637[0]_i_11_n_2 ),
        .I1(\icmp_reg_637[0]_i_12_n_2 ),
        .I2(shift[2]),
        .I3(\icmp_reg_637[0]_i_13_n_2 ),
        .I4(\icmp_reg_637[0]_i_14_n_2 ),
        .I5(\icmp_reg_637[0]_i_15_n_2 ),
        .O(\icmp_reg_637[0]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \icmp_reg_637[0]_i_6 
       (.I0(shift[7]),
        .I1(shift[25]),
        .I2(shift[27]),
        .I3(shift[29]),
        .I4(\icmp_reg_637[0]_i_16_n_2 ),
        .I5(\icmp_reg_637[0]_i_17_n_2 ),
        .O(\icmp_reg_637[0]_i_6_n_2 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icmp_reg_637[0]_i_7 
       (.I0(shift[14]),
        .I1(shift[20]),
        .I2(shift[9]),
        .I3(shift[21]),
        .I4(\icmp_reg_637[0]_i_18_n_2 ),
        .O(\icmp_reg_637[0]_i_7_n_2 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \icmp_reg_637[0]_i_8 
       (.I0(sum_reg_198[20]),
        .I1(shift[5]),
        .I2(shift[6]),
        .I3(shift[10]),
        .I4(\icmp_reg_637[0]_i_19_n_2 ),
        .O(\icmp_reg_637[0]_i_8_n_2 ));
  LUT6 #(
    .INIT(64'hABA8FFFFABA80000)) 
    \icmp_reg_637[0]_i_9 
       (.I0(sum_reg_198[20]),
        .I1(shift[4]),
        .I2(shift[3]),
        .I3(sum_reg_198[14]),
        .I4(shift[2]),
        .I5(\tmp_13_reg_642[6]_i_3_n_2 ),
        .O(\icmp_reg_637[0]_i_9_n_2 ));
  FDRE \icmp_reg_637_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(icmp_fu_376_p2),
        .Q(icmp_reg_637),
        .R(1'b0));
  bd_0_hls_inst_0_img_conv_5x5_mac_bkb img_conv_5x5_mac_bkb_U3
       (.P({img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_3,img_conv_5x5_mac_bkb_U3_n_4,img_conv_5x5_mac_bkb_U3_n_5,img_conv_5x5_mac_bkb_U3_n_6,img_conv_5x5_mac_bkb_U3_n_7,img_conv_5x5_mac_bkb_U3_n_8,img_conv_5x5_mac_bkb_U3_n_9,img_conv_5x5_mac_bkb_U3_n_10,img_conv_5x5_mac_bkb_U3_n_11,img_conv_5x5_mac_bkb_U3_n_12,img_conv_5x5_mac_bkb_U3_n_13,img_conv_5x5_mac_bkb_U3_n_14,img_conv_5x5_mac_bkb_U3_n_15,img_conv_5x5_mac_bkb_U3_n_16,img_conv_5x5_mac_bkb_U3_n_17,img_conv_5x5_mac_bkb_U3_n_18}),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state4}),
        .ap_clk(ap_clk),
        .inptr_q0(inptr_q0),
        .mask_q0(mask_q0),
        .p({sum33_reg_707_reg_n_92,sum33_reg_707_reg_n_93,sum33_reg_707_reg_n_94,sum33_reg_707_reg_n_95,sum33_reg_707_reg_n_96,sum33_reg_707_reg_n_97,sum33_reg_707_reg_n_98,sum33_reg_707_reg_n_99,sum33_reg_707_reg_n_100,sum33_reg_707_reg_n_101,sum33_reg_707_reg_n_102,sum33_reg_707_reg_n_103,sum33_reg_707_reg_n_104,sum33_reg_707_reg_n_105,sum33_reg_707_reg_n_106,sum33_reg_707_reg_n_107}),
        .reg_2210(reg_2210));
  LUT6 #(
    .INIT(64'hCCCCCCCCAAAA0FF0)) 
    \inptr_address0[0]_INST_0 
       (.I0(\^inptr_address1 [0]),
        .I1(sum9_reg_627[0]),
        .I2(tmp1_fu_298_p3[0]),
        .I3(IN5_0_rec_reg_186__0[0]),
        .I4(ap_CS_fsm_state4),
        .I5(mask_address0[4]),
        .O(\^inptr_address0 [0]));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CACF)) 
    \inptr_address0[1]_INST_0 
       (.I0(\^inptr_address1 [1]),
        .I1(sum9_reg_627[1]),
        .I2(mask_address0[4]),
        .I3(ap_CS_fsm_state4),
        .I4(\inptr_address0[1]_INST_0_i_1_n_2 ),
        .I5(\inptr_address0[1]_INST_0_i_2_n_2 ),
        .O(\^inptr_address0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \inptr_address0[1]_INST_0_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(IN5_0_rec_reg_186__0[0]),
        .O(\inptr_address0[1]_INST_0_i_1_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \inptr_address0[1]_INST_0_i_2 
       (.I0(IN5_0_rec_reg_186__0[1]),
        .I1(tmp1_fu_298_p3[1]),
        .O(\inptr_address0[1]_INST_0_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAABABBA)) 
    \inptr_address0[2]_INST_0 
       (.I0(\inptr_address0[2]_INST_0_i_1_n_2 ),
        .I1(inptr_ce1),
        .I2(IN5_0_rec_reg_186__0[2]),
        .I3(tmp1_fu_298_p3[2]),
        .I4(\inptr_address0[2]_INST_0_i_2_n_2 ),
        .I5(\inptr_address0[2]_INST_0_i_3_n_2 ),
        .O(\^inptr_address0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \inptr_address0[2]_INST_0_i_1 
       (.I0(sum9_reg_627[2]),
        .I1(mask_address0[4]),
        .O(\inptr_address0[2]_INST_0_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE8A0)) 
    \inptr_address0[2]_INST_0_i_2 
       (.I0(tmp1_fu_298_p3[1]),
        .I1(IN5_0_rec_reg_186__0[0]),
        .I2(IN5_0_rec_reg_186__0[1]),
        .I3(tmp1_fu_298_p3[0]),
        .O(\inptr_address0[2]_INST_0_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \inptr_address0[2]_INST_0_i_3 
       (.I0(mask_address0[4]),
        .I1(ap_CS_fsm_state4),
        .I2(\^inptr_address1 [2]),
        .O(\inptr_address0[2]_INST_0_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hCCAACC0FCCAACCF0)) 
    \inptr_address0[3]_INST_0 
       (.I0(\^inptr_address1 [3]),
        .I1(sum9_reg_627[3]),
        .I2(IN5_0_rec_reg_186__0[3]),
        .I3(mask_address0[4]),
        .I4(ap_CS_fsm_state4),
        .I5(\inptr_address0[3]_INST_0_i_1_n_2 ),
        .O(\^inptr_address0 [3]));
  LUT6 #(
    .INIT(64'hFFFFE8A0E8A00000)) 
    \inptr_address0[3]_INST_0_i_1 
       (.I0(tmp1_fu_298_p3[1]),
        .I1(IN5_0_rec_reg_186__0[0]),
        .I2(IN5_0_rec_reg_186__0[1]),
        .I3(tmp1_fu_298_p3[0]),
        .I4(tmp1_fu_298_p3[2]),
        .I5(IN5_0_rec_reg_186__0[2]),
        .O(\inptr_address0[3]_INST_0_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hCCAACCF0CCAACC0F)) 
    \inptr_address0[4]_INST_0 
       (.I0(\^inptr_address1 [4]),
        .I1(sum9_reg_627[4]),
        .I2(IN5_0_rec_reg_186__0[4]),
        .I3(mask_address0[4]),
        .I4(ap_CS_fsm_state4),
        .I5(\inptr_address0[4]_INST_0_i_1_n_2 ),
        .O(\^inptr_address0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \inptr_address0[4]_INST_0_i_1 
       (.I0(\inptr_address0[3]_INST_0_i_1_n_2 ),
        .I1(IN5_0_rec_reg_186__0[3]),
        .O(\inptr_address0[4]_INST_0_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hCCAACCF0CCAACC0F)) 
    \inptr_address0[5]_INST_0 
       (.I0(\^inptr_address1 [5]),
        .I1(sum9_reg_627[5]),
        .I2(IN5_0_rec_reg_186__0[5]),
        .I3(mask_address0[4]),
        .I4(ap_CS_fsm_state4),
        .I5(\inptr_address0[5]_INST_0_i_1_n_2 ),
        .O(\^inptr_address0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \inptr_address0[5]_INST_0_i_1 
       (.I0(IN5_0_rec_reg_186__0[4]),
        .I1(IN5_0_rec_reg_186__0[3]),
        .I2(\inptr_address0[3]_INST_0_i_1_n_2 ),
        .O(\inptr_address0[5]_INST_0_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \inptr_address0[6]_INST_0 
       (.I0(sum9_reg_627[6]),
        .I1(sum3_reg_616),
        .I2(ap_CS_fsm_state4),
        .I3(mask_address0[4]),
        .O(\^inptr_address0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \inptr_address1[6]_INST_0 
       (.I0(sum3_reg_616),
        .I1(mask_address0[4]),
        .I2(sum5_reg_622),
        .O(\^inptr_address1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \inptr_address1[7]_INST_0 
       (.I0(sum3_reg_616),
        .I1(mask_address0[4]),
        .O(\^inptr_address1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF20E)) 
    \mask_address0[0]_INST_0 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(ap_CS_fsm_state4),
        .I2(mask_address0[4]),
        .I3(i_cast_reg_597[0]),
        .O(mask_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF20EFE02)) 
    \mask_address0[1]_INST_0 
       (.I0(tmp1_fu_298_p3[1]),
        .I1(ap_CS_fsm_state4),
        .I2(mask_address0[4]),
        .I3(i_cast_reg_597[1]),
        .I4(i_cast_reg_597[0]),
        .O(mask_address0[1]));
  LUT6 #(
    .INIT(64'h0EF202FE02FE02FE)) 
    \mask_address0[2]_INST_0 
       (.I0(tmp1_fu_298_p3[2]),
        .I1(ap_CS_fsm_state4),
        .I2(mask_address0[4]),
        .I3(i_cast_reg_597[2]),
        .I4(i_cast_reg_597[1]),
        .I5(i_cast_reg_597[0]),
        .O(mask_address0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0F8F000)) 
    \mask_address0[3]_INST_0 
       (.I0(i_cast_reg_597[0]),
        .I1(i_cast_reg_597[1]),
        .I2(i_cast_reg_597[2]),
        .I3(mask_address0[4]),
        .I4(ap_CS_fsm_state4),
        .O(mask_address0[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mask_address1[0]_INST_0 
       (.I0(mask_address0[4]),
        .I1(i_cast_reg_597[0]),
        .O(mask_address1[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h93)) 
    \mask_address1[1]_INST_0 
       (.I0(i_cast_reg_597[0]),
        .I1(i_cast_reg_597[1]),
        .I2(mask_address0[4]),
        .O(mask_address1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD926)) 
    \mask_address1[2]_INST_0 
       (.I0(i_cast_reg_597[1]),
        .I1(mask_address0[4]),
        .I2(i_cast_reg_597[0]),
        .I3(i_cast_reg_597[2]),
        .O(mask_address1[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h051F)) 
    \mask_address1[3]_INST_0 
       (.I0(i_cast_reg_597[2]),
        .I1(i_cast_reg_597[0]),
        .I2(mask_address0[4]),
        .I3(i_cast_reg_597[1]),
        .O(mask_address1[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    \mask_address1[4]_INST_0 
       (.I0(i_cast_reg_597[2]),
        .I1(mask_address0[4]),
        .I2(i_cast_reg_597[0]),
        .I3(i_cast_reg_597[1]),
        .O(mask_address1[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    mask_ce0_INST_0
       (.I0(ap_CS_fsm_state4),
        .I1(mask_address0[4]),
        .I2(ap_CS_fsm_state3),
        .O(inptr_ce0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mask_ce1_INST_0
       (.I0(mask_address0[4]),
        .I1(ap_CS_fsm_state4),
        .O(inptr_ce1));
  FDRE \outptr_addr_reg_578_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(IN5_0_rec_reg_186__0[0]),
        .Q(outptr_address0[0]),
        .R(1'b0));
  FDRE \outptr_addr_reg_578_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(IN5_0_rec_reg_186__0[1]),
        .Q(outptr_address0[1]),
        .R(1'b0));
  FDRE \outptr_addr_reg_578_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(IN5_0_rec_reg_186__0[2]),
        .Q(outptr_address0[2]),
        .R(1'b0));
  FDRE \outptr_addr_reg_578_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(IN5_0_rec_reg_186__0[3]),
        .Q(outptr_address0[3]),
        .R(1'b0));
  FDRE \outptr_addr_reg_578_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(IN5_0_rec_reg_186__0[4]),
        .Q(outptr_address0[4]),
        .R(1'b0));
  FDRE \outptr_addr_reg_578_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(IN5_0_rec_reg_186__0[5]),
        .Q(outptr_address0[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[0]_INST_0 
       (.I0(tmp_13_reg_642[0]),
        .I1(icmp_reg_637),
        .O(outptr_d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[1]_INST_0 
       (.I0(tmp_13_reg_642[1]),
        .I1(icmp_reg_637),
        .O(outptr_d0[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[2]_INST_0 
       (.I0(tmp_13_reg_642[2]),
        .I1(icmp_reg_637),
        .O(outptr_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[3]_INST_0 
       (.I0(tmp_13_reg_642[3]),
        .I1(icmp_reg_637),
        .O(outptr_d0[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[4]_INST_0 
       (.I0(tmp_13_reg_642[4]),
        .I1(icmp_reg_637),
        .O(outptr_d0[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[5]_INST_0 
       (.I0(tmp_13_reg_642[5]),
        .I1(icmp_reg_637),
        .O(outptr_d0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[6]_INST_0 
       (.I0(tmp_13_reg_642[6]),
        .I1(icmp_reg_637),
        .O(outptr_d0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \outptr_d0[7]_INST_0 
       (.I0(tmp_13_reg_642[7]),
        .I1(icmp_reg_637),
        .O(outptr_d0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \p_rec_reg_586[0]_i_1 
       (.I0(IN5_0_rec_reg_186__0[0]),
        .O(p_rec_fu_252_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_rec_reg_586[1]_i_1 
       (.I0(IN5_0_rec_reg_186__0[0]),
        .I1(IN5_0_rec_reg_186__0[1]),
        .O(p_rec_fu_252_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_rec_reg_586[2]_i_1 
       (.I0(IN5_0_rec_reg_186__0[1]),
        .I1(IN5_0_rec_reg_186__0[0]),
        .I2(IN5_0_rec_reg_186__0[2]),
        .O(p_rec_fu_252_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_rec_reg_586[3]_i_1 
       (.I0(IN5_0_rec_reg_186__0[0]),
        .I1(IN5_0_rec_reg_186__0[1]),
        .I2(IN5_0_rec_reg_186__0[2]),
        .I3(IN5_0_rec_reg_186__0[3]),
        .O(p_rec_fu_252_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_rec_reg_586[4]_i_1 
       (.I0(IN5_0_rec_reg_186__0[3]),
        .I1(IN5_0_rec_reg_186__0[2]),
        .I2(IN5_0_rec_reg_186__0[1]),
        .I3(IN5_0_rec_reg_186__0[0]),
        .I4(IN5_0_rec_reg_186__0[4]),
        .O(p_rec_fu_252_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_rec_reg_586[5]_i_1 
       (.I0(IN5_0_rec_reg_186__0[2]),
        .I1(IN5_0_rec_reg_186__0[1]),
        .I2(IN5_0_rec_reg_186__0[0]),
        .I3(IN5_0_rec_reg_186__0[3]),
        .I4(IN5_0_rec_reg_186__0[4]),
        .I5(IN5_0_rec_reg_186__0[5]),
        .O(p_rec_fu_252_p2[5]));
  FDRE \p_rec_reg_586_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_rec_fu_252_p2[0]),
        .Q(p_rec_reg_586[0]),
        .R(1'b0));
  FDRE \p_rec_reg_586_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_rec_fu_252_p2[1]),
        .Q(p_rec_reg_586[1]),
        .R(1'b0));
  FDRE \p_rec_reg_586_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_rec_fu_252_p2[2]),
        .Q(p_rec_reg_586[2]),
        .R(1'b0));
  FDRE \p_rec_reg_586_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_rec_fu_252_p2[3]),
        .Q(p_rec_reg_586[3]),
        .R(1'b0));
  FDRE \p_rec_reg_586_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_rec_fu_252_p2[4]),
        .Q(p_rec_reg_586[4]),
        .R(1'b0));
  FDRE \p_rec_reg_586_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_rec_fu_252_p2[5]),
        .Q(p_rec_reg_586[5]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    sum00_fu_454_p2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inptr_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_sum00_fu_454_p2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_sum00_fu_454_p2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_sum00_fu_454_p2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_sum00_fu_454_p2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_2210),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(reg_2210),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_sum00_fu_454_p2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_sum00_fu_454_p2_OVERFLOW_UNCONNECTED),
        .P({NLW_sum00_fu_454_p2_P_UNCONNECTED[47:17],sum00_fu_454_p2_n_91,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_93,sum00_fu_454_p2_n_94,sum00_fu_454_p2_n_95,sum00_fu_454_p2_n_96,sum00_fu_454_p2_n_97,sum00_fu_454_p2_n_98,sum00_fu_454_p2_n_99,sum00_fu_454_p2_n_100,sum00_fu_454_p2_n_101,sum00_fu_454_p2_n_102,sum00_fu_454_p2_n_103,sum00_fu_454_p2_n_104,sum00_fu_454_p2_n_105,sum00_fu_454_p2_n_106,sum00_fu_454_p2_n_107}),
        .PATTERNBDETECT(NLW_sum00_fu_454_p2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_sum00_fu_454_p2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_sum00_fu_454_p2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_sum00_fu_454_p2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    sum33_reg_707_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inptr_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_sum33_reg_707_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_sum33_reg_707_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_sum33_reg_707_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_sum33_reg_707_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state6),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_sum33_reg_707_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_sum33_reg_707_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_sum33_reg_707_reg_P_UNCONNECTED[47:16],sum33_reg_707_reg_n_92,sum33_reg_707_reg_n_93,sum33_reg_707_reg_n_94,sum33_reg_707_reg_n_95,sum33_reg_707_reg_n_96,sum33_reg_707_reg_n_97,sum33_reg_707_reg_n_98,sum33_reg_707_reg_n_99,sum33_reg_707_reg_n_100,sum33_reg_707_reg_n_101,sum33_reg_707_reg_n_102,sum33_reg_707_reg_n_103,sum33_reg_707_reg_n_104,sum33_reg_707_reg_n_105,sum33_reg_707_reg_n_106,sum33_reg_707_reg_n_107}),
        .PATTERNBDETECT(NLW_sum33_reg_707_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_sum33_reg_707_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_sum33_reg_707_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_sum33_reg_707_reg_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sum3_reg_616[0]_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(outptr_address0[0]),
        .O(sum3_fu_306_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \sum3_reg_616[1]_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(outptr_address0[0]),
        .I2(outptr_address0[1]),
        .I3(tmp1_fu_298_p3[1]),
        .O(sum3_fu_306_p2[1]));
  LUT6 #(
    .INIT(64'hEA80157F157FEA80)) 
    \sum3_reg_616[2]_i_1 
       (.I0(tmp1_fu_298_p3[1]),
        .I1(tmp1_fu_298_p3[0]),
        .I2(outptr_address0[0]),
        .I3(outptr_address0[1]),
        .I4(outptr_address0[2]),
        .I5(tmp1_fu_298_p3[2]),
        .O(sum3_fu_306_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h17E8)) 
    \sum3_reg_616[3]_i_1 
       (.I0(tmp1_fu_298_p3[2]),
        .I1(outptr_address0[2]),
        .I2(\sum3_reg_616[5]_i_3_n_2 ),
        .I3(outptr_address0[3]),
        .O(sum3_fu_306_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h17FFE800)) 
    \sum3_reg_616[4]_i_1 
       (.I0(\sum3_reg_616[5]_i_3_n_2 ),
        .I1(outptr_address0[2]),
        .I2(tmp1_fu_298_p3[2]),
        .I3(outptr_address0[3]),
        .I4(outptr_address0[4]),
        .O(sum3_fu_306_p2[4]));
  LUT4 #(
    .INIT(16'hDF00)) 
    \sum3_reg_616[5]_i_1 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(tmp1_fu_298_p3[1]),
        .I2(tmp1_fu_298_p3[2]),
        .I3(ap_CS_fsm_state3),
        .O(sum3_reg_6160));
  LUT6 #(
    .INIT(64'h777F7FFF88808000)) 
    \sum3_reg_616[5]_i_2 
       (.I0(outptr_address0[4]),
        .I1(outptr_address0[3]),
        .I2(tmp1_fu_298_p3[2]),
        .I3(outptr_address0[2]),
        .I4(\sum3_reg_616[5]_i_3_n_2 ),
        .I5(outptr_address0[5]),
        .O(sum3_fu_306_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \sum3_reg_616[5]_i_3 
       (.I0(outptr_address0[1]),
        .I1(outptr_address0[0]),
        .I2(tmp1_fu_298_p3[0]),
        .I3(tmp1_fu_298_p3[1]),
        .O(\sum3_reg_616[5]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h777F7FFFFFFFFFFF)) 
    \sum3_reg_616[6]_i_1 
       (.I0(outptr_address0[4]),
        .I1(outptr_address0[3]),
        .I2(tmp1_fu_298_p3[2]),
        .I3(outptr_address0[2]),
        .I4(\sum3_reg_616[5]_i_3_n_2 ),
        .I5(outptr_address0[5]),
        .O(sum3_fu_306_p2[6]));
  FDRE \sum3_reg_616_reg[0] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[0]),
        .Q(\^inptr_address1 [0]),
        .R(1'b0));
  FDRE \sum3_reg_616_reg[1] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[1]),
        .Q(\^inptr_address1 [1]),
        .R(1'b0));
  FDRE \sum3_reg_616_reg[2] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[2]),
        .Q(\^inptr_address1 [2]),
        .R(1'b0));
  FDRE \sum3_reg_616_reg[3] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[3]),
        .Q(\^inptr_address1 [3]),
        .R(1'b0));
  FDRE \sum3_reg_616_reg[4] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[4]),
        .Q(\^inptr_address1 [4]),
        .R(1'b0));
  FDRE \sum3_reg_616_reg[5] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[5]),
        .Q(\^inptr_address1 [5]),
        .R(1'b0));
  FDRE \sum3_reg_616_reg[6] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum3_fu_306_p2[6]),
        .Q(sum3_reg_616),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA880000000000000)) 
    \sum5_reg_622[6]_i_1 
       (.I0(outptr_address0[5]),
        .I1(\sum3_reg_616[5]_i_3_n_2 ),
        .I2(outptr_address0[2]),
        .I3(tmp1_fu_298_p3[2]),
        .I4(outptr_address0[3]),
        .I5(outptr_address0[4]),
        .O(sum5_fu_319_p2));
  FDRE \sum5_reg_622_reg[6] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum5_fu_319_p2),
        .Q(sum5_reg_622),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sum9_reg_627[3]_i_2 
       (.I0(tmp1_fu_298_p3[2]),
        .I1(outptr_address0[2]),
        .O(\sum9_reg_627[3]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum9_reg_627[3]_i_3 
       (.I0(tmp1_fu_298_p3[1]),
        .I1(outptr_address0[1]),
        .O(\sum9_reg_627[3]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum9_reg_627[3]_i_4 
       (.I0(tmp1_fu_298_p3[0]),
        .I1(outptr_address0[0]),
        .O(\sum9_reg_627[3]_i_4_n_2 ));
  FDRE \sum9_reg_627_reg[0] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[0]),
        .Q(sum9_reg_627[0]),
        .R(1'b0));
  FDRE \sum9_reg_627_reg[1] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[1]),
        .Q(sum9_reg_627[1]),
        .R(1'b0));
  FDRE \sum9_reg_627_reg[2] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[2]),
        .Q(sum9_reg_627[2]),
        .R(1'b0));
  FDRE \sum9_reg_627_reg[3] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[3]),
        .Q(sum9_reg_627[3]),
        .R(1'b0));
  CARRY4 \sum9_reg_627_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum9_reg_627_reg[3]_i_1_n_2 ,\sum9_reg_627_reg[3]_i_1_n_3 ,\sum9_reg_627_reg[3]_i_1_n_4 ,\sum9_reg_627_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,tmp1_fu_298_p3}),
        .O(sum9_fu_332_p2[3:0]),
        .S({outptr_address0[3],\sum9_reg_627[3]_i_2_n_2 ,\sum9_reg_627[3]_i_3_n_2 ,\sum9_reg_627[3]_i_4_n_2 }));
  FDRE \sum9_reg_627_reg[4] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[4]),
        .Q(sum9_reg_627[4]),
        .R(1'b0));
  FDRE \sum9_reg_627_reg[5] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[5]),
        .Q(sum9_reg_627[5]),
        .R(1'b0));
  FDRE \sum9_reg_627_reg[6] 
       (.C(ap_clk),
        .CE(sum3_reg_6160),
        .D(sum9_fu_332_p2[6]),
        .Q(sum9_reg_627[6]),
        .R(1'b0));
  CARRY4 \sum9_reg_627_reg[6]_i_1 
       (.CI(\sum9_reg_627_reg[3]_i_1_n_2 ),
        .CO({\NLW_sum9_reg_627_reg[6]_i_1_CO_UNCONNECTED [3],sum9_fu_332_p2[6],\NLW_sum9_reg_627_reg[6]_i_1_CO_UNCONNECTED [1],\sum9_reg_627_reg[6]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum9_reg_627_reg[6]_i_1_O_UNCONNECTED [3:2],sum9_fu_332_p2[5:4]}),
        .S({1'b0,1'b1,outptr_address0[5:4]}));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_10 
       (.I0(tmp8_reg_717_reg_n_99),
        .I1(tmp7_reg_712_reg_n_99),
        .O(\sum_reg_198[11]_i_10_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_2 
       (.I0(sum_reg_198[11]),
        .I1(p_cast_fu_516_p1[11]),
        .O(\sum_reg_198[11]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_3 
       (.I0(sum_reg_198[10]),
        .I1(p_cast_fu_516_p1[10]),
        .O(\sum_reg_198[11]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_4 
       (.I0(sum_reg_198[9]),
        .I1(p_cast_fu_516_p1[9]),
        .O(\sum_reg_198[11]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_5 
       (.I0(sum_reg_198[8]),
        .I1(p_cast_fu_516_p1[8]),
        .O(\sum_reg_198[11]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_7 
       (.I0(tmp8_reg_717_reg_n_96),
        .I1(tmp7_reg_712_reg_n_96),
        .O(\sum_reg_198[11]_i_7_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_8 
       (.I0(tmp8_reg_717_reg_n_97),
        .I1(tmp7_reg_712_reg_n_97),
        .O(\sum_reg_198[11]_i_8_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[11]_i_9 
       (.I0(tmp8_reg_717_reg_n_98),
        .I1(tmp7_reg_712_reg_n_98),
        .O(\sum_reg_198[11]_i_9_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[15]_i_2 
       (.I0(sum_reg_198[15]),
        .I1(p_cast_fu_516_p1[15]),
        .O(\sum_reg_198[15]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[15]_i_3 
       (.I0(sum_reg_198[14]),
        .I1(p_cast_fu_516_p1[14]),
        .O(\sum_reg_198[15]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[15]_i_4 
       (.I0(sum_reg_198[13]),
        .I1(p_cast_fu_516_p1[13]),
        .O(\sum_reg_198[15]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[15]_i_5 
       (.I0(sum_reg_198[12]),
        .I1(p_cast_fu_516_p1[12]),
        .O(\sum_reg_198[15]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_10 
       (.I0(tmp7_reg_712_reg_n_91),
        .I1(tmp8_reg_717_reg_n_91),
        .O(\sum_reg_198[19]_i_10_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_11 
       (.I0(tmp8_reg_717_reg_n_92),
        .I1(tmp7_reg_712_reg_n_92),
        .O(\sum_reg_198[19]_i_11_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_12 
       (.I0(tmp8_reg_717_reg_n_93),
        .I1(tmp7_reg_712_reg_n_93),
        .O(\sum_reg_198[19]_i_12_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_13 
       (.I0(tmp8_reg_717_reg_n_94),
        .I1(tmp7_reg_712_reg_n_94),
        .O(\sum_reg_198[19]_i_13_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_14 
       (.I0(tmp8_reg_717_reg_n_95),
        .I1(tmp7_reg_712_reg_n_95),
        .O(\sum_reg_198[19]_i_14_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg_198[19]_i_3 
       (.I0(\sum_reg_198_reg[19]_i_2_n_3 ),
        .I1(sum_reg_198[19]),
        .O(\sum_reg_198[19]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg_198[19]_i_4 
       (.I0(\sum_reg_198_reg[19]_i_2_n_3 ),
        .I1(sum_reg_198[18]),
        .O(\sum_reg_198[19]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_5 
       (.I0(sum_reg_198[17]),
        .I1(p_cast_fu_516_p1[17]),
        .O(\sum_reg_198[19]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_6 
       (.I0(sum_reg_198[16]),
        .I1(p_cast_fu_516_p1[16]),
        .O(\sum_reg_198[19]_i_6_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sum_reg_198[19]_i_8 
       (.I0(tmp7_reg_712_reg_n_91),
        .O(\sum_reg_198[19]_i_8_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[19]_i_9 
       (.I0(tmp7_reg_712_reg_n_91),
        .I1(tmp8_reg_717_reg_n_90),
        .O(\sum_reg_198[19]_i_9_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sum_reg_198[20]_i_2 
       (.I0(sum_reg_198[19]),
        .I1(sum_reg_198[20]),
        .O(\sum_reg_198[20]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_10 
       (.I0(tmp8_reg_717_reg_n_107),
        .I1(tmp7_reg_712_reg_n_107),
        .O(\sum_reg_198[3]_i_10_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_2 
       (.I0(sum_reg_198[3]),
        .I1(p_cast_fu_516_p1[3]),
        .O(\sum_reg_198[3]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_3 
       (.I0(sum_reg_198[2]),
        .I1(p_cast_fu_516_p1[2]),
        .O(\sum_reg_198[3]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_4 
       (.I0(sum_reg_198[1]),
        .I1(p_cast_fu_516_p1[1]),
        .O(\sum_reg_198[3]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_5 
       (.I0(sum_reg_198[0]),
        .I1(p_cast_fu_516_p1[0]),
        .O(\sum_reg_198[3]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_7 
       (.I0(tmp8_reg_717_reg_n_104),
        .I1(tmp7_reg_712_reg_n_104),
        .O(\sum_reg_198[3]_i_7_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_8 
       (.I0(tmp8_reg_717_reg_n_105),
        .I1(tmp7_reg_712_reg_n_105),
        .O(\sum_reg_198[3]_i_8_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[3]_i_9 
       (.I0(tmp8_reg_717_reg_n_106),
        .I1(tmp7_reg_712_reg_n_106),
        .O(\sum_reg_198[3]_i_9_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_10 
       (.I0(tmp8_reg_717_reg_n_103),
        .I1(tmp7_reg_712_reg_n_103),
        .O(\sum_reg_198[7]_i_10_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_2 
       (.I0(sum_reg_198[7]),
        .I1(p_cast_fu_516_p1[7]),
        .O(\sum_reg_198[7]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_3 
       (.I0(sum_reg_198[6]),
        .I1(p_cast_fu_516_p1[6]),
        .O(\sum_reg_198[7]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_4 
       (.I0(sum_reg_198[5]),
        .I1(p_cast_fu_516_p1[5]),
        .O(\sum_reg_198[7]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_5 
       (.I0(sum_reg_198[4]),
        .I1(p_cast_fu_516_p1[4]),
        .O(\sum_reg_198[7]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_7 
       (.I0(tmp8_reg_717_reg_n_100),
        .I1(tmp7_reg_712_reg_n_100),
        .O(\sum_reg_198[7]_i_7_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_8 
       (.I0(tmp8_reg_717_reg_n_101),
        .I1(tmp7_reg_712_reg_n_101),
        .O(\sum_reg_198[7]_i_8_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_reg_198[7]_i_9 
       (.I0(tmp8_reg_717_reg_n_102),
        .I1(tmp7_reg_712_reg_n_102),
        .O(\sum_reg_198[7]_i_9_n_2 ));
  FDRE \sum_reg_198_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[0]),
        .Q(sum_reg_198[0]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[10]),
        .Q(sum_reg_198[10]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[11]),
        .Q(sum_reg_198[11]),
        .R(i_reg_2100));
  CARRY4 \sum_reg_198_reg[11]_i_1 
       (.CI(\sum_reg_198_reg[7]_i_1_n_2 ),
        .CO({\sum_reg_198_reg[11]_i_1_n_2 ,\sum_reg_198_reg[11]_i_1_n_3 ,\sum_reg_198_reg[11]_i_1_n_4 ,\sum_reg_198_reg[11]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI(sum_reg_198[11:8]),
        .O(sum_2_fu_520_p2[11:8]),
        .S({\sum_reg_198[11]_i_2_n_2 ,\sum_reg_198[11]_i_3_n_2 ,\sum_reg_198[11]_i_4_n_2 ,\sum_reg_198[11]_i_5_n_2 }));
  CARRY4 \sum_reg_198_reg[11]_i_6 
       (.CI(\sum_reg_198_reg[7]_i_6_n_2 ),
        .CO({\sum_reg_198_reg[11]_i_6_n_2 ,\sum_reg_198_reg[11]_i_6_n_3 ,\sum_reg_198_reg[11]_i_6_n_4 ,\sum_reg_198_reg[11]_i_6_n_5 }),
        .CYINIT(1'b0),
        .DI({tmp8_reg_717_reg_n_96,tmp8_reg_717_reg_n_97,tmp8_reg_717_reg_n_98,tmp8_reg_717_reg_n_99}),
        .O(p_cast_fu_516_p1[11:8]),
        .S({\sum_reg_198[11]_i_7_n_2 ,\sum_reg_198[11]_i_8_n_2 ,\sum_reg_198[11]_i_9_n_2 ,\sum_reg_198[11]_i_10_n_2 }));
  FDRE \sum_reg_198_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[12]),
        .Q(sum_reg_198[12]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[13]),
        .Q(sum_reg_198[13]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[14]),
        .Q(sum_reg_198[14]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[15]),
        .Q(sum_reg_198[15]),
        .R(i_reg_2100));
  CARRY4 \sum_reg_198_reg[15]_i_1 
       (.CI(\sum_reg_198_reg[11]_i_1_n_2 ),
        .CO({\sum_reg_198_reg[15]_i_1_n_2 ,\sum_reg_198_reg[15]_i_1_n_3 ,\sum_reg_198_reg[15]_i_1_n_4 ,\sum_reg_198_reg[15]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI(sum_reg_198[15:12]),
        .O(sum_2_fu_520_p2[15:12]),
        .S({\sum_reg_198[15]_i_2_n_2 ,\sum_reg_198[15]_i_3_n_2 ,\sum_reg_198[15]_i_4_n_2 ,\sum_reg_198[15]_i_5_n_2 }));
  FDRE \sum_reg_198_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[16]),
        .Q(sum_reg_198[16]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[17]),
        .Q(sum_reg_198[17]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[18]),
        .Q(sum_reg_198[18]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[19]),
        .Q(sum_reg_198[19]),
        .R(i_reg_2100));
  CARRY4 \sum_reg_198_reg[19]_i_1 
       (.CI(\sum_reg_198_reg[15]_i_1_n_2 ),
        .CO({\sum_reg_198_reg[19]_i_1_n_2 ,\sum_reg_198_reg[19]_i_1_n_3 ,\sum_reg_198_reg[19]_i_1_n_4 ,\sum_reg_198_reg[19]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_198_reg[19]_i_2_n_3 ,sum_reg_198[18:16]}),
        .O(sum_2_fu_520_p2[19:16]),
        .S({\sum_reg_198[19]_i_3_n_2 ,\sum_reg_198[19]_i_4_n_2 ,\sum_reg_198[19]_i_5_n_2 ,\sum_reg_198[19]_i_6_n_2 }));
  CARRY4 \sum_reg_198_reg[19]_i_2 
       (.CI(\sum_reg_198_reg[19]_i_7_n_2 ),
        .CO({\NLW_sum_reg_198_reg[19]_i_2_CO_UNCONNECTED [3],\sum_reg_198_reg[19]_i_2_n_3 ,\NLW_sum_reg_198_reg[19]_i_2_CO_UNCONNECTED [1],\sum_reg_198_reg[19]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\sum_reg_198[19]_i_8_n_2 ,tmp7_reg_712_reg_n_91}),
        .O({\NLW_sum_reg_198_reg[19]_i_2_O_UNCONNECTED [3:2],p_cast_fu_516_p1[17:16]}),
        .S({1'b0,1'b1,\sum_reg_198[19]_i_9_n_2 ,\sum_reg_198[19]_i_10_n_2 }));
  CARRY4 \sum_reg_198_reg[19]_i_7 
       (.CI(\sum_reg_198_reg[11]_i_6_n_2 ),
        .CO({\sum_reg_198_reg[19]_i_7_n_2 ,\sum_reg_198_reg[19]_i_7_n_3 ,\sum_reg_198_reg[19]_i_7_n_4 ,\sum_reg_198_reg[19]_i_7_n_5 }),
        .CYINIT(1'b0),
        .DI({tmp8_reg_717_reg_n_92,tmp8_reg_717_reg_n_93,tmp8_reg_717_reg_n_94,tmp8_reg_717_reg_n_95}),
        .O(p_cast_fu_516_p1[15:12]),
        .S({\sum_reg_198[19]_i_11_n_2 ,\sum_reg_198[19]_i_12_n_2 ,\sum_reg_198[19]_i_13_n_2 ,\sum_reg_198[19]_i_14_n_2 }));
  FDRE \sum_reg_198_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[1]),
        .Q(sum_reg_198[1]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[20]),
        .Q(sum_reg_198[20]),
        .R(i_reg_2100));
  CARRY4 \sum_reg_198_reg[20]_i_1 
       (.CI(\sum_reg_198_reg[19]_i_1_n_2 ),
        .CO(\NLW_sum_reg_198_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_reg_198_reg[20]_i_1_O_UNCONNECTED [3:1],sum_2_fu_520_p2[20]}),
        .S({1'b0,1'b0,1'b0,\sum_reg_198[20]_i_2_n_2 }));
  FDRE \sum_reg_198_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[2]),
        .Q(sum_reg_198[2]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[3]),
        .Q(sum_reg_198[3]),
        .R(i_reg_2100));
  CARRY4 \sum_reg_198_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg_198_reg[3]_i_1_n_2 ,\sum_reg_198_reg[3]_i_1_n_3 ,\sum_reg_198_reg[3]_i_1_n_4 ,\sum_reg_198_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI(sum_reg_198[3:0]),
        .O(sum_2_fu_520_p2[3:0]),
        .S({\sum_reg_198[3]_i_2_n_2 ,\sum_reg_198[3]_i_3_n_2 ,\sum_reg_198[3]_i_4_n_2 ,\sum_reg_198[3]_i_5_n_2 }));
  CARRY4 \sum_reg_198_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\sum_reg_198_reg[3]_i_6_n_2 ,\sum_reg_198_reg[3]_i_6_n_3 ,\sum_reg_198_reg[3]_i_6_n_4 ,\sum_reg_198_reg[3]_i_6_n_5 }),
        .CYINIT(1'b0),
        .DI({tmp8_reg_717_reg_n_104,tmp8_reg_717_reg_n_105,tmp8_reg_717_reg_n_106,tmp8_reg_717_reg_n_107}),
        .O(p_cast_fu_516_p1[3:0]),
        .S({\sum_reg_198[3]_i_7_n_2 ,\sum_reg_198[3]_i_8_n_2 ,\sum_reg_198[3]_i_9_n_2 ,\sum_reg_198[3]_i_10_n_2 }));
  FDRE \sum_reg_198_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[4]),
        .Q(sum_reg_198[4]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[5]),
        .Q(sum_reg_198[5]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[6]),
        .Q(sum_reg_198[6]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[7]),
        .Q(sum_reg_198[7]),
        .R(i_reg_2100));
  CARRY4 \sum_reg_198_reg[7]_i_1 
       (.CI(\sum_reg_198_reg[3]_i_1_n_2 ),
        .CO({\sum_reg_198_reg[7]_i_1_n_2 ,\sum_reg_198_reg[7]_i_1_n_3 ,\sum_reg_198_reg[7]_i_1_n_4 ,\sum_reg_198_reg[7]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI(sum_reg_198[7:4]),
        .O(sum_2_fu_520_p2[7:4]),
        .S({\sum_reg_198[7]_i_2_n_2 ,\sum_reg_198[7]_i_3_n_2 ,\sum_reg_198[7]_i_4_n_2 ,\sum_reg_198[7]_i_5_n_2 }));
  CARRY4 \sum_reg_198_reg[7]_i_6 
       (.CI(\sum_reg_198_reg[3]_i_6_n_2 ),
        .CO({\sum_reg_198_reg[7]_i_6_n_2 ,\sum_reg_198_reg[7]_i_6_n_3 ,\sum_reg_198_reg[7]_i_6_n_4 ,\sum_reg_198_reg[7]_i_6_n_5 }),
        .CYINIT(1'b0),
        .DI({tmp8_reg_717_reg_n_100,tmp8_reg_717_reg_n_101,tmp8_reg_717_reg_n_102,tmp8_reg_717_reg_n_103}),
        .O(p_cast_fu_516_p1[7:4]),
        .S({\sum_reg_198[7]_i_7_n_2 ,\sum_reg_198[7]_i_8_n_2 ,\sum_reg_198[7]_i_9_n_2 ,\sum_reg_198[7]_i_10_n_2 }));
  FDRE \sum_reg_198_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[8]),
        .Q(sum_reg_198[8]),
        .R(i_reg_2100));
  FDRE \sum_reg_198_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(sum_2_fu_520_p2[9]),
        .Q(sum_reg_198[9]),
        .R(i_reg_2100));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp7_reg_712_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inptr_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp7_reg_712_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp7_reg_712_reg_BCOUT_UNCONNECTED[17:0]),
        .C({sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_92,sum00_fu_454_p2_n_93,sum00_fu_454_p2_n_94,sum00_fu_454_p2_n_95,sum00_fu_454_p2_n_96,sum00_fu_454_p2_n_97,sum00_fu_454_p2_n_98,sum00_fu_454_p2_n_99,sum00_fu_454_p2_n_100,sum00_fu_454_p2_n_101,sum00_fu_454_p2_n_102,sum00_fu_454_p2_n_103,sum00_fu_454_p2_n_104,sum00_fu_454_p2_n_105,sum00_fu_454_p2_n_106,sum00_fu_454_p2_n_107}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp7_reg_712_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp7_reg_712_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(mask_address0[4]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(mask_address0[4]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state6),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp7_reg_712_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp7_reg_712_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp7_reg_712_reg_P_UNCONNECTED[47:17],tmp7_reg_712_reg_n_91,tmp7_reg_712_reg_n_92,tmp7_reg_712_reg_n_93,tmp7_reg_712_reg_n_94,tmp7_reg_712_reg_n_95,tmp7_reg_712_reg_n_96,tmp7_reg_712_reg_n_97,tmp7_reg_712_reg_n_98,tmp7_reg_712_reg_n_99,tmp7_reg_712_reg_n_100,tmp7_reg_712_reg_n_101,tmp7_reg_712_reg_n_102,tmp7_reg_712_reg_n_103,tmp7_reg_712_reg_n_104,tmp7_reg_712_reg_n_105,tmp7_reg_712_reg_n_106,tmp7_reg_712_reg_n_107}),
        .PATTERNBDETECT(NLW_tmp7_reg_712_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp7_reg_712_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp7_reg_712_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp7_reg_712_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp8_reg_717_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inptr_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp8_reg_717_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1[7],mask_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp8_reg_717_reg_BCOUT_UNCONNECTED[17:0]),
        .C({img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_2,img_conv_5x5_mac_bkb_U3_n_3,img_conv_5x5_mac_bkb_U3_n_4,img_conv_5x5_mac_bkb_U3_n_5,img_conv_5x5_mac_bkb_U3_n_6,img_conv_5x5_mac_bkb_U3_n_7,img_conv_5x5_mac_bkb_U3_n_8,img_conv_5x5_mac_bkb_U3_n_9,img_conv_5x5_mac_bkb_U3_n_10,img_conv_5x5_mac_bkb_U3_n_11,img_conv_5x5_mac_bkb_U3_n_12,img_conv_5x5_mac_bkb_U3_n_13,img_conv_5x5_mac_bkb_U3_n_14,img_conv_5x5_mac_bkb_U3_n_15,img_conv_5x5_mac_bkb_U3_n_16,img_conv_5x5_mac_bkb_U3_n_17,img_conv_5x5_mac_bkb_U3_n_18}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp8_reg_717_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp8_reg_717_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(mask_address0[4]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(mask_address0[4]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state7),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp8_reg_717_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp8_reg_717_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp8_reg_717_reg_P_UNCONNECTED[47:18],tmp8_reg_717_reg_n_90,tmp8_reg_717_reg_n_91,tmp8_reg_717_reg_n_92,tmp8_reg_717_reg_n_93,tmp8_reg_717_reg_n_94,tmp8_reg_717_reg_n_95,tmp8_reg_717_reg_n_96,tmp8_reg_717_reg_n_97,tmp8_reg_717_reg_n_98,tmp8_reg_717_reg_n_99,tmp8_reg_717_reg_n_100,tmp8_reg_717_reg_n_101,tmp8_reg_717_reg_n_102,tmp8_reg_717_reg_n_103,tmp8_reg_717_reg_n_104,tmp8_reg_717_reg_n_105,tmp8_reg_717_reg_n_106,tmp8_reg_717_reg_n_107}),
        .PATTERNBDETECT(NLW_tmp8_reg_717_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp8_reg_717_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp8_reg_717_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp8_reg_717_reg_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \tmp_13_reg_642[0]_i_1 
       (.I0(shift[0]),
        .I1(\tmp_13_reg_642[1]_i_2_n_2 ),
        .I2(\tmp_13_reg_642[0]_i_2_n_2 ),
        .I3(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \tmp_13_reg_642[0]_i_2 
       (.I0(shift[0]),
        .I1(\tmp_13_reg_642[0]_i_3_n_2 ),
        .I2(shift[2]),
        .I3(\tmp_13_reg_642[4]_i_4_n_2 ),
        .I4(shift[1]),
        .I5(\tmp_13_reg_642[2]_i_3_n_2 ),
        .O(\tmp_13_reg_642[0]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp_13_reg_642[0]_i_3 
       (.I0(sum_reg_198[20]),
        .I1(sum_reg_198[8]),
        .I2(shift[3]),
        .I3(sum_reg_198[16]),
        .I4(shift[4]),
        .I5(sum_reg_198[0]),
        .O(\tmp_13_reg_642[0]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_13_reg_642[1]_i_1 
       (.I0(\tmp_13_reg_642[1]_i_2_n_2 ),
        .I1(shift[0]),
        .I2(\tmp_13_reg_642[2]_i_2_n_2 ),
        .I3(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[1]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_13_reg_642[1]_i_2 
       (.I0(\tmp_13_reg_642[3]_i_3_n_2 ),
        .I1(shift[1]),
        .I2(\tmp_13_reg_642[5]_i_3_n_2 ),
        .I3(shift[2]),
        .I4(\tmp_13_reg_642[1]_i_3_n_2 ),
        .O(\tmp_13_reg_642[1]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp_13_reg_642[1]_i_3 
       (.I0(sum_reg_198[20]),
        .I1(sum_reg_198[9]),
        .I2(shift[3]),
        .I3(sum_reg_198[17]),
        .I4(shift[4]),
        .I5(sum_reg_198[1]),
        .O(\tmp_13_reg_642[1]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \tmp_13_reg_642[2]_i_1 
       (.I0(\tmp_13_reg_642[3]_i_2_n_2 ),
        .I1(shift[1]),
        .I2(\tmp_13_reg_642[3]_i_3_n_2 ),
        .I3(\tmp_13_reg_642[2]_i_2_n_2 ),
        .I4(shift[0]),
        .I5(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[2]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp_13_reg_642[2]_i_2 
       (.I0(\tmp_13_reg_642[4]_i_3_n_2 ),
        .I1(shift[2]),
        .I2(\tmp_13_reg_642[4]_i_4_n_2 ),
        .I3(shift[1]),
        .I4(\tmp_13_reg_642[2]_i_3_n_2 ),
        .O(\tmp_13_reg_642[2]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_13_reg_642[2]_i_3 
       (.I0(\tmp_13_reg_642[6]_i_4_n_2 ),
        .I1(shift[2]),
        .I2(\tmp_13_reg_642[2]_i_4_n_2 ),
        .O(\tmp_13_reg_642[2]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \tmp_13_reg_642[2]_i_4 
       (.I0(sum_reg_198[10]),
        .I1(sum_reg_198[20]),
        .I2(shift[3]),
        .I3(sum_reg_198[18]),
        .I4(shift[4]),
        .I5(sum_reg_198[2]),
        .O(\tmp_13_reg_642[2]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \tmp_13_reg_642[3]_i_1 
       (.I0(\tmp_13_reg_642[3]_i_2_n_2 ),
        .I1(shift[1]),
        .I2(\tmp_13_reg_642[3]_i_3_n_2 ),
        .I3(shift[0]),
        .I4(\tmp_13_reg_642[4]_i_2_n_2 ),
        .I5(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_13_reg_642[3]_i_2 
       (.I0(\tmp_13_reg_642[7]_i_4_n_2 ),
        .I1(shift[2]),
        .I2(\tmp_13_reg_642[5]_i_3_n_2 ),
        .O(\tmp_13_reg_642[3]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_13_reg_642[3]_i_3 
       (.I0(\tmp_13_reg_642[7]_i_6_n_2 ),
        .I1(shift[2]),
        .I2(\tmp_13_reg_642[3]_i_4_n_2 ),
        .O(\tmp_13_reg_642[3]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \tmp_13_reg_642[3]_i_4 
       (.I0(sum_reg_198[11]),
        .I1(sum_reg_198[20]),
        .I2(shift[3]),
        .I3(sum_reg_198[19]),
        .I4(shift[4]),
        .I5(sum_reg_198[3]),
        .O(\tmp_13_reg_642[3]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_13_reg_642[4]_i_1 
       (.I0(\tmp_13_reg_642[4]_i_2_n_2 ),
        .I1(shift[0]),
        .I2(\tmp_13_reg_642[5]_i_2_n_2 ),
        .I3(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[4]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp_13_reg_642[4]_i_2 
       (.I0(\tmp_13_reg_642[6]_i_3_n_2 ),
        .I1(\tmp_13_reg_642[6]_i_4_n_2 ),
        .I2(shift[1]),
        .I3(\tmp_13_reg_642[4]_i_3_n_2 ),
        .I4(shift[2]),
        .I5(\tmp_13_reg_642[4]_i_4_n_2 ),
        .O(\tmp_13_reg_642[4]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \tmp_13_reg_642[4]_i_3 
       (.I0(sum_reg_198[16]),
        .I1(shift[3]),
        .I2(sum_reg_198[20]),
        .I3(shift[4]),
        .I4(sum_reg_198[8]),
        .O(\tmp_13_reg_642[4]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \tmp_13_reg_642[4]_i_4 
       (.I0(sum_reg_198[4]),
        .I1(shift[3]),
        .I2(sum_reg_198[12]),
        .I3(shift[4]),
        .I4(sum_reg_198[20]),
        .O(\tmp_13_reg_642[4]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \tmp_13_reg_642[5]_i_1 
       (.I0(\tmp_13_reg_642[5]_i_2_n_2 ),
        .I1(shift[0]),
        .I2(\tmp_13_reg_642[6]_i_2_n_2 ),
        .I3(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[5]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp_13_reg_642[5]_i_2 
       (.I0(\tmp_13_reg_642[7]_i_5_n_2 ),
        .I1(\tmp_13_reg_642[7]_i_6_n_2 ),
        .I2(shift[1]),
        .I3(\tmp_13_reg_642[7]_i_4_n_2 ),
        .I4(shift[2]),
        .I5(\tmp_13_reg_642[5]_i_3_n_2 ),
        .O(\tmp_13_reg_642[5]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \tmp_13_reg_642[5]_i_3 
       (.I0(sum_reg_198[5]),
        .I1(shift[3]),
        .I2(sum_reg_198[13]),
        .I3(shift[4]),
        .I4(sum_reg_198[20]),
        .O(\tmp_13_reg_642[5]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \tmp_13_reg_642[6]_i_1 
       (.I0(\tmp_13_reg_642[7]_i_2_n_2 ),
        .I1(shift[1]),
        .I2(\tmp_13_reg_642[7]_i_3_n_2 ),
        .I3(\tmp_13_reg_642[6]_i_2_n_2 ),
        .I4(shift[0]),
        .I5(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[6]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \tmp_13_reg_642[6]_i_2 
       (.I0(\tmp_13_reg_642[6]_i_3_n_2 ),
        .I1(shift[2]),
        .I2(\tmp_13_reg_642[6]_i_4_n_2 ),
        .I3(\icmp_reg_637[0]_i_10_n_2 ),
        .I4(shift[1]),
        .O(\tmp_13_reg_642[6]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \tmp_13_reg_642[6]_i_3 
       (.I0(sum_reg_198[10]),
        .I1(shift[3]),
        .I2(sum_reg_198[18]),
        .I3(shift[4]),
        .I4(sum_reg_198[20]),
        .O(\tmp_13_reg_642[6]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \tmp_13_reg_642[6]_i_4 
       (.I0(sum_reg_198[6]),
        .I1(shift[3]),
        .I2(sum_reg_198[14]),
        .I3(shift[4]),
        .I4(sum_reg_198[20]),
        .O(\tmp_13_reg_642[6]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    \tmp_13_reg_642[7]_i_1 
       (.I0(\tmp_13_reg_642[7]_i_2_n_2 ),
        .I1(shift[1]),
        .I2(\tmp_13_reg_642[7]_i_3_n_2 ),
        .I3(\icmp_reg_637[0]_i_3_n_2 ),
        .I4(shift[0]),
        .I5(\icmp_reg_637[0]_i_2_n_2 ),
        .O(\tmp_13_reg_642[7]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hABA8FFFFABA80000)) 
    \tmp_13_reg_642[7]_i_2 
       (.I0(sum_reg_198[20]),
        .I1(shift[4]),
        .I2(shift[3]),
        .I3(sum_reg_198[13]),
        .I4(shift[2]),
        .I5(\tmp_13_reg_642[7]_i_4_n_2 ),
        .O(\tmp_13_reg_642[7]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_13_reg_642[7]_i_3 
       (.I0(\tmp_13_reg_642[7]_i_5_n_2 ),
        .I1(shift[2]),
        .I2(\tmp_13_reg_642[7]_i_6_n_2 ),
        .O(\tmp_13_reg_642[7]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \tmp_13_reg_642[7]_i_4 
       (.I0(sum_reg_198[17]),
        .I1(shift[3]),
        .I2(sum_reg_198[20]),
        .I3(shift[4]),
        .I4(sum_reg_198[9]),
        .O(\tmp_13_reg_642[7]_i_4_n_2 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \tmp_13_reg_642[7]_i_5 
       (.I0(sum_reg_198[11]),
        .I1(shift[3]),
        .I2(sum_reg_198[19]),
        .I3(shift[4]),
        .I4(sum_reg_198[20]),
        .O(\tmp_13_reg_642[7]_i_5_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \tmp_13_reg_642[7]_i_6 
       (.I0(sum_reg_198[7]),
        .I1(shift[3]),
        .I2(sum_reg_198[15]),
        .I3(shift[4]),
        .I4(sum_reg_198[20]),
        .O(\tmp_13_reg_642[7]_i_6_n_2 ));
  FDRE \tmp_13_reg_642_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[0]_i_1_n_2 ),
        .Q(tmp_13_reg_642[0]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[1]_i_1_n_2 ),
        .Q(tmp_13_reg_642[1]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[2]_i_1_n_2 ),
        .Q(tmp_13_reg_642[2]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[3]_i_1_n_2 ),
        .Q(tmp_13_reg_642[3]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[4]_i_1_n_2 ),
        .Q(tmp_13_reg_642[4]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[5]_i_1_n_2 ),
        .Q(tmp_13_reg_642[5]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[6]_i_1_n_2 ),
        .Q(tmp_13_reg_642[6]),
        .R(1'b0));
  FDRE \tmp_13_reg_642_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[8]),
        .D(\tmp_13_reg_642[7]_i_1_n_2 ),
        .Q(tmp_13_reg_642[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "img_conv_5x5_mac_bkb" *) 
module bd_0_hls_inst_0_img_conv_5x5_mac_bkb
   (P,
    reg_2210,
    ap_clk,
    mask_q0,
    inptr_q0,
    p,
    Q);
  output [16:0]P;
  output reg_2210;
  input ap_clk;
  input [7:0]mask_q0;
  input [7:0]inptr_q0;
  input [15:0]p;
  input [1:0]Q;

  wire [16:0]P;
  wire [1:0]Q;
  wire ap_clk;
  wire [7:0]inptr_q0;
  wire [7:0]mask_q0;
  wire [15:0]p;
  wire reg_2210;

  bd_0_hls_inst_0_img_conv_5x5_mac_bkb_DSP48_0 img_conv_5x5_mac_bkb_DSP48_0_U
       (.P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .inptr_q0(inptr_q0),
        .mask_q0(mask_q0),
        .p_0(p),
        .reg_2210(reg_2210));
endmodule

(* ORIG_REF_NAME = "img_conv_5x5_mac_bkb_DSP48_0" *) 
module bd_0_hls_inst_0_img_conv_5x5_mac_bkb_DSP48_0
   (P,
    reg_2210,
    ap_clk,
    mask_q0,
    inptr_q0,
    p_0,
    Q);
  output [16:0]P;
  output reg_2210;
  input ap_clk;
  input [7:0]mask_q0;
  input [7:0]inptr_q0;
  input [15:0]p_0;
  input [1:0]Q;

  wire [16:0]P;
  wire [1:0]Q;
  wire ap_clk;
  wire [7:0]inptr_q0;
  wire [7:0]mask_q0;
  wire [15:0]p_0;
  wire reg_2210;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inptr_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0[7],mask_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0[15],p_0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_2210),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(reg_2210),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:17],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    sum00_fu_454_p2_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(reg_2210));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
