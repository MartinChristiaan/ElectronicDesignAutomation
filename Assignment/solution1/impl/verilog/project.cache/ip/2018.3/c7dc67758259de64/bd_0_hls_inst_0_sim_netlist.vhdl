-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 28 11:56:20 2019
-- Host        : DESKTOP-DQMU8ME running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xa7z030fbv484-1I
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_2210 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    mask_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inptr_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb_DSP48_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb_DSP48_0 is
  signal \^reg_2210\ : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_RnM : label is "{SYNTH-11 {cell *THIS*}}";
begin
  reg_2210 <= \^reg_2210\;
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => inptr_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mask_q0(7),
      B(16) => mask_q0(7),
      B(15) => mask_q0(7),
      B(14) => mask_q0(7),
      B(13) => mask_q0(7),
      B(12) => mask_q0(7),
      B(11) => mask_q0(7),
      B(10) => mask_q0(7),
      B(9) => mask_q0(7),
      B(8) => mask_q0(7),
      B(7 downto 0) => mask_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => p_0(15),
      C(46) => p_0(15),
      C(45) => p_0(15),
      C(44) => p_0(15),
      C(43) => p_0(15),
      C(42) => p_0(15),
      C(41) => p_0(15),
      C(40) => p_0(15),
      C(39) => p_0(15),
      C(38) => p_0(15),
      C(37) => p_0(15),
      C(36) => p_0(15),
      C(35) => p_0(15),
      C(34) => p_0(15),
      C(33) => p_0(15),
      C(32) => p_0(15),
      C(31) => p_0(15),
      C(30) => p_0(15),
      C(29) => p_0(15),
      C(28) => p_0(15),
      C(27) => p_0(15),
      C(26) => p_0(15),
      C(25) => p_0(15),
      C(24) => p_0(15),
      C(23) => p_0(15),
      C(22) => p_0(15),
      C(21) => p_0(15),
      C(20) => p_0(15),
      C(19) => p_0(15),
      C(18) => p_0(15),
      C(17) => p_0(15),
      C(16) => p_0(15),
      C(15 downto 0) => p_0(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^reg_2210\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^reg_2210\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_RnM_P_UNCONNECTED(47 downto 17),
      P(16 downto 0) => P(16 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
sum00_fu_454_p2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \^reg_2210\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb is
  port (
    P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    reg_2210 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    mask_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inptr_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \^p\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb is
begin
img_conv_5x5_mac_bkb_DSP48_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb_DSP48_0
     port map (
      P(16 downto 0) => P(16 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      inptr_q0(7 downto 0) => inptr_q0(7 downto 0),
      mask_q0(7 downto 0) => mask_q0(7 downto 0),
      p_0(15 downto 0) => \^p\(15 downto 0),
      reg_2210 => reg_2210
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    inptr_address0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    inptr_ce0 : out STD_LOGIC;
    inptr_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inptr_address1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    inptr_ce1 : out STD_LOGIC;
    inptr_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outptr_address0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outptr_ce0 : out STD_LOGIC;
    outptr_we0 : out STD_LOGIC;
    outptr_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mask_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mask_ce0 : out STD_LOGIC;
    mask_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mask_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mask_ce1 : out STD_LOGIC;
    mask_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    shift : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b000000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "9'b100000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5 is
  signal \<const0>\ : STD_LOGIC;
  signal IN5_0_rec_reg_186 : STD_LOGIC;
  signal \IN5_0_rec_reg_186__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \ap_CS_fsm[0]_i_3_n_2\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_2_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_ready_INST_0_i_1_n_2 : STD_LOGIC;
  signal exitcond2_fu_246_p2 : STD_LOGIC;
  signal i_1_fu_272_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i_1_reg_606 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i_cast_reg_597 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i_reg_2100 : STD_LOGIC;
  signal icmp_fu_376_p2 : STD_LOGIC;
  signal icmp_reg_637 : STD_LOGIC;
  signal \icmp_reg_637[0]_i_10_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_11_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_12_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_13_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_14_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_15_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_16_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_17_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_18_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_19_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_20_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_21_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_22_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_23_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_24_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_25_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_2_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_3_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_4_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_5_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_6_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_7_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_8_n_2\ : STD_LOGIC;
  signal \icmp_reg_637[0]_i_9_n_2\ : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_10 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_11 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_12 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_13 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_14 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_15 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_16 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_17 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_18 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_2 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_3 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_4 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_5 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_6 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_7 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_8 : STD_LOGIC;
  signal img_conv_5x5_mac_bkb_U3_n_9 : STD_LOGIC;
  signal \^inptr_address0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \inptr_address0[1]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \inptr_address0[1]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \inptr_address0[2]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \inptr_address0[2]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \inptr_address0[2]_INST_0_i_3_n_2\ : STD_LOGIC;
  signal \inptr_address0[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \inptr_address0[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \inptr_address0[5]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \^inptr_address1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^inptr_ce0\ : STD_LOGIC;
  signal \^inptr_ce1\ : STD_LOGIC;
  signal \^mask_address0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^outptr_address0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^outptr_we0\ : STD_LOGIC;
  signal p_cast_fu_516_p1 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal p_rec_fu_252_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_rec_reg_586 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reg_2210 : STD_LOGIC;
  signal sum00_fu_454_p2_n_100 : STD_LOGIC;
  signal sum00_fu_454_p2_n_101 : STD_LOGIC;
  signal sum00_fu_454_p2_n_102 : STD_LOGIC;
  signal sum00_fu_454_p2_n_103 : STD_LOGIC;
  signal sum00_fu_454_p2_n_104 : STD_LOGIC;
  signal sum00_fu_454_p2_n_105 : STD_LOGIC;
  signal sum00_fu_454_p2_n_106 : STD_LOGIC;
  signal sum00_fu_454_p2_n_107 : STD_LOGIC;
  signal sum00_fu_454_p2_n_91 : STD_LOGIC;
  signal sum00_fu_454_p2_n_92 : STD_LOGIC;
  signal sum00_fu_454_p2_n_93 : STD_LOGIC;
  signal sum00_fu_454_p2_n_94 : STD_LOGIC;
  signal sum00_fu_454_p2_n_95 : STD_LOGIC;
  signal sum00_fu_454_p2_n_96 : STD_LOGIC;
  signal sum00_fu_454_p2_n_97 : STD_LOGIC;
  signal sum00_fu_454_p2_n_98 : STD_LOGIC;
  signal sum00_fu_454_p2_n_99 : STD_LOGIC;
  signal sum33_reg_707_reg_n_100 : STD_LOGIC;
  signal sum33_reg_707_reg_n_101 : STD_LOGIC;
  signal sum33_reg_707_reg_n_102 : STD_LOGIC;
  signal sum33_reg_707_reg_n_103 : STD_LOGIC;
  signal sum33_reg_707_reg_n_104 : STD_LOGIC;
  signal sum33_reg_707_reg_n_105 : STD_LOGIC;
  signal sum33_reg_707_reg_n_106 : STD_LOGIC;
  signal sum33_reg_707_reg_n_107 : STD_LOGIC;
  signal sum33_reg_707_reg_n_92 : STD_LOGIC;
  signal sum33_reg_707_reg_n_93 : STD_LOGIC;
  signal sum33_reg_707_reg_n_94 : STD_LOGIC;
  signal sum33_reg_707_reg_n_95 : STD_LOGIC;
  signal sum33_reg_707_reg_n_96 : STD_LOGIC;
  signal sum33_reg_707_reg_n_97 : STD_LOGIC;
  signal sum33_reg_707_reg_n_98 : STD_LOGIC;
  signal sum33_reg_707_reg_n_99 : STD_LOGIC;
  signal sum3_fu_306_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sum3_reg_616 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal sum3_reg_6160 : STD_LOGIC;
  signal \sum3_reg_616[5]_i_3_n_2\ : STD_LOGIC;
  signal sum5_fu_319_p2 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal sum5_reg_622 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal sum9_fu_332_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sum9_reg_627 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sum9_reg_627[3]_i_2_n_2\ : STD_LOGIC;
  signal \sum9_reg_627[3]_i_3_n_2\ : STD_LOGIC;
  signal \sum9_reg_627[3]_i_4_n_2\ : STD_LOGIC;
  signal \sum9_reg_627_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sum9_reg_627_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sum9_reg_627_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sum9_reg_627_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sum9_reg_627_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal sum_2_fu_520_p2 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal sum_reg_198 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \sum_reg_198[11]_i_10_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_3_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_4_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_5_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_7_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_8_n_2\ : STD_LOGIC;
  signal \sum_reg_198[11]_i_9_n_2\ : STD_LOGIC;
  signal \sum_reg_198[15]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg_198[15]_i_3_n_2\ : STD_LOGIC;
  signal \sum_reg_198[15]_i_4_n_2\ : STD_LOGIC;
  signal \sum_reg_198[15]_i_5_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_10_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_11_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_12_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_13_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_14_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_3_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_4_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_5_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_6_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_8_n_2\ : STD_LOGIC;
  signal \sum_reg_198[19]_i_9_n_2\ : STD_LOGIC;
  signal \sum_reg_198[20]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_10_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_3_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_4_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_5_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_7_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_8_n_2\ : STD_LOGIC;
  signal \sum_reg_198[3]_i_9_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_10_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_3_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_4_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_5_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_7_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_8_n_2\ : STD_LOGIC;
  signal \sum_reg_198[7]_i_9_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_6_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_6_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_6_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[11]_i_6_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_7_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_7_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_7_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[19]_i_7_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_6_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_6_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_6_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[3]_i_6_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_6_n_2\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_6_n_3\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_6_n_4\ : STD_LOGIC;
  signal \sum_reg_198_reg[7]_i_6_n_5\ : STD_LOGIC;
  signal tmp1_fu_298_p3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tmp7_reg_712_reg_n_100 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_101 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_102 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_103 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_104 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_105 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_106 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_107 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_91 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_92 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_93 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_94 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_95 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_96 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_97 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_98 : STD_LOGIC;
  signal tmp7_reg_712_reg_n_99 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_100 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_101 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_102 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_103 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_104 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_105 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_106 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_107 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_90 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_91 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_92 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_93 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_94 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_95 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_96 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_97 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_98 : STD_LOGIC;
  signal tmp8_reg_717_reg_n_99 : STD_LOGIC;
  signal tmp_13_reg_642 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tmp_13_reg_642[0]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[0]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[0]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[1]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[1]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[1]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[2]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[2]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[2]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[2]_i_4_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[3]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[3]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[3]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[3]_i_4_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[4]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[4]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[4]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[4]_i_4_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[5]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[5]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[5]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[6]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[6]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[6]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[6]_i_4_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[7]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[7]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[7]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[7]_i_4_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[7]_i_5_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_642[7]_i_6_n_2\ : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum00_fu_454_p2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum00_fu_454_p2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum00_fu_454_p2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum00_fu_454_p2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_sum00_fu_454_p2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_sum33_reg_707_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum33_reg_707_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum33_reg_707_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum33_reg_707_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum33_reg_707_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum33_reg_707_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum33_reg_707_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum33_reg_707_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum33_reg_707_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum33_reg_707_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_sum33_reg_707_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_sum9_reg_627_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum9_reg_627_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_reg_198_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_reg_198_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_reg_198_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_reg_198_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_tmp7_reg_712_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp7_reg_712_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp7_reg_712_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp7_reg_712_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp7_reg_712_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp7_reg_712_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp7_reg_712_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp7_reg_712_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp7_reg_712_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp7_reg_712_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_tmp7_reg_712_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_tmp8_reg_717_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp8_reg_717_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp8_reg_717_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp8_reg_717_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp8_reg_717_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp8_reg_717_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp8_reg_717_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp8_reg_717_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp8_reg_717_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp8_reg_717_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp8_reg_717_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair17";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ap_ready_INST_0_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_1_reg_606[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_1_reg_606[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_21\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_22\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_24\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_25\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \icmp_reg_637[0]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \inptr_address0[1]_INST_0_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \inptr_address0[2]_INST_0_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \inptr_address0[2]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \inptr_address0[4]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \inptr_address0[5]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \inptr_address0[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \inptr_address1[6]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \inptr_address1[7]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mask_address0[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mask_address0[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mask_address0[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mask_address1[0]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mask_address1[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mask_address1[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mask_address1[3]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mask_address1[4]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of mask_ce0_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of mask_ce1_INST_0 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \outptr_d0[0]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \outptr_d0[1]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \outptr_d0[2]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \outptr_d0[3]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \outptr_d0[4]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \outptr_d0[5]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \outptr_d0[6]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \outptr_d0[7]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \p_rec_reg_586[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \p_rec_reg_586[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \p_rec_reg_586[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \p_rec_reg_586[4]_i_1\ : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of sum00_fu_454_p2 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of sum33_reg_707_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \sum3_reg_616[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sum3_reg_616[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sum3_reg_616[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum3_reg_616[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sum3_reg_616[5]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[2]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[3]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[4]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[6]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[6]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[7]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tmp_13_reg_642[7]_i_6\ : label is "soft_lutpair4";
begin
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  inptr_address0(10) <= \<const0>\;
  inptr_address0(9) <= \<const0>\;
  inptr_address0(8) <= \^mask_address0\(4);
  inptr_address0(7) <= \<const0>\;
  inptr_address0(6 downto 0) <= \^inptr_address0\(6 downto 0);
  inptr_address1(10) <= \<const0>\;
  inptr_address1(9) <= \<const0>\;
  inptr_address1(8) <= \<const0>\;
  inptr_address1(7 downto 0) <= \^inptr_address1\(7 downto 0);
  inptr_ce0 <= \^inptr_ce0\;
  inptr_ce1 <= \^inptr_ce1\;
  mask_address0(4 downto 0) <= \^mask_address0\(4 downto 0);
  mask_ce0 <= \^inptr_ce0\;
  mask_ce1 <= \^inptr_ce1\;
  outptr_address0(5 downto 0) <= \^outptr_address0\(5 downto 0);
  outptr_ce0 <= \^outptr_we0\;
  outptr_we0 <= \^outptr_we0\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\IN5_0_rec_reg_186[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^outptr_we0\,
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_2_[0]\,
      O => IN5_0_rec_reg_186
    );
\IN5_0_rec_reg_186_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^outptr_we0\,
      D => p_rec_reg_586(0),
      Q => \IN5_0_rec_reg_186__0\(0),
      R => IN5_0_rec_reg_186
    );
\IN5_0_rec_reg_186_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^outptr_we0\,
      D => p_rec_reg_586(1),
      Q => \IN5_0_rec_reg_186__0\(1),
      R => IN5_0_rec_reg_186
    );
\IN5_0_rec_reg_186_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^outptr_we0\,
      D => p_rec_reg_586(2),
      Q => \IN5_0_rec_reg_186__0\(2),
      R => IN5_0_rec_reg_186
    );
\IN5_0_rec_reg_186_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^outptr_we0\,
      D => p_rec_reg_586(3),
      Q => \IN5_0_rec_reg_186__0\(3),
      R => IN5_0_rec_reg_186
    );
\IN5_0_rec_reg_186_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^outptr_we0\,
      D => p_rec_reg_586(4),
      Q => \IN5_0_rec_reg_186__0\(4),
      R => IN5_0_rec_reg_186
    );
\IN5_0_rec_reg_186_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^outptr_we0\,
      D => p_rec_reg_586(5),
      Q => \IN5_0_rec_reg_186__0\(5),
      R => IN5_0_rec_reg_186
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550055C05500"
    )
        port map (
      I0 => ap_start,
      I1 => exitcond2_fu_246_p2,
      I2 => \ap_CS_fsm[0]_i_3_n_2\,
      I3 => \ap_CS_fsm_reg_n_2_[0]\,
      I4 => ap_CS_fsm_state2,
      I5 => ap_CS_fsm_state3,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(3),
      I1 => \IN5_0_rec_reg_186__0\(4),
      I2 => \IN5_0_rec_reg_186__0\(5),
      I3 => \IN5_0_rec_reg_186__0\(2),
      I4 => \IN5_0_rec_reg_186__0\(1),
      I5 => \IN5_0_rec_reg_186__0\(0),
      O => exitcond2_fu_246_p2
    );
\ap_CS_fsm[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state7,
      I2 => ap_CS_fsm_state8,
      I3 => \^outptr_we0\,
      I4 => ap_CS_fsm_state4,
      I5 => \^mask_address0\(4),
      O => \ap_CS_fsm[0]_i_3_n_2\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_2_[0]\,
      I2 => \^outptr_we0\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg_2100,
      I1 => ap_CS_fsm_state8,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => tmp1_fu_298_p3(0),
      I2 => tmp1_fu_298_p3(1),
      I3 => tmp1_fu_298_p3(2),
      O => ap_NS_fsm(8)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_2_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sum3_reg_6160,
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state4,
      Q => \^mask_address0\(4),
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^mask_address0\(4),
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state6,
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state7,
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => \^outptr_we0\,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_2_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_ready_INST_0_i_1_n_2,
      I2 => \IN5_0_rec_reg_186__0\(2),
      I3 => \IN5_0_rec_reg_186__0\(5),
      I4 => \IN5_0_rec_reg_186__0\(4),
      I5 => \IN5_0_rec_reg_186__0\(3),
      O => \^ap_ready\
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(0),
      I1 => \IN5_0_rec_reg_186__0\(1),
      O => ap_ready_INST_0_i_1_n_2
    );
\i_1_reg_606[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      O => i_1_fu_272_p2(0)
    );
\i_1_reg_606[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => tmp1_fu_298_p3(1),
      O => i_1_fu_272_p2(1)
    );
\i_1_reg_606[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => tmp1_fu_298_p3(1),
      I2 => tmp1_fu_298_p3(2),
      O => i_1_fu_272_p2(2)
    );
\i_1_reg_606_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => i_1_fu_272_p2(0),
      Q => i_1_reg_606(0),
      R => '0'
    );
