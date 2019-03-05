-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 28 11:56:20 2019
-- Host        : DESKTOP-DQMU8ME running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xa7z030fbv484-1I
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "inptr_ce0,outptr_ce0,outptr_we0,mask_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,inptr_address0[10:0],inptr_q0[7:0],inptr_address1[10:0],inptr_ce1[0:0],inptr_q1[7:0],outptr_address0[5:0],outptr_d0[7:0],mask_address0[4:0],mask_q0[7:0],mask_address1[4:0],mask_ce1[0:0],mask_q1[7:0],shift[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "img_conv_5x5,Vivado 2018.3";
begin
end;
