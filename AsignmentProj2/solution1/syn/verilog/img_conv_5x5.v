// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module img_conv_5x5 (
        ap_clk,
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
        y
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] inptr_address0;
output   inptr_ce0;
input  [7:0] inptr_q0;
output  [10:0] inptr_address1;
output   inptr_ce1;
input  [7:0] inptr_q1;
output  [5:0] outptr_address0;
output   outptr_ce0;
output   outptr_we0;
output  [7:0] outptr_d0;
output  [4:0] mask_address0;
output   mask_ce0;
input  [7:0] mask_q0;
output  [4:0] mask_address1;
output   mask_ce1;
input  [7:0] mask_q1;
input  [4:0] y;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] inptr_address0;
reg inptr_ce0;
reg[10:0] inptr_address1;
reg inptr_ce1;
reg outptr_ce0;
reg outptr_we0;
reg[4:0] mask_address0;
reg mask_ce0;
reg[4:0] mask_address1;
reg mask_ce1;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] reg_220;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
reg  signed [7:0] reg_224;
wire   [10:0] IN4_0_rec_cast1_fu_228_p1;
reg   [10:0] IN4_0_rec_cast1_reg_581;
wire    ap_CS_fsm_state2;
reg   [5:0] outptr_addr_reg_586;
wire   [5:0] p_rec_fu_243_p2;
reg   [5:0] p_rec_reg_594;
wire   [4:0] i_cast1_fu_249_p1;
reg   [4:0] i_cast1_reg_599;
wire    ap_CS_fsm_state3;
wire   [3:0] i_cast_fu_253_p1;
reg   [3:0] i_cast_reg_605;
wire   [2:0] i_1_fu_263_p2;
reg   [2:0] i_1_reg_614;
wire   [0:0] exitcond_fu_257_p2;
wire   [10:0] tmp4_fu_338_p3;
reg   [10:0] tmp4_reg_629;
wire  signed [6:0] tmp_fu_345_p3;
reg  signed [6:0] tmp_reg_635;
reg   [7:0] inptr_load_1_reg_660;
wire    ap_CS_fsm_state5;
reg   [7:0] inptr_load_2_reg_665;
reg  signed [7:0] mask_load_1_reg_680;
reg  signed [7:0] mask_load_2_reg_685;
wire   [15:0] sum33_fu_502_p2;
reg  signed [15:0] sum33_reg_700;
wire  signed [16:0] grp_fu_550_p3;
reg  signed [16:0] tmp9_reg_705;
wire  signed [17:0] grp_fu_558_p3;
reg  signed [17:0] tmp5_reg_710;
wire    ap_CS_fsm_state7;
wire   [20:0] sum_1_fu_544_p2;
wire    ap_CS_fsm_state8;
reg   [5:0] IN4_0_rec_reg_184;
reg   [20:0] sum_reg_196;
wire   [0:0] exitcond2_fu_237_p2;
reg   [2:0] i_reg_208;
wire   [63:0] IN4_0_rec_cast_fu_232_p1;
wire   [63:0] sum1_cast_fu_288_p1;
wire   [63:0] tmp_6_fu_269_p1;
wire   [63:0] sum3_cast_fu_363_p1;
wire   [63:0] sum5_cast_fu_386_p1;
wire   [63:0] tmp_8_fu_396_p1;
wire   [63:0] tmp_s_fu_406_p1;
wire   [63:0] sum7_cast_fu_423_p1;
wire   [63:0] sum9_cast_fu_445_p1;
wire   [63:0] tmp_10_fu_455_p1;
wire   [63:0] tmp_12_fu_465_p1;
wire   [10:0] tmp3_fu_274_p4;
wire   [10:0] sum1_fu_283_p2;
wire   [0:0] tmp_2_fu_293_p3;
wire   [20:0] p_s_fu_301_p3;
wire   [12:0] tmp_3_fu_309_p4;
wire   [0:0] icmp_fu_319_p2;
wire   [7:0] tmp_4_fu_325_p1;
wire   [10:0] tmp5_cast_fu_353_p1;
wire   [10:0] sum3_fu_357_p2;
wire   [7:0] tmp1_fu_368_p3;
wire   [10:0] tmp7_cast_fu_376_p1;
wire   [10:0] sum5_fu_380_p2;
wire   [3:0] tmp_7_fu_391_p2;
wire   [3:0] tmp_9_fu_401_p2;
wire  signed [7:0] tmp9_cast1_fu_411_p1;
wire   [10:0] tmp9_cast_fu_414_p1;
wire   [10:0] sum7_fu_418_p2;
wire   [8:0] tmp7_fu_428_p3;
wire   [10:0] tmp11_cast_fu_436_p1;
wire   [10:0] sum9_fu_440_p2;
wire   [4:0] tmp_1_fu_450_p2;
wire   [4:0] tmp_11_fu_460_p2;
wire   [7:0] sum00_fu_478_p0;
wire  signed [7:0] sum00_fu_478_p1;
wire  signed [15:0] sum00_fu_478_p2;
wire   [7:0] sum33_fu_502_p0;
wire  signed [7:0] sum33_fu_502_p1;
wire  signed [16:0] grp_fu_566_p3;
wire  signed [18:0] tmp13_cast_fu_531_p1;
wire  signed [18:0] tmp12_cast_fu_528_p1;
wire   [18:0] tmp_13_fu_534_p2;
wire  signed [20:0] p_cast_fu_540_p1;
wire   [7:0] grp_fu_550_p0;
wire   [7:0] grp_fu_558_p0;
wire   [7:0] grp_fu_566_p0;
reg   [7:0] ap_NS_fsm;
wire   [15:0] grp_fu_550_p00;
wire   [15:0] grp_fu_558_p00;
wire   [15:0] grp_fu_566_p00;
wire   [15:0] sum00_fu_478_p00;
wire   [15:0] sum33_fu_502_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