\i_1_reg_606_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => i_1_fu_272_p2(1),
      Q => i_1_reg_606(1),
      R => '0'
    );
\i_1_reg_606_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => i_1_fu_272_p2(2),
      Q => i_1_reg_606(2),
      R => '0'
    );
\i_cast1_reg_591_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp1_fu_298_p3(0),
      Q => i_cast_reg_597(0),
      R => '0'
    );
\i_cast1_reg_591_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp1_fu_298_p3(1),
      Q => i_cast_reg_597(1),
      R => '0'
    );
\i_cast1_reg_591_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp1_fu_298_p3(2),
      Q => i_cast_reg_597(2),
      R => '0'
    );
\i_reg_210[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_ready_INST_0_i_1_n_2,
      I2 => \IN5_0_rec_reg_186__0\(2),
      I3 => \IN5_0_rec_reg_186__0\(5),
      I4 => \IN5_0_rec_reg_186__0\(4),
      I5 => \IN5_0_rec_reg_186__0\(3),
      O => i_reg_2100
    );
\i_reg_210_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => i_1_reg_606(0),
      Q => tmp1_fu_298_p3(0),
      R => i_reg_2100
    );
\i_reg_210_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => i_1_reg_606(1),
      Q => tmp1_fu_298_p3(1),
      R => i_reg_2100
    );
\i_reg_210_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => i_1_reg_606(2),
      Q => tmp1_fu_298_p3(2),
      R => i_reg_2100
    );
\icmp_reg_637[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550455"
    )
        port map (
      I0 => \icmp_reg_637[0]_i_2_n_2\,
      I1 => \icmp_reg_637[0]_i_3_n_2\,
      I2 => shift(0),
      I3 => \icmp_reg_637[0]_i_4_n_2\,
      I4 => \icmp_reg_637[0]_i_5_n_2\,
      O => icmp_fu_376_p2
    );
\icmp_reg_637[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8FFFFABA80000"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => shift(4),
      I2 => shift(3),
      I3 => sum_reg_198(12),
      I4 => shift(2),
      I5 => \tmp_13_reg_642[4]_i_3_n_2\,
      O => \icmp_reg_637[0]_i_10_n_2\
    );
\icmp_reg_637[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011111015"
    )
        port map (
      I0 => \icmp_reg_637[0]_i_20_n_2\,
      I1 => sum_reg_198(20),
      I2 => shift(3),
      I3 => sum_reg_198(18),
      I4 => shift(4),
      I5 => \tmp_13_reg_642[7]_i_5_n_2\,
      O => \icmp_reg_637[0]_i_11_n_2\
    );
\icmp_reg_637[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => shift(3),
      I1 => sum_reg_198(16),
      I2 => shift(4),
      O => \icmp_reg_637[0]_i_12_n_2\
    );
\icmp_reg_637[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => shift(4),
      I2 => shift(3),
      I3 => sum_reg_198(13),
      O => \icmp_reg_637[0]_i_13_n_2\
    );
\icmp_reg_637[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFCECEC"
    )
        port map (
      I0 => \icmp_reg_637[0]_i_21_n_2\,
      I1 => \icmp_reg_637[0]_i_22_n_2\,
      I2 => shift(2),
      I3 => shift(1),
      I4 => sum_reg_198(20),
      I5 => \icmp_reg_637[0]_i_23_n_2\,
      O => \icmp_reg_637[0]_i_14_n_2\
    );
\icmp_reg_637[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F80000FF00"
    )
        port map (
      I0 => shift(1),
      I1 => sum_reg_198(20),
      I2 => \icmp_reg_637[0]_i_24_n_2\,
      I3 => sum_reg_198(14),
      I4 => \icmp_reg_637[0]_i_25_n_2\,
      I5 => shift(2),
      O => \icmp_reg_637[0]_i_15_n_2\
    );
\icmp_reg_637[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => shift(18),
      I1 => shift(15),
      I2 => shift(28),
      I3 => shift(16),
      O => \icmp_reg_637[0]_i_16_n_2\
    );
\icmp_reg_637[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => shift(13),
      I1 => shift(11),
      I2 => shift(30),
      I3 => shift(23),
      O => \icmp_reg_637[0]_i_17_n_2\
    );
\icmp_reg_637[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => shift(31),
      I1 => shift(8),
      I2 => shift(24),
      I3 => shift(19),
      O => \icmp_reg_637[0]_i_18_n_2\
    );
\icmp_reg_637[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => shift(26),
      I1 => shift(22),
      I2 => shift(17),
      I3 => shift(12),
      O => \icmp_reg_637[0]_i_19_n_2\
    );
\icmp_reg_637[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \icmp_reg_637[0]_i_6_n_2\,
      I1 => \icmp_reg_637[0]_i_7_n_2\,
      I2 => \icmp_reg_637[0]_i_8_n_2\,
      O => \icmp_reg_637[0]_i_2_n_2\
    );
\icmp_reg_637[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCFCFCCCCCFCA"
    )
        port map (
      I0 => sum_reg_198(12),
      I1 => sum_reg_198(20),
      I2 => shift(3),
      I3 => sum_reg_198(17),
      I4 => shift(4),
      I5 => sum_reg_198(16),
      O => \icmp_reg_637[0]_i_20_n_2\
    );
\icmp_reg_637[0]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => shift(3),
      I1 => sum_reg_198(17),
      I2 => shift(4),
      O => \icmp_reg_637[0]_i_21_n_2\
    );
\icmp_reg_637[0]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => shift(3),
      I1 => shift(4),
      I2 => sum_reg_198(20),
      O => \icmp_reg_637[0]_i_22_n_2\
    );
