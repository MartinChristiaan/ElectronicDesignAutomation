// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "convolve.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic convolve::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic convolve::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> convolve::ap_ST_fsm_state1 = "1";
const sc_lv<3> convolve::ap_ST_fsm_state2 = "10";
const sc_lv<3> convolve::ap_ST_fsm_state3 = "100";
const sc_lv<32> convolve::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> convolve::ap_const_lv32_1 = "1";
const sc_lv<5> convolve::ap_const_lv5_0 = "00000";
const sc_lv<32> convolve::ap_const_lv32_2 = "10";
const sc_lv<1> convolve::ap_const_lv1_0 = "0";
const sc_lv<5> convolve::ap_const_lv5_1C = "11100";
const sc_lv<5> convolve::ap_const_lv5_1 = "1";
const sc_lv<1> convolve::ap_const_lv1_1 = "1";
const bool convolve::ap_const_boolean_1 = true;

convolve::convolve(sc_module_name name) : sc_module(name), mVcdFile(0) {
    inptr_U = new convolve_inptr("inptr_U");
    inptr_U->clk(ap_clk);
    inptr_U->reset(ap_rst);
    inptr_U->address0(grp_img_conv_5x5_fu_42_inptr_address0);
    inptr_U->ce0(grp_img_conv_5x5_fu_42_inptr_ce0);
    inptr_U->q0(inptr_q0);
    inptr_U->address1(grp_img_conv_5x5_fu_42_inptr_address1);
    inptr_U->ce1(grp_img_conv_5x5_fu_42_inptr_ce1);
    inptr_U->q1(inptr_q1);
    outptr_U = new convolve_outptr("outptr_U");
    outptr_U->clk(ap_clk);
    outptr_U->reset(ap_rst);
    outptr_U->address0(grp_img_conv_5x5_fu_42_outptr_address0);
    outptr_U->ce0(grp_img_conv_5x5_fu_42_outptr_ce0);
    outptr_U->we0(grp_img_conv_5x5_fu_42_outptr_we0);
    outptr_U->d0(grp_img_conv_5x5_fu_42_outptr_d0);
    mask_U = new convolve_mask("mask_U");
    mask_U->clk(ap_clk);
    mask_U->reset(ap_rst);
    mask_U->address0(grp_img_conv_5x5_fu_42_mask_address0);
    mask_U->ce0(grp_img_conv_5x5_fu_42_mask_ce0);
    mask_U->q0(mask_q0);
    mask_U->address1(grp_img_conv_5x5_fu_42_mask_address1);
    mask_U->ce1(grp_img_conv_5x5_fu_42_mask_ce1);
    mask_U->q1(mask_q1);
    grp_img_conv_5x5_fu_42 = new img_conv_5x5("grp_img_conv_5x5_fu_42");
    grp_img_conv_5x5_fu_42->ap_clk(ap_clk);
    grp_img_conv_5x5_fu_42->ap_rst(ap_rst);
    grp_img_conv_5x5_fu_42->ap_start(grp_img_conv_5x5_fu_42_ap_start);
    grp_img_conv_5x5_fu_42->ap_done(grp_img_conv_5x5_fu_42_ap_done);
    grp_img_conv_5x5_fu_42->ap_idle(grp_img_conv_5x5_fu_42_ap_idle);
    grp_img_conv_5x5_fu_42->ap_ready(grp_img_conv_5x5_fu_42_ap_ready);
    grp_img_conv_5x5_fu_42->inptr_address0(grp_img_conv_5x5_fu_42_inptr_address0);
    grp_img_conv_5x5_fu_42->inptr_ce0(grp_img_conv_5x5_fu_42_inptr_ce0);
    grp_img_conv_5x5_fu_42->inptr_q0(inptr_q0);
    grp_img_conv_5x5_fu_42->inptr_address1(grp_img_conv_5x5_fu_42_inptr_address1);
    grp_img_conv_5x5_fu_42->inptr_ce1(grp_img_conv_5x5_fu_42_inptr_ce1);
    grp_img_conv_5x5_fu_42->inptr_q1(inptr_q1);
    grp_img_conv_5x5_fu_42->outptr_address0(grp_img_conv_5x5_fu_42_outptr_address0);
    grp_img_conv_5x5_fu_42->outptr_ce0(grp_img_conv_5x5_fu_42_outptr_ce0);
    grp_img_conv_5x5_fu_42->outptr_we0(grp_img_conv_5x5_fu_42_outptr_we0);
    grp_img_conv_5x5_fu_42->outptr_d0(grp_img_conv_5x5_fu_42_outptr_d0);
    grp_img_conv_5x5_fu_42->mask_address0(grp_img_conv_5x5_fu_42_mask_address0);
    grp_img_conv_5x5_fu_42->mask_ce0(grp_img_conv_5x5_fu_42_mask_ce0);
    grp_img_conv_5x5_fu_42->mask_q0(mask_q0);
    grp_img_conv_5x5_fu_42->mask_address1(grp_img_conv_5x5_fu_42_mask_address1);
    grp_img_conv_5x5_fu_42->mask_ce1(grp_img_conv_5x5_fu_42_mask_ce1);
    grp_img_conv_5x5_fu_42->mask_q1(mask_q1);
    grp_img_conv_5x5_fu_42->y(z_reg_30);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_51_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_51_p2 );

    SC_METHOD(thread_exitcond1_fu_51_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( z_reg_30 );

    SC_METHOD(thread_grp_img_conv_5x5_fu_42_ap_start);
    sensitive << ( grp_img_conv_5x5_fu_42_ap_start_reg );

    SC_METHOD(thread_z_1_fu_57_p2);
    sensitive << ( z_reg_30 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_img_conv_5x5_fu_42_ap_done );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond1_fu_51_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    grp_img_conv_5x5_fu_42_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "convolve_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, z_1_fu_57_p2, "z_1_fu_57_p2");
    sc_trace(mVcdFile, z_1_reg_66, "z_1_reg_66");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, inptr_q0, "inptr_q0");
    sc_trace(mVcdFile, inptr_q1, "inptr_q1");
    sc_trace(mVcdFile, mask_q0, "mask_q0");
    sc_trace(mVcdFile, mask_q1, "mask_q1");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_ap_start, "grp_img_conv_5x5_fu_42_ap_start");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_ap_done, "grp_img_conv_5x5_fu_42_ap_done");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_ap_idle, "grp_img_conv_5x5_fu_42_ap_idle");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_ap_ready, "grp_img_conv_5x5_fu_42_ap_ready");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_inptr_address0, "grp_img_conv_5x5_fu_42_inptr_address0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_inptr_ce0, "grp_img_conv_5x5_fu_42_inptr_ce0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_inptr_address1, "grp_img_conv_5x5_fu_42_inptr_address1");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_inptr_ce1, "grp_img_conv_5x5_fu_42_inptr_ce1");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_outptr_address0, "grp_img_conv_5x5_fu_42_outptr_address0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_outptr_ce0, "grp_img_conv_5x5_fu_42_outptr_ce0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_outptr_we0, "grp_img_conv_5x5_fu_42_outptr_we0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_outptr_d0, "grp_img_conv_5x5_fu_42_outptr_d0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_mask_address0, "grp_img_conv_5x5_fu_42_mask_address0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_mask_ce0, "grp_img_conv_5x5_fu_42_mask_ce0");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_mask_address1, "grp_img_conv_5x5_fu_42_mask_address1");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_mask_ce1, "grp_img_conv_5x5_fu_42_mask_ce1");
    sc_trace(mVcdFile, z_reg_30, "z_reg_30");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_img_conv_5x5_fu_42_ap_start_reg, "grp_img_conv_5x5_fu_42_ap_start_reg");
    sc_trace(mVcdFile, exitcond1_fu_51_p2, "exitcond1_fu_51_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("convolve.hdltvin.dat");
    mHdltvoutHandle.open("convolve.hdltvout.dat");
}