convolve_mac_mulabkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 17 ))
convolve_mac_mulabkb_U1(
    .din0(grp_fu_550_p0),
    .din1(mask_load_1_reg_680),
    .din2(sum00_fu_478_p2),
    .dout(grp_fu_550_p3)
);

convolve_mac_mulacud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 17 ),
    .dout_WIDTH( 18 ))
convolve_mac_mulacud_U2(
    .din0(grp_fu_558_p0),
    .din1(mask_load_2_reg_685),
    .din2(grp_fu_566_p3),
    .dout(grp_fu_558_p3)
);

convolve_mac_mulabkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 17 ))
convolve_mac_mulabkb_U3(
    .din0(grp_fu_566_p0),
    .din1(reg_224),
    .din2(sum33_reg_700),
    .dout(grp_fu_566_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        IN4_0_rec_reg_184 <= p_rec_reg_594;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        IN4_0_rec_reg_184 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_208 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_208 <= i_1_reg_614;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sum_reg_196 <= 21'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_reg_196 <= sum_1_fu_544_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        IN4_0_rec_cast1_reg_581[5 : 0] <= IN4_0_rec_cast1_fu_228_p1[5 : 0];
        outptr_addr_reg_586 <= IN4_0_rec_cast_fu_232_p1;
        p_rec_reg_594 <= p_rec_fu_243_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_1_reg_614 <= i_1_fu_263_p2;
        i_cast1_reg_599[2 : 0] <= i_cast1_fu_249_p1[2 : 0];
        i_cast_reg_605[2 : 0] <= i_cast_fu_253_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        inptr_load_1_reg_660 <= inptr_q0;
        inptr_load_2_reg_665 <= inptr_q1;
        mask_load_1_reg_680 <= mask_q0;
        mask_load_2_reg_685 <= mask_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_220 <= inptr_q0;
        reg_224 <= mask_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sum33_reg_700 <= sum33_fu_502_p2;
        tmp9_reg_705 <= grp_fu_550_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp4_reg_629 <= tmp4_fu_338_p3;
        tmp_reg_635[2 : 0] <= tmp_fu_345_p3[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp5_reg_710 <= grp_fu_558_p3;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_237_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_237_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        inptr_address0 = sum9_cast_fu_445_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        inptr_address0 = sum3_cast_fu_363_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        inptr_address0 = sum1_cast_fu_288_p1;
    end else begin
        inptr_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        inptr_address1 = sum7_cast_fu_423_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        inptr_address1 = sum5_cast_fu_386_p1;
    end else begin
        inptr_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        inptr_ce0 = 1'b1;
    end else begin
        inptr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        inptr_ce1 = 1'b1;
    end else begin
        inptr_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mask_address0 = tmp_12_fu_465_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        mask_address0 = tmp_8_fu_396_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        mask_address0 = tmp_6_fu_269_p1;
    end else begin
        mask_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mask_address1 = tmp_10_fu_455_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        mask_address1 = tmp_s_fu_406_p1;
    end else begin
        mask_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        mask_ce0 = 1'b1;
    end else begin
        mask_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        mask_ce1 = 1'b1;
    end else begin
        mask_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        outptr_ce0 = 1'b1;
    end else begin
        outptr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        outptr_we0 = 1'b1;
    end else begin
        outptr_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_237_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign IN4_0_rec_cast1_fu_228_p1 = IN4_0_rec_reg_184;

assign IN4_0_rec_cast_fu_232_p1 = IN4_0_rec_reg_184;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign exitcond2_fu_237_p2 = ((IN4_0_rec_reg_184 == 6'd60) ? 1'b1 : 1'b0);

assign exitcond_fu_257_p2 = ((i_reg_208 == 3'd5) ? 1'b1 : 1'b0);

assign grp_fu_550_p0 = grp_fu_550_p00;

assign grp_fu_550_p00 = inptr_load_1_reg_660;

assign grp_fu_558_p0 = grp_fu_558_p00;

assign grp_fu_558_p00 = inptr_load_2_reg_665;

assign grp_fu_566_p0 = grp_fu_566_p00;

assign grp_fu_566_p00 = reg_220;

assign i_1_fu_263_p2 = (i_reg_208 + 3'd1);

assign i_cast1_fu_249_p1 = i_reg_208;

assign i_cast_fu_253_p1 = i_reg_208;

assign icmp_fu_319_p2 = ((tmp_3_fu_309_p4 != 13'd0) ? 1'b1 : 1'b0);

assign outptr_address0 = outptr_addr_reg_586;

assign outptr_d0 = ((icmp_fu_319_p2[0:0] === 1'b1) ? 8'd255 : tmp_4_fu_325_p1);

assign p_cast_fu_540_p1 = $signed(tmp_13_fu_534_p2);

assign p_rec_fu_243_p2 = (IN4_0_rec_reg_184 + 6'd1);

assign p_s_fu_301_p3 = ((tmp_2_fu_293_p3[0:0] === 1'b1) ? 21'd0 : sum_reg_196);

assign sum00_fu_478_p0 = sum00_fu_478_p00;

assign sum00_fu_478_p00 = reg_220;

assign sum00_fu_478_p1 = reg_224;

assign sum00_fu_478_p2 = ($signed({{1'b0}, {sum00_fu_478_p0}}) * $signed(sum00_fu_478_p1));

assign sum1_cast_fu_288_p1 = sum1_fu_283_p2;

assign sum1_fu_283_p2 = (tmp3_fu_274_p4 + IN4_0_rec_cast1_reg_581);

assign sum33_fu_502_p0 = sum33_fu_502_p00;

assign sum33_fu_502_p00 = inptr_q1;

assign sum33_fu_502_p1 = mask_q1;

assign sum33_fu_502_p2 = ($signed({{1'b0}, {sum33_fu_502_p0}}) * $signed(sum33_fu_502_p1));

assign sum3_cast_fu_363_p1 = sum3_fu_357_p2;

assign sum3_fu_357_p2 = (tmp5_cast_fu_353_p1 + tmp4_fu_338_p3);

assign sum5_cast_fu_386_p1 = sum5_fu_380_p2;

assign sum5_fu_380_p2 = (tmp7_cast_fu_376_p1 + tmp4_fu_338_p3);

assign sum7_cast_fu_423_p1 = sum7_fu_418_p2;

assign sum7_fu_418_p2 = (tmp9_cast_fu_414_p1 + tmp4_reg_629);

assign sum9_cast_fu_445_p1 = sum9_fu_440_p2;

assign sum9_fu_440_p2 = (tmp11_cast_fu_436_p1 + tmp4_reg_629);

assign sum_1_fu_544_p2 = ($signed(sum_reg_196) + $signed(p_cast_fu_540_p1));

assign tmp11_cast_fu_436_p1 = tmp7_fu_428_p3;

assign tmp12_cast_fu_528_p1 = tmp9_reg_705;

assign tmp13_cast_fu_531_p1 = tmp5_reg_710;

assign tmp1_fu_368_p3 = {{5'd16}, {i_reg_208}};

assign tmp3_fu_274_p4 = {{{y}, {3'd0}}, {i_reg_208}};

assign tmp4_fu_338_p3 = {{y}, {IN4_0_rec_reg_184}};

assign tmp5_cast_fu_353_p1 = $unsigned(tmp_fu_345_p3);

assign tmp7_cast_fu_376_p1 = tmp1_fu_368_p3;

assign tmp7_fu_428_p3 = {{6'd32}, {i_reg_208}};

assign tmp9_cast1_fu_411_p1 = tmp_reg_635;

assign tmp9_cast_fu_414_p1 = $unsigned(tmp9_cast1_fu_411_p1);

assign tmp_10_fu_455_p1 = tmp_1_fu_450_p2;

assign tmp_11_fu_460_p2 = ($signed(i_cast1_reg_599) + $signed(5'd20));

assign tmp_12_fu_465_p1 = tmp_11_fu_460_p2;

assign tmp_13_fu_534_p2 = ($signed(tmp13_cast_fu_531_p1) + $signed(tmp12_cast_fu_528_p1));

assign tmp_1_fu_450_p2 = (i_cast1_reg_599 + 5'd15);

assign tmp_2_fu_293_p3 = sum_reg_196[32'd20];

assign tmp_3_fu_309_p4 = {{p_s_fu_301_p3[20:8]}};

assign tmp_4_fu_325_p1 = p_s_fu_301_p3[7:0];

assign tmp_6_fu_269_p1 = i_reg_208;

assign tmp_7_fu_391_p2 = (i_cast_reg_605 + 4'd5);

assign tmp_8_fu_396_p1 = tmp_7_fu_391_p2;

assign tmp_9_fu_401_p2 = ($signed(i_cast_reg_605) + $signed(4'd10));

assign tmp_fu_345_p3 = {{4'd8}, {i_reg_208}};

assign tmp_s_fu_406_p1 = tmp_9_fu_401_p2;

always @ (posedge ap_clk) begin
    IN4_0_rec_cast1_reg_581[10:6] <= 5'b00000;
    i_cast1_reg_599[4:3] <= 2'b00;
    i_cast_reg_605[3] <= 1'b0;
    tmp_reg_635[6:3] <= 4'b1000;
end

endmodule //img_conv_5x5