\icmp_reg_637[0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => shift(3),
      I1 => shift(4),
      I2 => sum_reg_198(15),
      I3 => sum_reg_198(19),
      O => \icmp_reg_637[0]_i_23_n_2\
    );
\icmp_reg_637[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB8"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => shift(3),
      I2 => sum_reg_198(18),
      I3 => shift(4),
      O => \icmp_reg_637[0]_i_24_n_2\
    );
\icmp_reg_637[0]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift(4),
      I1 => shift(3),
      O => \icmp_reg_637[0]_i_25_n_2\
    );
\icmp_reg_637[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \icmp_reg_637[0]_i_9_n_2\,
      I1 => shift(1),
      I2 => \icmp_reg_637[0]_i_10_n_2\,
      O => \icmp_reg_637[0]_i_3_n_2\
    );
\icmp_reg_637[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => shift(1),
      I1 => \tmp_13_reg_642[7]_i_2_n_2\,
      I2 => \icmp_reg_637[0]_i_9_n_2\,
      O => \icmp_reg_637[0]_i_4_n_2\
    );
\icmp_reg_637[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F45"
    )
        port map (
      I0 => \icmp_reg_637[0]_i_11_n_2\,
      I1 => \icmp_reg_637[0]_i_12_n_2\,
      I2 => shift(2),
      I3 => \icmp_reg_637[0]_i_13_n_2\,
      I4 => \icmp_reg_637[0]_i_14_n_2\,
      I5 => \icmp_reg_637[0]_i_15_n_2\,
      O => \icmp_reg_637[0]_i_5_n_2\
    );
\icmp_reg_637[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => shift(7),
      I1 => shift(25),
      I2 => shift(27),
      I3 => shift(29),
      I4 => \icmp_reg_637[0]_i_16_n_2\,
      I5 => \icmp_reg_637[0]_i_17_n_2\,
      O => \icmp_reg_637[0]_i_6_n_2\
    );
\icmp_reg_637[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => shift(14),
      I1 => shift(20),
      I2 => shift(9),
      I3 => shift(21),
      I4 => \icmp_reg_637[0]_i_18_n_2\,
      O => \icmp_reg_637[0]_i_7_n_2\
    );
\icmp_reg_637[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => shift(5),
      I2 => shift(6),
      I3 => shift(10),
      I4 => \icmp_reg_637[0]_i_19_n_2\,
      O => \icmp_reg_637[0]_i_8_n_2\
    );
\icmp_reg_637[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8FFFFABA80000"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => shift(4),
      I2 => shift(3),
      I3 => sum_reg_198(14),
      I4 => shift(2),
      I5 => \tmp_13_reg_642[6]_i_3_n_2\,
      O => \icmp_reg_637[0]_i_9_n_2\
    );
\icmp_reg_637_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => icmp_fu_376_p2,
      Q => icmp_reg_637,
      R => '0'
    );
img_conv_5x5_mac_bkb_U3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5_mac_bkb
     port map (
      P(16) => img_conv_5x5_mac_bkb_U3_n_2,
      P(15) => img_conv_5x5_mac_bkb_U3_n_3,
      P(14) => img_conv_5x5_mac_bkb_U3_n_4,
      P(13) => img_conv_5x5_mac_bkb_U3_n_5,
      P(12) => img_conv_5x5_mac_bkb_U3_n_6,
      P(11) => img_conv_5x5_mac_bkb_U3_n_7,
      P(10) => img_conv_5x5_mac_bkb_U3_n_8,
      P(9) => img_conv_5x5_mac_bkb_U3_n_9,
      P(8) => img_conv_5x5_mac_bkb_U3_n_10,
      P(7) => img_conv_5x5_mac_bkb_U3_n_11,
      P(6) => img_conv_5x5_mac_bkb_U3_n_12,
      P(5) => img_conv_5x5_mac_bkb_U3_n_13,
      P(4) => img_conv_5x5_mac_bkb_U3_n_14,
      P(3) => img_conv_5x5_mac_bkb_U3_n_15,
      P(2) => img_conv_5x5_mac_bkb_U3_n_16,
      P(1) => img_conv_5x5_mac_bkb_U3_n_17,
      P(0) => img_conv_5x5_mac_bkb_U3_n_18,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => ap_CS_fsm_state4,
      ap_clk => ap_clk,
      inptr_q0(7 downto 0) => inptr_q0(7 downto 0),
      mask_q0(7 downto 0) => mask_q0(7 downto 0),
      \^p\(15) => sum33_reg_707_reg_n_92,
      \^p\(14) => sum33_reg_707_reg_n_93,
      \^p\(13) => sum33_reg_707_reg_n_94,
      \^p\(12) => sum33_reg_707_reg_n_95,
      \^p\(11) => sum33_reg_707_reg_n_96,
      \^p\(10) => sum33_reg_707_reg_n_97,
      \^p\(9) => sum33_reg_707_reg_n_98,
      \^p\(8) => sum33_reg_707_reg_n_99,
      \^p\(7) => sum33_reg_707_reg_n_100,
      \^p\(6) => sum33_reg_707_reg_n_101,
      \^p\(5) => sum33_reg_707_reg_n_102,
      \^p\(4) => sum33_reg_707_reg_n_103,
      \^p\(3) => sum33_reg_707_reg_n_104,
      \^p\(2) => sum33_reg_707_reg_n_105,
      \^p\(1) => sum33_reg_707_reg_n_106,
      \^p\(0) => sum33_reg_707_reg_n_107,
      reg_2210 => reg_2210
    );
\inptr_address0[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAAA0FF0"
    )
        port map (
      I0 => \^inptr_address1\(0),
      I1 => sum9_reg_627(0),
      I2 => tmp1_fu_298_p3(0),
      I3 => \IN5_0_rec_reg_186__0\(0),
      I4 => ap_CS_fsm_state4,
      I5 => \^mask_address0\(4),
      O => \^inptr_address0\(0)
    );
\inptr_address0[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACFCAC0CAC0CACF"
    )
        port map (
      I0 => \^inptr_address1\(1),
      I1 => sum9_reg_627(1),
      I2 => \^mask_address0\(4),
      I3 => ap_CS_fsm_state4,
      I4 => \inptr_address0[1]_INST_0_i_1_n_2\,
      I5 => \inptr_address0[1]_INST_0_i_2_n_2\,
      O => \^inptr_address0\(1)
    );
\inptr_address0[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => \IN5_0_rec_reg_186__0\(0),
      O => \inptr_address0[1]_INST_0_i_1_n_2\
    );
\inptr_address0[1]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(1),
      I1 => tmp1_fu_298_p3(1),
      O => \inptr_address0[1]_INST_0_i_2_n_2\
    );
\inptr_address0[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAABABBA"
    )
        port map (
      I0 => \inptr_address0[2]_INST_0_i_1_n_2\,
      I1 => \^inptr_ce1\,
      I2 => \IN5_0_rec_reg_186__0\(2),
      I3 => tmp1_fu_298_p3(2),
      I4 => \inptr_address0[2]_INST_0_i_2_n_2\,
      I5 => \inptr_address0[2]_INST_0_i_3_n_2\,
      O => \^inptr_address0\(2)
    );
\inptr_address0[2]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sum9_reg_627(2),
      I1 => \^mask_address0\(4),
      O => \inptr_address0[2]_INST_0_i_1_n_2\
    );
\inptr_address0[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8A0"
    )
        port map (
      I0 => tmp1_fu_298_p3(1),
      I1 => \IN5_0_rec_reg_186__0\(0),
      I2 => \IN5_0_rec_reg_186__0\(1),
      I3 => tmp1_fu_298_p3(0),
      O => \inptr_address0[2]_INST_0_i_2_n_2\
    );
\inptr_address0[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^mask_address0\(4),
      I1 => ap_CS_fsm_state4,
      I2 => \^inptr_address1\(2),
      O => \inptr_address0[2]_INST_0_i_3_n_2\
    );
\inptr_address0[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACC0FCCAACCF0"
    )
        port map (
      I0 => \^inptr_address1\(3),
      I1 => sum9_reg_627(3),
      I2 => \IN5_0_rec_reg_186__0\(3),
      I3 => \^mask_address0\(4),
      I4 => ap_CS_fsm_state4,
      I5 => \inptr_address0[3]_INST_0_i_1_n_2\,
      O => \^inptr_address0\(3)
    );
\inptr_address0[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE8A0E8A00000"
    )
        port map (
      I0 => tmp1_fu_298_p3(1),
      I1 => \IN5_0_rec_reg_186__0\(0),
      I2 => \IN5_0_rec_reg_186__0\(1),
      I3 => tmp1_fu_298_p3(0),
      I4 => tmp1_fu_298_p3(2),
      I5 => \IN5_0_rec_reg_186__0\(2),
      O => \inptr_address0[3]_INST_0_i_1_n_2\
    );
\inptr_address0[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCF0CCAACC0F"
    )
        port map (
      I0 => \^inptr_address1\(4),
      I1 => sum9_reg_627(4),
      I2 => \IN5_0_rec_reg_186__0\(4),
      I3 => \^mask_address0\(4),
      I4 => ap_CS_fsm_state4,
      I5 => \inptr_address0[4]_INST_0_i_1_n_2\,
      O => \^inptr_address0\(4)
    );
\inptr_address0[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \inptr_address0[3]_INST_0_i_1_n_2\,
      I1 => \IN5_0_rec_reg_186__0\(3),
      O => \inptr_address0[4]_INST_0_i_1_n_2\
    );
\inptr_address0[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCF0CCAACC0F"
    )
        port map (
      I0 => \^inptr_address1\(5),
      I1 => sum9_reg_627(5),
      I2 => \IN5_0_rec_reg_186__0\(5),
      I3 => \^mask_address0\(4),
      I4 => ap_CS_fsm_state4,
      I5 => \inptr_address0[5]_INST_0_i_1_n_2\,
      O => \^inptr_address0\(5)
    );
\inptr_address0[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(4),
      I1 => \IN5_0_rec_reg_186__0\(3),
      I2 => \inptr_address0[3]_INST_0_i_1_n_2\,
      O => \inptr_address0[5]_INST_0_i_1_n_2\
    );
\inptr_address0[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sum9_reg_627(6),
      I1 => sum3_reg_616(6),
      I2 => ap_CS_fsm_state4,
      I3 => \^mask_address0\(4),
      O => \^inptr_address0\(6)
    );
\inptr_address1[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sum3_reg_616(6),
      I1 => \^mask_address0\(4),
      I2 => sum5_reg_622(6),
      O => \^inptr_address1\(6)
    );
\inptr_address1[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sum3_reg_616(6),
      I1 => \^mask_address0\(4),
      O => \^inptr_address1\(7)
    );
\mask_address0[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20E"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => ap_CS_fsm_state4,
      I2 => \^mask_address0\(4),
      I3 => i_cast_reg_597(0),
      O => \^mask_address0\(0)
    );
\mask_address0[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F20EFE02"
    )
        port map (
      I0 => tmp1_fu_298_p3(1),
      I1 => ap_CS_fsm_state4,
      I2 => \^mask_address0\(4),
      I3 => i_cast_reg_597(1),
      I4 => i_cast_reg_597(0),
      O => \^mask_address0\(1)
    );
\mask_address0[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EF202FE02FE02FE"
    )
        port map (
      I0 => tmp1_fu_298_p3(2),
      I1 => ap_CS_fsm_state4,
      I2 => \^mask_address0\(4),
      I3 => i_cast_reg_597(2),
      I4 => i_cast_reg_597(1),
      I5 => i_cast_reg_597(0),
      O => \^mask_address0\(2)
    );
\mask_address0[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F8F000"
    )
        port map (
      I0 => i_cast_reg_597(0),
      I1 => i_cast_reg_597(1),
      I2 => i_cast_reg_597(2),
      I3 => \^mask_address0\(4),
      I4 => ap_CS_fsm_state4,
      O => \^mask_address0\(3)
    );