convolve::~convolve() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete inptr_U;
    delete outptr_U;
    delete mask_U;
    delete grp_img_conv_5x5_fu_42;
}

void convolve::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_img_conv_5x5_fu_42_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(exitcond1_fu_51_p2.read(), ap_const_lv1_0))) {
            grp_img_conv_5x5_fu_42_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_img_conv_5x5_fu_42_ap_ready.read())) {
            grp_img_conv_5x5_fu_42_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(grp_img_conv_5x5_fu_42_ap_done.read(), ap_const_logic_1))) {
        z_reg_30 = z_1_reg_66.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        z_reg_30 = ap_const_lv5_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        z_1_reg_66 = z_1_fu_57_p2.read();
    }
}

void convolve::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void convolve::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void convolve::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void convolve::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_51_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void convolve::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void convolve::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_51_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void convolve::thread_exitcond1_fu_51_p2() {
    exitcond1_fu_51_p2 = (!z_reg_30.read().is_01() || !ap_const_lv5_1C.is_01())? sc_lv<1>(): sc_lv<1>(z_reg_30.read() == ap_const_lv5_1C);
}

void convolve::thread_grp_img_conv_5x5_fu_42_ap_start() {
    grp_img_conv_5x5_fu_42_ap_start = grp_img_conv_5x5_fu_42_ap_start_reg.read();
}

void convolve::thread_z_1_fu_57_p2() {
    z_1_fu_57_p2 = (!z_reg_30.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(z_reg_30.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void convolve::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_51_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(grp_img_conv_5x5_fu_42_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void convolve::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