\mask_address1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mask_address0\(4),
      I1 => i_cast_reg_597(0),
      O => mask_address1(0)
    );
\mask_address1[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"93"
    )
        port map (
      I0 => i_cast_reg_597(0),
      I1 => i_cast_reg_597(1),
      I2 => \^mask_address0\(4),
      O => mask_address1(1)
    );
\mask_address1[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D926"
    )
        port map (
      I0 => i_cast_reg_597(1),
      I1 => \^mask_address0\(4),
      I2 => i_cast_reg_597(0),
      I3 => i_cast_reg_597(2),
      O => mask_address1(2)
    );
\mask_address1[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051F"
    )
        port map (
      I0 => i_cast_reg_597(2),
      I1 => i_cast_reg_597(0),
      I2 => \^mask_address0\(4),
      I3 => i_cast_reg_597(1),
      O => mask_address1(3)
    );
\mask_address1[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => i_cast_reg_597(2),
      I1 => \^mask_address0\(4),
      I2 => i_cast_reg_597(0),
      I3 => i_cast_reg_597(1),
      O => mask_address1(4)
    );
mask_ce0_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \^mask_address0\(4),
      I2 => ap_CS_fsm_state3,
      O => \^inptr_ce0\
    );
mask_ce1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mask_address0\(4),
      I1 => ap_CS_fsm_state4,
      O => \^inptr_ce1\
    );
\outptr_addr_reg_578_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \IN5_0_rec_reg_186__0\(0),
      Q => \^outptr_address0\(0),
      R => '0'
    );
\outptr_addr_reg_578_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \IN5_0_rec_reg_186__0\(1),
      Q => \^outptr_address0\(1),
      R => '0'
    );
\outptr_addr_reg_578_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \IN5_0_rec_reg_186__0\(2),
      Q => \^outptr_address0\(2),
      R => '0'
    );
\outptr_addr_reg_578_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \IN5_0_rec_reg_186__0\(3),
      Q => \^outptr_address0\(3),
      R => '0'
    );
\outptr_addr_reg_578_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \IN5_0_rec_reg_186__0\(4),
      Q => \^outptr_address0\(4),
      R => '0'
    );
\outptr_addr_reg_578_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \IN5_0_rec_reg_186__0\(5),
      Q => \^outptr_address0\(5),
      R => '0'
    );
\outptr_d0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(0),
      I1 => icmp_reg_637,
      O => outptr_d0(0)
    );
\outptr_d0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(1),
      I1 => icmp_reg_637,
      O => outptr_d0(1)
    );
\outptr_d0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(2),
      I1 => icmp_reg_637,
      O => outptr_d0(2)
    );
\outptr_d0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(3),
      I1 => icmp_reg_637,
      O => outptr_d0(3)
    );
\outptr_d0[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(4),
      I1 => icmp_reg_637,
      O => outptr_d0(4)
    );
\outptr_d0[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(5),
      I1 => icmp_reg_637,
      O => outptr_d0(5)
    );
\outptr_d0[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(6),
      I1 => icmp_reg_637,
      O => outptr_d0(6)
    );
\outptr_d0[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_13_reg_642(7),
      I1 => icmp_reg_637,
      O => outptr_d0(7)
    );
\p_rec_reg_586[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(0),
      O => p_rec_fu_252_p2(0)
    );
\p_rec_reg_586[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(0),
      I1 => \IN5_0_rec_reg_186__0\(1),
      O => p_rec_fu_252_p2(1)
    );
\p_rec_reg_586[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(1),
      I1 => \IN5_0_rec_reg_186__0\(0),
      I2 => \IN5_0_rec_reg_186__0\(2),
      O => p_rec_fu_252_p2(2)
    );
\p_rec_reg_586[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(0),
      I1 => \IN5_0_rec_reg_186__0\(1),
      I2 => \IN5_0_rec_reg_186__0\(2),
      I3 => \IN5_0_rec_reg_186__0\(3),
      O => p_rec_fu_252_p2(3)
    );
\p_rec_reg_586[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(3),
      I1 => \IN5_0_rec_reg_186__0\(2),
      I2 => \IN5_0_rec_reg_186__0\(1),
      I3 => \IN5_0_rec_reg_186__0\(0),
      I4 => \IN5_0_rec_reg_186__0\(4),
      O => p_rec_fu_252_p2(4)
    );
\p_rec_reg_586[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \IN5_0_rec_reg_186__0\(2),
      I1 => \IN5_0_rec_reg_186__0\(1),
      I2 => \IN5_0_rec_reg_186__0\(0),
      I3 => \IN5_0_rec_reg_186__0\(3),
      I4 => \IN5_0_rec_reg_186__0\(4),
      I5 => \IN5_0_rec_reg_186__0\(5),
      O => p_rec_fu_252_p2(5)
    );
\p_rec_reg_586_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_rec_fu_252_p2(0),
      Q => p_rec_reg_586(0),
      R => '0'
    );
\p_rec_reg_586_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_rec_fu_252_p2(1),
      Q => p_rec_reg_586(1),
      R => '0'
    );
\p_rec_reg_586_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_rec_fu_252_p2(2),
      Q => p_rec_reg_586(2),
      R => '0'
    );
\p_rec_reg_586_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_rec_fu_252_p2(3),
      Q => p_rec_reg_586(3),
      R => '0'
    );
\p_rec_reg_586_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_rec_fu_252_p2(4),
      Q => p_rec_reg_586(4),
      R => '0'
    );
\p_rec_reg_586_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => p_rec_fu_252_p2(5),
      Q => p_rec_reg_586(5),
      R => '0'
    );
sum00_fu_454_p2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => inptr_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum00_fu_454_p2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mask_q0(7),
      B(16) => mask_q0(7),
      B(15) => mask_q0(7),
      B(14) => mask_q0(7),
      B(13) => mask_q0(7),
      B(12) => mask_q0(7),
      B(11) => mask_q0(7),
      B(10) => mask_q0(7),
      B(9) => mask_q0(7),
      B(8) => mask_q0(7),
      B(7 downto 0) => mask_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum00_fu_454_p2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum00_fu_454_p2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum00_fu_454_p2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => reg_2210,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => reg_2210,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum00_fu_454_p2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_sum00_fu_454_p2_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_sum00_fu_454_p2_P_UNCONNECTED(47 downto 17),
      P(16) => sum00_fu_454_p2_n_91,
      P(15) => sum00_fu_454_p2_n_92,
      P(14) => sum00_fu_454_p2_n_93,
      P(13) => sum00_fu_454_p2_n_94,
      P(12) => sum00_fu_454_p2_n_95,
      P(11) => sum00_fu_454_p2_n_96,
      P(10) => sum00_fu_454_p2_n_97,
      P(9) => sum00_fu_454_p2_n_98,
      P(8) => sum00_fu_454_p2_n_99,
      P(7) => sum00_fu_454_p2_n_100,
      P(6) => sum00_fu_454_p2_n_101,
      P(5) => sum00_fu_454_p2_n_102,
      P(4) => sum00_fu_454_p2_n_103,
      P(3) => sum00_fu_454_p2_n_104,
      P(2) => sum00_fu_454_p2_n_105,
      P(1) => sum00_fu_454_p2_n_106,
      P(0) => sum00_fu_454_p2_n_107,
      PATTERNBDETECT => NLW_sum00_fu_454_p2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum00_fu_454_p2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum00_fu_454_p2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_sum00_fu_454_p2_UNDERFLOW_UNCONNECTED
    );
sum33_reg_707_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => inptr_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum33_reg_707_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mask_q1(7),
      B(16) => mask_q1(7),
      B(15) => mask_q1(7),
      B(14) => mask_q1(7),
      B(13) => mask_q1(7),
      B(12) => mask_q1(7),
      B(11) => mask_q1(7),
      B(10) => mask_q1(7),
      B(9) => mask_q1(7),
      B(8) => mask_q1(7),
      B(7 downto 0) => mask_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum33_reg_707_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum33_reg_707_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum33_reg_707_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state6,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum33_reg_707_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_sum33_reg_707_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_sum33_reg_707_reg_P_UNCONNECTED(47 downto 16),
      P(15) => sum33_reg_707_reg_n_92,
      P(14) => sum33_reg_707_reg_n_93,
      P(13) => sum33_reg_707_reg_n_94,
      P(12) => sum33_reg_707_reg_n_95,
      P(11) => sum33_reg_707_reg_n_96,
      P(10) => sum33_reg_707_reg_n_97,
      P(9) => sum33_reg_707_reg_n_98,
      P(8) => sum33_reg_707_reg_n_99,
      P(7) => sum33_reg_707_reg_n_100,
      P(6) => sum33_reg_707_reg_n_101,
      P(5) => sum33_reg_707_reg_n_102,
      P(4) => sum33_reg_707_reg_n_103,
      P(3) => sum33_reg_707_reg_n_104,
      P(2) => sum33_reg_707_reg_n_105,
      P(1) => sum33_reg_707_reg_n_106,
      P(0) => sum33_reg_707_reg_n_107,
      PATTERNBDETECT => NLW_sum33_reg_707_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum33_reg_707_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum33_reg_707_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_sum33_reg_707_reg_UNDERFLOW_UNCONNECTED
    );
\sum3_reg_616[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => \^outptr_address0\(0),
      O => sum3_fu_306_p2(0)
    );
\sum3_reg_616[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => \^outptr_address0\(0),
      I2 => \^outptr_address0\(1),
      I3 => tmp1_fu_298_p3(1),
      O => sum3_fu_306_p2(1)
    );
\sum3_reg_616[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA80157F157FEA80"
    )
        port map (
      I0 => tmp1_fu_298_p3(1),
      I1 => tmp1_fu_298_p3(0),
      I2 => \^outptr_address0\(0),
      I3 => \^outptr_address0\(1),
      I4 => \^outptr_address0\(2),
      I5 => tmp1_fu_298_p3(2),
      O => sum3_fu_306_p2(2)
    );
\sum3_reg_616[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => tmp1_fu_298_p3(2),
      I1 => \^outptr_address0\(2),
      I2 => \sum3_reg_616[5]_i_3_n_2\,
      I3 => \^outptr_address0\(3),
      O => sum3_fu_306_p2(3)
    );
\sum3_reg_616[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17FFE800"
    )
        port map (
      I0 => \sum3_reg_616[5]_i_3_n_2\,
      I1 => \^outptr_address0\(2),
      I2 => tmp1_fu_298_p3(2),
      I3 => \^outptr_address0\(3),
      I4 => \^outptr_address0\(4),
      O => sum3_fu_306_p2(4)
    );
\sum3_reg_616[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => tmp1_fu_298_p3(1),
      I2 => tmp1_fu_298_p3(2),
      I3 => ap_CS_fsm_state3,
      O => sum3_reg_6160
    );
\sum3_reg_616[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F7FFF88808000"
    )
        port map (
      I0 => \^outptr_address0\(4),
      I1 => \^outptr_address0\(3),
      I2 => tmp1_fu_298_p3(2),
      I3 => \^outptr_address0\(2),
      I4 => \sum3_reg_616[5]_i_3_n_2\,
      I5 => \^outptr_address0\(5),
      O => sum3_fu_306_p2(5)
    );
\sum3_reg_616[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => \^outptr_address0\(1),
      I1 => \^outptr_address0\(0),
      I2 => tmp1_fu_298_p3(0),
      I3 => tmp1_fu_298_p3(1),
      O => \sum3_reg_616[5]_i_3_n_2\
    );
\sum3_reg_616[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F7FFFFFFFFFFF"
    )
        port map (
      I0 => \^outptr_address0\(4),
      I1 => \^outptr_address0\(3),
      I2 => tmp1_fu_298_p3(2),
      I3 => \^outptr_address0\(2),
      I4 => \sum3_reg_616[5]_i_3_n_2\,
      I5 => \^outptr_address0\(5),
      O => sum3_fu_306_p2(6)
    );
\sum3_reg_616_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(0),
      Q => \^inptr_address1\(0),
      R => '0'
    );
\sum3_reg_616_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(1),
      Q => \^inptr_address1\(1),
      R => '0'
    );
\sum3_reg_616_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(2),
      Q => \^inptr_address1\(2),
      R => '0'
    );
\sum3_reg_616_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(3),
      Q => \^inptr_address1\(3),
      R => '0'
    );
\sum3_reg_616_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(4),
      Q => \^inptr_address1\(4),
      R => '0'
    );
\sum3_reg_616_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(5),
      Q => \^inptr_address1\(5),
      R => '0'
    );
\sum3_reg_616_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum3_fu_306_p2(6),
      Q => sum3_reg_616(6),
      R => '0'
    );
\sum5_reg_622[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A880000000000000"
    )
        port map (
      I0 => \^outptr_address0\(5),
      I1 => \sum3_reg_616[5]_i_3_n_2\,
      I2 => \^outptr_address0\(2),
      I3 => tmp1_fu_298_p3(2),
      I4 => \^outptr_address0\(3),
      I5 => \^outptr_address0\(4),
      O => sum5_fu_319_p2(6)
    );
\sum5_reg_622_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum5_fu_319_p2(6),
      Q => sum5_reg_622(6),
      R => '0'
    );
\sum9_reg_627[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_fu_298_p3(2),
      I1 => \^outptr_address0\(2),
      O => \sum9_reg_627[3]_i_2_n_2\
    );
\sum9_reg_627[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_fu_298_p3(1),
      I1 => \^outptr_address0\(1),
      O => \sum9_reg_627[3]_i_3_n_2\
    );
\sum9_reg_627[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp1_fu_298_p3(0),
      I1 => \^outptr_address0\(0),
      O => \sum9_reg_627[3]_i_4_n_2\
    );
\sum9_reg_627_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(0),
      Q => sum9_reg_627(0),
      R => '0'
    );
\sum9_reg_627_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(1),
      Q => sum9_reg_627(1),
      R => '0'
    );
\sum9_reg_627_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(2),
      Q => sum9_reg_627(2),
      R => '0'
    );
\sum9_reg_627_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(3),
      Q => sum9_reg_627(3),
      R => '0'
    );
\sum9_reg_627_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum9_reg_627_reg[3]_i_1_n_2\,
      CO(2) => \sum9_reg_627_reg[3]_i_1_n_3\,
      CO(1) => \sum9_reg_627_reg[3]_i_1_n_4\,
      CO(0) => \sum9_reg_627_reg[3]_i_1_n_5\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp1_fu_298_p3(2 downto 0),
      O(3 downto 0) => sum9_fu_332_p2(3 downto 0),
      S(3) => \^outptr_address0\(3),
      S(2) => \sum9_reg_627[3]_i_2_n_2\,
      S(1) => \sum9_reg_627[3]_i_3_n_2\,
      S(0) => \sum9_reg_627[3]_i_4_n_2\
    );
\sum9_reg_627_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(4),
      Q => sum9_reg_627(4),
      R => '0'
    );
\sum9_reg_627_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(5),
      Q => sum9_reg_627(5),
      R => '0'
    );
\sum9_reg_627_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sum3_reg_6160,
      D => sum9_fu_332_p2(6),
      Q => sum9_reg_627(6),
      R => '0'
    );
\sum9_reg_627_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum9_reg_627_reg[3]_i_1_n_2\,
      CO(3) => \NLW_sum9_reg_627_reg[6]_i_1_CO_UNCONNECTED\(3),
      CO(2) => sum9_fu_332_p2(6),
      CO(1) => \NLW_sum9_reg_627_reg[6]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \sum9_reg_627_reg[6]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sum9_reg_627_reg[6]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => sum9_fu_332_p2(5 downto 4),
      S(3 downto 2) => B"01",
      S(1 downto 0) => \^outptr_address0\(5 downto 4)
    );
\sum_reg_198[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_99,
      I1 => tmp7_reg_712_reg_n_99,
      O => \sum_reg_198[11]_i_10_n_2\
    );
\sum_reg_198[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(11),
      I1 => p_cast_fu_516_p1(11),
      O => \sum_reg_198[11]_i_2_n_2\
    );
\sum_reg_198[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(10),
      I1 => p_cast_fu_516_p1(10),
      O => \sum_reg_198[11]_i_3_n_2\
    );
\sum_reg_198[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(9),
      I1 => p_cast_fu_516_p1(9),
      O => \sum_reg_198[11]_i_4_n_2\
    );
\sum_reg_198[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(8),
      I1 => p_cast_fu_516_p1(8),
      O => \sum_reg_198[11]_i_5_n_2\
    );
\sum_reg_198[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_96,
      I1 => tmp7_reg_712_reg_n_96,
      O => \sum_reg_198[11]_i_7_n_2\
    );
\sum_reg_198[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_97,
      I1 => tmp7_reg_712_reg_n_97,
      O => \sum_reg_198[11]_i_8_n_2\
    );
\sum_reg_198[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_98,
      I1 => tmp7_reg_712_reg_n_98,
      O => \sum_reg_198[11]_i_9_n_2\
    );
\sum_reg_198[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(15),
      I1 => p_cast_fu_516_p1(15),
      O => \sum_reg_198[15]_i_2_n_2\
    );
\sum_reg_198[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(14),
      I1 => p_cast_fu_516_p1(14),
      O => \sum_reg_198[15]_i_3_n_2\
    );
\sum_reg_198[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(13),
      I1 => p_cast_fu_516_p1(13),
      O => \sum_reg_198[15]_i_4_n_2\
    );
\sum_reg_198[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(12),
      I1 => p_cast_fu_516_p1(12),
      O => \sum_reg_198[15]_i_5_n_2\
    );
\sum_reg_198[19]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp7_reg_712_reg_n_91,
      I1 => tmp8_reg_717_reg_n_91,
      O => \sum_reg_198[19]_i_10_n_2\
    );
\sum_reg_198[19]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_92,
      I1 => tmp7_reg_712_reg_n_92,
      O => \sum_reg_198[19]_i_11_n_2\
    );
\sum_reg_198[19]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_93,
      I1 => tmp7_reg_712_reg_n_93,
      O => \sum_reg_198[19]_i_12_n_2\
    );
\sum_reg_198[19]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_94,
      I1 => tmp7_reg_712_reg_n_94,
      O => \sum_reg_198[19]_i_13_n_2\
    );
\sum_reg_198[19]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_95,
      I1 => tmp7_reg_712_reg_n_95,
      O => \sum_reg_198[19]_i_14_n_2\
    );
\sum_reg_198[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_198_reg[19]_i_2_n_3\,
      I1 => sum_reg_198(19),
      O => \sum_reg_198[19]_i_3_n_2\
    );
\sum_reg_198[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sum_reg_198_reg[19]_i_2_n_3\,
      I1 => sum_reg_198(18),
      O => \sum_reg_198[19]_i_4_n_2\
    );
\sum_reg_198[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(17),
      I1 => p_cast_fu_516_p1(17),
      O => \sum_reg_198[19]_i_5_n_2\
    );
\sum_reg_198[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(16),
      I1 => p_cast_fu_516_p1(16),
      O => \sum_reg_198[19]_i_6_n_2\
    );
\sum_reg_198[19]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp7_reg_712_reg_n_91,
      O => \sum_reg_198[19]_i_8_n_2\
    );
\sum_reg_198[19]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp7_reg_712_reg_n_91,
      I1 => tmp8_reg_717_reg_n_90,
      O => \sum_reg_198[19]_i_9_n_2\
    );
\sum_reg_198[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_reg_198(19),
      I1 => sum_reg_198(20),
      O => \sum_reg_198[20]_i_2_n_2\
    );
\sum_reg_198[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_107,
      I1 => tmp7_reg_712_reg_n_107,
      O => \sum_reg_198[3]_i_10_n_2\
    );
\sum_reg_198[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(3),
      I1 => p_cast_fu_516_p1(3),
      O => \sum_reg_198[3]_i_2_n_2\
    );
\sum_reg_198[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(2),
      I1 => p_cast_fu_516_p1(2),
      O => \sum_reg_198[3]_i_3_n_2\
    );
\sum_reg_198[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(1),
      I1 => p_cast_fu_516_p1(1),
      O => \sum_reg_198[3]_i_4_n_2\
    );
\sum_reg_198[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(0),
      I1 => p_cast_fu_516_p1(0),
      O => \sum_reg_198[3]_i_5_n_2\
    );
\sum_reg_198[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_104,
      I1 => tmp7_reg_712_reg_n_104,
      O => \sum_reg_198[3]_i_7_n_2\
    );
\sum_reg_198[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_105,
      I1 => tmp7_reg_712_reg_n_105,
      O => \sum_reg_198[3]_i_8_n_2\
    );
\sum_reg_198[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_106,
      I1 => tmp7_reg_712_reg_n_106,
      O => \sum_reg_198[3]_i_9_n_2\
    );
\sum_reg_198[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_103,
      I1 => tmp7_reg_712_reg_n_103,
      O => \sum_reg_198[7]_i_10_n_2\
    );
\sum_reg_198[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(7),
      I1 => p_cast_fu_516_p1(7),
      O => \sum_reg_198[7]_i_2_n_2\
    );
\sum_reg_198[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(6),
      I1 => p_cast_fu_516_p1(6),
      O => \sum_reg_198[7]_i_3_n_2\
    );
\sum_reg_198[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(5),
      I1 => p_cast_fu_516_p1(5),
      O => \sum_reg_198[7]_i_4_n_2\
    );
\sum_reg_198[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sum_reg_198(4),
      I1 => p_cast_fu_516_p1(4),
      O => \sum_reg_198[7]_i_5_n_2\
    );
\sum_reg_198[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_100,
      I1 => tmp7_reg_712_reg_n_100,
      O => \sum_reg_198[7]_i_7_n_2\
    );
\sum_reg_198[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_101,
      I1 => tmp7_reg_712_reg_n_101,
      O => \sum_reg_198[7]_i_8_n_2\
    );
\sum_reg_198[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp8_reg_717_reg_n_102,
      I1 => tmp7_reg_712_reg_n_102,
      O => \sum_reg_198[7]_i_9_n_2\
    );
\sum_reg_198_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(0),
      Q => sum_reg_198(0),
      R => i_reg_2100
    );
\sum_reg_198_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(10),
      Q => sum_reg_198(10),
      R => i_reg_2100
    );
\sum_reg_198_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(11),
      Q => sum_reg_198(11),
      R => i_reg_2100
    );
\sum_reg_198_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[7]_i_1_n_2\,
      CO(3) => \sum_reg_198_reg[11]_i_1_n_2\,
      CO(2) => \sum_reg_198_reg[11]_i_1_n_3\,
      CO(1) => \sum_reg_198_reg[11]_i_1_n_4\,
      CO(0) => \sum_reg_198_reg[11]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => sum_reg_198(11 downto 8),
      O(3 downto 0) => sum_2_fu_520_p2(11 downto 8),
      S(3) => \sum_reg_198[11]_i_2_n_2\,
      S(2) => \sum_reg_198[11]_i_3_n_2\,
      S(1) => \sum_reg_198[11]_i_4_n_2\,
      S(0) => \sum_reg_198[11]_i_5_n_2\
    );
\sum_reg_198_reg[11]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[7]_i_6_n_2\,
      CO(3) => \sum_reg_198_reg[11]_i_6_n_2\,
      CO(2) => \sum_reg_198_reg[11]_i_6_n_3\,
      CO(1) => \sum_reg_198_reg[11]_i_6_n_4\,
      CO(0) => \sum_reg_198_reg[11]_i_6_n_5\,
      CYINIT => '0',
      DI(3) => tmp8_reg_717_reg_n_96,
      DI(2) => tmp8_reg_717_reg_n_97,
      DI(1) => tmp8_reg_717_reg_n_98,
      DI(0) => tmp8_reg_717_reg_n_99,
      O(3 downto 0) => p_cast_fu_516_p1(11 downto 8),
      S(3) => \sum_reg_198[11]_i_7_n_2\,
      S(2) => \sum_reg_198[11]_i_8_n_2\,
      S(1) => \sum_reg_198[11]_i_9_n_2\,
      S(0) => \sum_reg_198[11]_i_10_n_2\
    );
\sum_reg_198_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(12),
      Q => sum_reg_198(12),
      R => i_reg_2100
    );
\sum_reg_198_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(13),
      Q => sum_reg_198(13),
      R => i_reg_2100
    );
\sum_reg_198_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(14),
      Q => sum_reg_198(14),
      R => i_reg_2100
    );
\sum_reg_198_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(15),
      Q => sum_reg_198(15),
      R => i_reg_2100
    );
\sum_reg_198_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[11]_i_1_n_2\,
      CO(3) => \sum_reg_198_reg[15]_i_1_n_2\,
      CO(2) => \sum_reg_198_reg[15]_i_1_n_3\,
      CO(1) => \sum_reg_198_reg[15]_i_1_n_4\,
      CO(0) => \sum_reg_198_reg[15]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => sum_reg_198(15 downto 12),
      O(3 downto 0) => sum_2_fu_520_p2(15 downto 12),
      S(3) => \sum_reg_198[15]_i_2_n_2\,
      S(2) => \sum_reg_198[15]_i_3_n_2\,
      S(1) => \sum_reg_198[15]_i_4_n_2\,
      S(0) => \sum_reg_198[15]_i_5_n_2\
    );
\sum_reg_198_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(16),
      Q => sum_reg_198(16),
      R => i_reg_2100
    );
\sum_reg_198_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(17),
      Q => sum_reg_198(17),
      R => i_reg_2100
    );
\sum_reg_198_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(18),
      Q => sum_reg_198(18),
      R => i_reg_2100
    );
\sum_reg_198_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(19),
      Q => sum_reg_198(19),
      R => i_reg_2100
    );
\sum_reg_198_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[15]_i_1_n_2\,
      CO(3) => \sum_reg_198_reg[19]_i_1_n_2\,
      CO(2) => \sum_reg_198_reg[19]_i_1_n_3\,
      CO(1) => \sum_reg_198_reg[19]_i_1_n_4\,
      CO(0) => \sum_reg_198_reg[19]_i_1_n_5\,
      CYINIT => '0',
      DI(3) => \sum_reg_198_reg[19]_i_2_n_3\,
      DI(2 downto 0) => sum_reg_198(18 downto 16),
      O(3 downto 0) => sum_2_fu_520_p2(19 downto 16),
      S(3) => \sum_reg_198[19]_i_3_n_2\,
      S(2) => \sum_reg_198[19]_i_4_n_2\,
      S(1) => \sum_reg_198[19]_i_5_n_2\,
      S(0) => \sum_reg_198[19]_i_6_n_2\
    );
\sum_reg_198_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[19]_i_7_n_2\,
      CO(3) => \NLW_sum_reg_198_reg[19]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \sum_reg_198_reg[19]_i_2_n_3\,
      CO(1) => \NLW_sum_reg_198_reg[19]_i_2_CO_UNCONNECTED\(1),
      CO(0) => \sum_reg_198_reg[19]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sum_reg_198[19]_i_8_n_2\,
      DI(0) => tmp7_reg_712_reg_n_91,
      O(3 downto 2) => \NLW_sum_reg_198_reg[19]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_cast_fu_516_p1(17 downto 16),
      S(3 downto 2) => B"01",
      S(1) => \sum_reg_198[19]_i_9_n_2\,
      S(0) => \sum_reg_198[19]_i_10_n_2\
    );
\sum_reg_198_reg[19]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[11]_i_6_n_2\,
      CO(3) => \sum_reg_198_reg[19]_i_7_n_2\,
      CO(2) => \sum_reg_198_reg[19]_i_7_n_3\,
      CO(1) => \sum_reg_198_reg[19]_i_7_n_4\,
      CO(0) => \sum_reg_198_reg[19]_i_7_n_5\,
      CYINIT => '0',
      DI(3) => tmp8_reg_717_reg_n_92,
      DI(2) => tmp8_reg_717_reg_n_93,
      DI(1) => tmp8_reg_717_reg_n_94,
      DI(0) => tmp8_reg_717_reg_n_95,
      O(3 downto 0) => p_cast_fu_516_p1(15 downto 12),
      S(3) => \sum_reg_198[19]_i_11_n_2\,
      S(2) => \sum_reg_198[19]_i_12_n_2\,
      S(1) => \sum_reg_198[19]_i_13_n_2\,
      S(0) => \sum_reg_198[19]_i_14_n_2\
    );
\sum_reg_198_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(1),
      Q => sum_reg_198(1),
      R => i_reg_2100
    );
\sum_reg_198_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(20),
      Q => sum_reg_198(20),
      R => i_reg_2100
    );
\sum_reg_198_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[19]_i_1_n_2\,
      CO(3 downto 0) => \NLW_sum_reg_198_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sum_reg_198_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => sum_2_fu_520_p2(20),
      S(3 downto 1) => B"000",
      S(0) => \sum_reg_198[20]_i_2_n_2\
    );
\sum_reg_198_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(2),
      Q => sum_reg_198(2),
      R => i_reg_2100
    );
\sum_reg_198_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(3),
      Q => sum_reg_198(3),
      R => i_reg_2100
    );
\sum_reg_198_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg_198_reg[3]_i_1_n_2\,
      CO(2) => \sum_reg_198_reg[3]_i_1_n_3\,
      CO(1) => \sum_reg_198_reg[3]_i_1_n_4\,
      CO(0) => \sum_reg_198_reg[3]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => sum_reg_198(3 downto 0),
      O(3 downto 0) => sum_2_fu_520_p2(3 downto 0),
      S(3) => \sum_reg_198[3]_i_2_n_2\,
      S(2) => \sum_reg_198[3]_i_3_n_2\,
      S(1) => \sum_reg_198[3]_i_4_n_2\,
      S(0) => \sum_reg_198[3]_i_5_n_2\
    );
\sum_reg_198_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg_198_reg[3]_i_6_n_2\,
      CO(2) => \sum_reg_198_reg[3]_i_6_n_3\,
      CO(1) => \sum_reg_198_reg[3]_i_6_n_4\,
      CO(0) => \sum_reg_198_reg[3]_i_6_n_5\,
      CYINIT => '0',
      DI(3) => tmp8_reg_717_reg_n_104,
      DI(2) => tmp8_reg_717_reg_n_105,
      DI(1) => tmp8_reg_717_reg_n_106,
      DI(0) => tmp8_reg_717_reg_n_107,
      O(3 downto 0) => p_cast_fu_516_p1(3 downto 0),
      S(3) => \sum_reg_198[3]_i_7_n_2\,
      S(2) => \sum_reg_198[3]_i_8_n_2\,
      S(1) => \sum_reg_198[3]_i_9_n_2\,
      S(0) => \sum_reg_198[3]_i_10_n_2\
    );
\sum_reg_198_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(4),
      Q => sum_reg_198(4),
      R => i_reg_2100
    );
\sum_reg_198_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(5),
      Q => sum_reg_198(5),
      R => i_reg_2100
    );
\sum_reg_198_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(6),
      Q => sum_reg_198(6),
      R => i_reg_2100
    );
\sum_reg_198_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(7),
      Q => sum_reg_198(7),
      R => i_reg_2100
    );
\sum_reg_198_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[3]_i_1_n_2\,
      CO(3) => \sum_reg_198_reg[7]_i_1_n_2\,
      CO(2) => \sum_reg_198_reg[7]_i_1_n_3\,
      CO(1) => \sum_reg_198_reg[7]_i_1_n_4\,
      CO(0) => \sum_reg_198_reg[7]_i_1_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => sum_reg_198(7 downto 4),
      O(3 downto 0) => sum_2_fu_520_p2(7 downto 4),
      S(3) => \sum_reg_198[7]_i_2_n_2\,
      S(2) => \sum_reg_198[7]_i_3_n_2\,
      S(1) => \sum_reg_198[7]_i_4_n_2\,
      S(0) => \sum_reg_198[7]_i_5_n_2\
    );
\sum_reg_198_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg_198_reg[3]_i_6_n_2\,
      CO(3) => \sum_reg_198_reg[7]_i_6_n_2\,
      CO(2) => \sum_reg_198_reg[7]_i_6_n_3\,
      CO(1) => \sum_reg_198_reg[7]_i_6_n_4\,
      CO(0) => \sum_reg_198_reg[7]_i_6_n_5\,
      CYINIT => '0',
      DI(3) => tmp8_reg_717_reg_n_100,
      DI(2) => tmp8_reg_717_reg_n_101,
      DI(1) => tmp8_reg_717_reg_n_102,
      DI(0) => tmp8_reg_717_reg_n_103,
      O(3 downto 0) => p_cast_fu_516_p1(7 downto 4),
      S(3) => \sum_reg_198[7]_i_7_n_2\,
      S(2) => \sum_reg_198[7]_i_8_n_2\,
      S(1) => \sum_reg_198[7]_i_9_n_2\,
      S(0) => \sum_reg_198[7]_i_10_n_2\
    );
\sum_reg_198_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(8),
      Q => sum_reg_198(8),
      R => i_reg_2100
    );
\sum_reg_198_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => sum_2_fu_520_p2(9),
      Q => sum_reg_198(9),
      R => i_reg_2100
    );
tmp7_reg_712_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => inptr_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp7_reg_712_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mask_q0(7),
      B(16) => mask_q0(7),
      B(15) => mask_q0(7),
      B(14) => mask_q0(7),
      B(13) => mask_q0(7),
      B(12) => mask_q0(7),
      B(11) => mask_q0(7),
      B(10) => mask_q0(7),
      B(9) => mask_q0(7),
      B(8) => mask_q0(7),
      B(7 downto 0) => mask_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp7_reg_712_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => sum00_fu_454_p2_n_92,
      C(46) => sum00_fu_454_p2_n_92,
      C(45) => sum00_fu_454_p2_n_92,
      C(44) => sum00_fu_454_p2_n_92,
      C(43) => sum00_fu_454_p2_n_92,
      C(42) => sum00_fu_454_p2_n_92,
      C(41) => sum00_fu_454_p2_n_92,
      C(40) => sum00_fu_454_p2_n_92,
      C(39) => sum00_fu_454_p2_n_92,
      C(38) => sum00_fu_454_p2_n_92,
      C(37) => sum00_fu_454_p2_n_92,
      C(36) => sum00_fu_454_p2_n_92,
      C(35) => sum00_fu_454_p2_n_92,
      C(34) => sum00_fu_454_p2_n_92,
      C(33) => sum00_fu_454_p2_n_92,
      C(32) => sum00_fu_454_p2_n_92,
      C(31) => sum00_fu_454_p2_n_92,
      C(30) => sum00_fu_454_p2_n_92,
      C(29) => sum00_fu_454_p2_n_92,
      C(28) => sum00_fu_454_p2_n_92,
      C(27) => sum00_fu_454_p2_n_92,
      C(26) => sum00_fu_454_p2_n_92,
      C(25) => sum00_fu_454_p2_n_92,
      C(24) => sum00_fu_454_p2_n_92,
      C(23) => sum00_fu_454_p2_n_92,
      C(22) => sum00_fu_454_p2_n_92,
      C(21) => sum00_fu_454_p2_n_92,
      C(20) => sum00_fu_454_p2_n_92,
      C(19) => sum00_fu_454_p2_n_92,
      C(18) => sum00_fu_454_p2_n_92,
      C(17) => sum00_fu_454_p2_n_92,
      C(16) => sum00_fu_454_p2_n_92,
      C(15) => sum00_fu_454_p2_n_92,
      C(14) => sum00_fu_454_p2_n_93,
      C(13) => sum00_fu_454_p2_n_94,
      C(12) => sum00_fu_454_p2_n_95,
      C(11) => sum00_fu_454_p2_n_96,
      C(10) => sum00_fu_454_p2_n_97,
      C(9) => sum00_fu_454_p2_n_98,
      C(8) => sum00_fu_454_p2_n_99,
      C(7) => sum00_fu_454_p2_n_100,
      C(6) => sum00_fu_454_p2_n_101,
      C(5) => sum00_fu_454_p2_n_102,
      C(4) => sum00_fu_454_p2_n_103,
      C(3) => sum00_fu_454_p2_n_104,
      C(2) => sum00_fu_454_p2_n_105,
      C(1) => sum00_fu_454_p2_n_106,
      C(0) => sum00_fu_454_p2_n_107,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp7_reg_712_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp7_reg_712_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^mask_address0\(4),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^mask_address0\(4),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state6,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp7_reg_712_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_tmp7_reg_712_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_tmp7_reg_712_reg_P_UNCONNECTED(47 downto 17),
      P(16) => tmp7_reg_712_reg_n_91,
      P(15) => tmp7_reg_712_reg_n_92,
      P(14) => tmp7_reg_712_reg_n_93,
      P(13) => tmp7_reg_712_reg_n_94,
      P(12) => tmp7_reg_712_reg_n_95,
      P(11) => tmp7_reg_712_reg_n_96,
      P(10) => tmp7_reg_712_reg_n_97,
      P(9) => tmp7_reg_712_reg_n_98,
      P(8) => tmp7_reg_712_reg_n_99,
      P(7) => tmp7_reg_712_reg_n_100,
      P(6) => tmp7_reg_712_reg_n_101,
      P(5) => tmp7_reg_712_reg_n_102,
      P(4) => tmp7_reg_712_reg_n_103,
      P(3) => tmp7_reg_712_reg_n_104,
      P(2) => tmp7_reg_712_reg_n_105,
      P(1) => tmp7_reg_712_reg_n_106,
      P(0) => tmp7_reg_712_reg_n_107,
      PATTERNBDETECT => NLW_tmp7_reg_712_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp7_reg_712_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp7_reg_712_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp7_reg_712_reg_UNDERFLOW_UNCONNECTED
    );
tmp8_reg_717_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => inptr_q1(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp8_reg_717_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mask_q1(7),
      B(16) => mask_q1(7),
      B(15) => mask_q1(7),
      B(14) => mask_q1(7),
      B(13) => mask_q1(7),
      B(12) => mask_q1(7),
      B(11) => mask_q1(7),
      B(10) => mask_q1(7),
      B(9) => mask_q1(7),
      B(8) => mask_q1(7),
      B(7 downto 0) => mask_q1(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp8_reg_717_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => img_conv_5x5_mac_bkb_U3_n_2,
      C(46) => img_conv_5x5_mac_bkb_U3_n_2,
      C(45) => img_conv_5x5_mac_bkb_U3_n_2,
      C(44) => img_conv_5x5_mac_bkb_U3_n_2,
      C(43) => img_conv_5x5_mac_bkb_U3_n_2,
      C(42) => img_conv_5x5_mac_bkb_U3_n_2,
      C(41) => img_conv_5x5_mac_bkb_U3_n_2,
      C(40) => img_conv_5x5_mac_bkb_U3_n_2,
      C(39) => img_conv_5x5_mac_bkb_U3_n_2,
      C(38) => img_conv_5x5_mac_bkb_U3_n_2,
      C(37) => img_conv_5x5_mac_bkb_U3_n_2,
      C(36) => img_conv_5x5_mac_bkb_U3_n_2,
      C(35) => img_conv_5x5_mac_bkb_U3_n_2,
      C(34) => img_conv_5x5_mac_bkb_U3_n_2,
      C(33) => img_conv_5x5_mac_bkb_U3_n_2,
      C(32) => img_conv_5x5_mac_bkb_U3_n_2,
      C(31) => img_conv_5x5_mac_bkb_U3_n_2,
      C(30) => img_conv_5x5_mac_bkb_U3_n_2,
      C(29) => img_conv_5x5_mac_bkb_U3_n_2,
      C(28) => img_conv_5x5_mac_bkb_U3_n_2,
      C(27) => img_conv_5x5_mac_bkb_U3_n_2,
      C(26) => img_conv_5x5_mac_bkb_U3_n_2,
      C(25) => img_conv_5x5_mac_bkb_U3_n_2,
      C(24) => img_conv_5x5_mac_bkb_U3_n_2,
      C(23) => img_conv_5x5_mac_bkb_U3_n_2,
      C(22) => img_conv_5x5_mac_bkb_U3_n_2,
      C(21) => img_conv_5x5_mac_bkb_U3_n_2,
      C(20) => img_conv_5x5_mac_bkb_U3_n_2,
      C(19) => img_conv_5x5_mac_bkb_U3_n_2,
      C(18) => img_conv_5x5_mac_bkb_U3_n_2,
      C(17) => img_conv_5x5_mac_bkb_U3_n_2,
      C(16) => img_conv_5x5_mac_bkb_U3_n_2,
      C(15) => img_conv_5x5_mac_bkb_U3_n_3,
      C(14) => img_conv_5x5_mac_bkb_U3_n_4,
      C(13) => img_conv_5x5_mac_bkb_U3_n_5,
      C(12) => img_conv_5x5_mac_bkb_U3_n_6,
      C(11) => img_conv_5x5_mac_bkb_U3_n_7,
      C(10) => img_conv_5x5_mac_bkb_U3_n_8,
      C(9) => img_conv_5x5_mac_bkb_U3_n_9,
      C(8) => img_conv_5x5_mac_bkb_U3_n_10,
      C(7) => img_conv_5x5_mac_bkb_U3_n_11,
      C(6) => img_conv_5x5_mac_bkb_U3_n_12,
      C(5) => img_conv_5x5_mac_bkb_U3_n_13,
      C(4) => img_conv_5x5_mac_bkb_U3_n_14,
      C(3) => img_conv_5x5_mac_bkb_U3_n_15,
      C(2) => img_conv_5x5_mac_bkb_U3_n_16,
      C(1) => img_conv_5x5_mac_bkb_U3_n_17,
      C(0) => img_conv_5x5_mac_bkb_U3_n_18,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp8_reg_717_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp8_reg_717_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^mask_address0\(4),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^mask_address0\(4),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state7,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp8_reg_717_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_tmp8_reg_717_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp8_reg_717_reg_P_UNCONNECTED(47 downto 18),
      P(17) => tmp8_reg_717_reg_n_90,
      P(16) => tmp8_reg_717_reg_n_91,
      P(15) => tmp8_reg_717_reg_n_92,
      P(14) => tmp8_reg_717_reg_n_93,
      P(13) => tmp8_reg_717_reg_n_94,
      P(12) => tmp8_reg_717_reg_n_95,
      P(11) => tmp8_reg_717_reg_n_96,
      P(10) => tmp8_reg_717_reg_n_97,
      P(9) => tmp8_reg_717_reg_n_98,
      P(8) => tmp8_reg_717_reg_n_99,
      P(7) => tmp8_reg_717_reg_n_100,
      P(6) => tmp8_reg_717_reg_n_101,
      P(5) => tmp8_reg_717_reg_n_102,
      P(4) => tmp8_reg_717_reg_n_103,
      P(3) => tmp8_reg_717_reg_n_104,
      P(2) => tmp8_reg_717_reg_n_105,
      P(1) => tmp8_reg_717_reg_n_106,
      P(0) => tmp8_reg_717_reg_n_107,
      PATTERNBDETECT => NLW_tmp8_reg_717_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp8_reg_717_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp8_reg_717_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp8_reg_717_reg_UNDERFLOW_UNCONNECTED
    );
\tmp_13_reg_642[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => shift(0),
      I1 => \tmp_13_reg_642[1]_i_2_n_2\,
      I2 => \tmp_13_reg_642[0]_i_2_n_2\,
      I3 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[0]_i_1_n_2\
    );
\tmp_13_reg_642[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => shift(0),
      I1 => \tmp_13_reg_642[0]_i_3_n_2\,
      I2 => shift(2),
      I3 => \tmp_13_reg_642[4]_i_4_n_2\,
      I4 => shift(1),
      I5 => \tmp_13_reg_642[2]_i_3_n_2\,
      O => \tmp_13_reg_642[0]_i_2_n_2\
    );
\tmp_13_reg_642[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => sum_reg_198(8),
      I2 => shift(3),
      I3 => sum_reg_198(16),
      I4 => shift(4),
      I5 => sum_reg_198(0),
      O => \tmp_13_reg_642[0]_i_3_n_2\
    );
\tmp_13_reg_642[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \tmp_13_reg_642[1]_i_2_n_2\,
      I1 => shift(0),
      I2 => \tmp_13_reg_642[2]_i_2_n_2\,
      I3 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[1]_i_1_n_2\
    );
\tmp_13_reg_642[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_13_reg_642[3]_i_3_n_2\,
      I1 => shift(1),
      I2 => \tmp_13_reg_642[5]_i_3_n_2\,
      I3 => shift(2),
      I4 => \tmp_13_reg_642[1]_i_3_n_2\,
      O => \tmp_13_reg_642[1]_i_2_n_2\
    );
\tmp_13_reg_642[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => sum_reg_198(9),
      I2 => shift(3),
      I3 => sum_reg_198(17),
      I4 => shift(4),
      I5 => sum_reg_198(1),
      O => \tmp_13_reg_642[1]_i_3_n_2\
    );
\tmp_13_reg_642[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8FF00"
    )
        port map (
      I0 => \tmp_13_reg_642[3]_i_2_n_2\,
      I1 => shift(1),
      I2 => \tmp_13_reg_642[3]_i_3_n_2\,
      I3 => \tmp_13_reg_642[2]_i_2_n_2\,
      I4 => shift(0),
      I5 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[2]_i_1_n_2\
    );
\tmp_13_reg_642[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tmp_13_reg_642[4]_i_3_n_2\,
      I1 => shift(2),
      I2 => \tmp_13_reg_642[4]_i_4_n_2\,
      I3 => shift(1),
      I4 => \tmp_13_reg_642[2]_i_3_n_2\,
      O => \tmp_13_reg_642[2]_i_2_n_2\
    );
\tmp_13_reg_642[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_13_reg_642[6]_i_4_n_2\,
      I1 => shift(2),
      I2 => \tmp_13_reg_642[2]_i_4_n_2\,
      O => \tmp_13_reg_642[2]_i_3_n_2\
    );
\tmp_13_reg_642[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => sum_reg_198(10),
      I1 => sum_reg_198(20),
      I2 => shift(3),
      I3 => sum_reg_198(18),
      I4 => shift(4),
      I5 => sum_reg_198(2),
      O => \tmp_13_reg_642[2]_i_4_n_2\
    );
\tmp_13_reg_642[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \tmp_13_reg_642[3]_i_2_n_2\,
      I1 => shift(1),
      I2 => \tmp_13_reg_642[3]_i_3_n_2\,
      I3 => shift(0),
      I4 => \tmp_13_reg_642[4]_i_2_n_2\,
      I5 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[3]_i_1_n_2\
    );
\tmp_13_reg_642[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_13_reg_642[7]_i_4_n_2\,
      I1 => shift(2),
      I2 => \tmp_13_reg_642[5]_i_3_n_2\,
      O => \tmp_13_reg_642[3]_i_2_n_2\
    );
\tmp_13_reg_642[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_13_reg_642[7]_i_6_n_2\,
      I1 => shift(2),
      I2 => \tmp_13_reg_642[3]_i_4_n_2\,
      O => \tmp_13_reg_642[3]_i_3_n_2\
    );
\tmp_13_reg_642[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => sum_reg_198(11),
      I1 => sum_reg_198(20),
      I2 => shift(3),
      I3 => sum_reg_198(19),
      I4 => shift(4),
      I5 => sum_reg_198(3),
      O => \tmp_13_reg_642[3]_i_4_n_2\
    );
\tmp_13_reg_642[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \tmp_13_reg_642[4]_i_2_n_2\,
      I1 => shift(0),
      I2 => \tmp_13_reg_642[5]_i_2_n_2\,
      I3 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[4]_i_1_n_2\
    );
\tmp_13_reg_642[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tmp_13_reg_642[6]_i_3_n_2\,
      I1 => \tmp_13_reg_642[6]_i_4_n_2\,
      I2 => shift(1),
      I3 => \tmp_13_reg_642[4]_i_3_n_2\,
      I4 => shift(2),
      I5 => \tmp_13_reg_642[4]_i_4_n_2\,
      O => \tmp_13_reg_642[4]_i_2_n_2\
    );
\tmp_13_reg_642[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => sum_reg_198(16),
      I1 => shift(3),
      I2 => sum_reg_198(20),
      I3 => shift(4),
      I4 => sum_reg_198(8),
      O => \tmp_13_reg_642[4]_i_3_n_2\
    );
\tmp_13_reg_642[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => sum_reg_198(4),
      I1 => shift(3),
      I2 => sum_reg_198(12),
      I3 => shift(4),
      I4 => sum_reg_198(20),
      O => \tmp_13_reg_642[4]_i_4_n_2\
    );
\tmp_13_reg_642[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \tmp_13_reg_642[5]_i_2_n_2\,
      I1 => shift(0),
      I2 => \tmp_13_reg_642[6]_i_2_n_2\,
      I3 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[5]_i_1_n_2\
    );
\tmp_13_reg_642[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tmp_13_reg_642[7]_i_5_n_2\,
      I1 => \tmp_13_reg_642[7]_i_6_n_2\,
      I2 => shift(1),
      I3 => \tmp_13_reg_642[7]_i_4_n_2\,
      I4 => shift(2),
      I5 => \tmp_13_reg_642[5]_i_3_n_2\,
      O => \tmp_13_reg_642[5]_i_2_n_2\
    );
\tmp_13_reg_642[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => sum_reg_198(5),
      I1 => shift(3),
      I2 => sum_reg_198(13),
      I3 => shift(4),
      I4 => sum_reg_198(20),
      O => \tmp_13_reg_642[5]_i_3_n_2\
    );
\tmp_13_reg_642[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8FF00"
    )
        port map (
      I0 => \tmp_13_reg_642[7]_i_2_n_2\,
      I1 => shift(1),
      I2 => \tmp_13_reg_642[7]_i_3_n_2\,
      I3 => \tmp_13_reg_642[6]_i_2_n_2\,
      I4 => shift(0),
      I5 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[6]_i_1_n_2\
    );
\tmp_13_reg_642[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \tmp_13_reg_642[6]_i_3_n_2\,
      I1 => shift(2),
      I2 => \tmp_13_reg_642[6]_i_4_n_2\,
      I3 => \icmp_reg_637[0]_i_10_n_2\,
      I4 => shift(1),
      O => \tmp_13_reg_642[6]_i_2_n_2\
    );
\tmp_13_reg_642[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => sum_reg_198(10),
      I1 => shift(3),
      I2 => sum_reg_198(18),
      I3 => shift(4),
      I4 => sum_reg_198(20),
      O => \tmp_13_reg_642[6]_i_3_n_2\
    );
\tmp_13_reg_642[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => sum_reg_198(6),
      I1 => shift(3),
      I2 => sum_reg_198(14),
      I3 => shift(4),
      I4 => sum_reg_198(20),
      O => \tmp_13_reg_642[6]_i_4_n_2\
    );
\tmp_13_reg_642[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00B8B8"
    )
        port map (
      I0 => \tmp_13_reg_642[7]_i_2_n_2\,
      I1 => shift(1),
      I2 => \tmp_13_reg_642[7]_i_3_n_2\,
      I3 => \icmp_reg_637[0]_i_3_n_2\,
      I4 => shift(0),
      I5 => \icmp_reg_637[0]_i_2_n_2\,
      O => \tmp_13_reg_642[7]_i_1_n_2\
    );
\tmp_13_reg_642[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8FFFFABA80000"
    )
        port map (
      I0 => sum_reg_198(20),
      I1 => shift(4),
      I2 => shift(3),
      I3 => sum_reg_198(13),
      I4 => shift(2),
      I5 => \tmp_13_reg_642[7]_i_4_n_2\,
      O => \tmp_13_reg_642[7]_i_2_n_2\
    );
\tmp_13_reg_642[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmp_13_reg_642[7]_i_5_n_2\,
      I1 => shift(2),
      I2 => \tmp_13_reg_642[7]_i_6_n_2\,
      O => \tmp_13_reg_642[7]_i_3_n_2\
    );
\tmp_13_reg_642[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => sum_reg_198(17),
      I1 => shift(3),
      I2 => sum_reg_198(20),
      I3 => shift(4),
      I4 => sum_reg_198(9),
      O => \tmp_13_reg_642[7]_i_4_n_2\
    );
\tmp_13_reg_642[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => sum_reg_198(11),
      I1 => shift(3),
      I2 => sum_reg_198(19),
      I3 => shift(4),
      I4 => sum_reg_198(20),
      O => \tmp_13_reg_642[7]_i_5_n_2\
    );
\tmp_13_reg_642[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => sum_reg_198(7),
      I1 => shift(3),
      I2 => sum_reg_198(15),
      I3 => shift(4),
      I4 => sum_reg_198(20),
      O => \tmp_13_reg_642[7]_i_6_n_2\
    );
\tmp_13_reg_642_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[0]_i_1_n_2\,
      Q => tmp_13_reg_642(0),
      R => '0'
    );
\tmp_13_reg_642_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[1]_i_1_n_2\,
      Q => tmp_13_reg_642(1),
      R => '0'
    );
\tmp_13_reg_642_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[2]_i_1_n_2\,
      Q => tmp_13_reg_642(2),
      R => '0'
    );
\tmp_13_reg_642_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[3]_i_1_n_2\,
      Q => tmp_13_reg_642(3),
      R => '0'
    );
\tmp_13_reg_642_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[4]_i_1_n_2\,
      Q => tmp_13_reg_642(4),
      R => '0'
    );
\tmp_13_reg_642_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[5]_i_1_n_2\,
      Q => tmp_13_reg_642(5),
      R => '0'
    );
\tmp_13_reg_642_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[6]_i_1_n_2\,
      Q => tmp_13_reg_642(6),
      R => '0'
    );
\tmp_13_reg_642_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(8),
      D => \tmp_13_reg_642[7]_i_1_n_2\,
      Q => tmp_13_reg_642(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    inptr_ce0 : out STD_LOGIC;
    outptr_ce0 : out STD_LOGIC;
    outptr_we0 : out STD_LOGIC;
    mask_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    inptr_address0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    inptr_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inptr_address1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    inptr_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    inptr_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outptr_address0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outptr_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mask_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mask_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mask_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mask_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mask_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    shift : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,img_conv_5x5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "img_conv_5x5,Vivado 2018.3";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "9'b000000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "9'b000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "9'b000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "9'b000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "9'b000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "9'b000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "9'b001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "9'b010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of inst : label is "9'b100000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_PARAMETER of ap_ready : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of inptr_address0 : signal is "xilinx.com:signal:data:1.0 inptr_address0 DATA";
  attribute X_INTERFACE_PARAMETER of inptr_address0 : signal is "XIL_INTERFACENAME inptr_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of inptr_address1 : signal is "xilinx.com:signal:data:1.0 inptr_address1 DATA";
  attribute X_INTERFACE_PARAMETER of inptr_address1 : signal is "XIL_INTERFACENAME inptr_address1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of inptr_ce1 : signal is "xilinx.com:signal:data:1.0 inptr_ce1 DATA";
  attribute X_INTERFACE_PARAMETER of inptr_ce1 : signal is "XIL_INTERFACENAME inptr_ce1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of inptr_q0 : signal is "xilinx.com:signal:data:1.0 inptr_q0 DATA";
  attribute X_INTERFACE_PARAMETER of inptr_q0 : signal is "XIL_INTERFACENAME inptr_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute X_INTERFACE_INFO of inptr_q1 : signal is "xilinx.com:signal:data:1.0 inptr_q1 DATA";
  attribute X_INTERFACE_PARAMETER of inptr_q1 : signal is "XIL_INTERFACENAME inptr_q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of mask_address0 : signal is "xilinx.com:signal:data:1.0 mask_address0 DATA";
  attribute X_INTERFACE_PARAMETER of mask_address0 : signal is "XIL_INTERFACENAME mask_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of mask_address1 : signal is "xilinx.com:signal:data:1.0 mask_address1 DATA";
  attribute X_INTERFACE_PARAMETER of mask_address1 : signal is "XIL_INTERFACENAME mask_address1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of mask_ce1 : signal is "xilinx.com:signal:data:1.0 mask_ce1 DATA";
  attribute X_INTERFACE_PARAMETER of mask_ce1 : signal is "XIL_INTERFACENAME mask_ce1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of mask_q0 : signal is "xilinx.com:signal:data:1.0 mask_q0 DATA";
  attribute X_INTERFACE_PARAMETER of mask_q0 : signal is "XIL_INTERFACENAME mask_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
  attribute X_INTERFACE_INFO of mask_q1 : signal is "xilinx.com:signal:data:1.0 mask_q1 DATA";
  attribute X_INTERFACE_PARAMETER of mask_q1 : signal is "XIL_INTERFACENAME mask_q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of outptr_address0 : signal is "xilinx.com:signal:data:1.0 outptr_address0 DATA";
  attribute X_INTERFACE_PARAMETER of outptr_address0 : signal is "XIL_INTERFACENAME outptr_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of outptr_d0 : signal is "xilinx.com:signal:data:1.0 outptr_d0 DATA";
  attribute X_INTERFACE_PARAMETER of outptr_d0 : signal is "XIL_INTERFACENAME outptr_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute X_INTERFACE_INFO of shift : signal is "xilinx.com:signal:data:1.0 shift DATA";
  attribute X_INTERFACE_PARAMETER of shift : signal is "XIL_INTERFACENAME shift, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_img_conv_5x5
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      inptr_address0(10 downto 0) => inptr_address0(10 downto 0),
      inptr_address1(10 downto 0) => inptr_address1(10 downto 0),
      inptr_ce0 => inptr_ce0,
      inptr_ce1 => inptr_ce1(0),
      inptr_q0(7 downto 0) => inptr_q0(7 downto 0),
      inptr_q1(7 downto 0) => inptr_q1(7 downto 0),
      mask_address0(4 downto 0) => mask_address0(4 downto 0),
      mask_address1(4 downto 0) => mask_address1(4 downto 0),
      mask_ce0 => mask_ce0,
      mask_ce1 => mask_ce1(0),
      mask_q0(7 downto 0) => mask_q0(7 downto 0),
      mask_q1(7 downto 0) => mask_q1(7 downto 0),
      outptr_address0(5 downto 0) => outptr_address0(5 downto 0),
      outptr_ce0 => outptr_ce0,
      outptr_d0(7 downto 0) => outptr_d0(7 downto 0),
      outptr_we0 => outptr_we0,
      shift(31 downto 0) => shift(31 downto 0)
    );
end STRUCTURE;
