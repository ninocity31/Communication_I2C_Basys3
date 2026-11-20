// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri Nov 20 12:00:39 2026
// Host        : ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/work/Communication_I2C_Master/Communication_I2C_Master.srcs/sources_1/bd/Master/ip/Master_afficheur_0_1/Master_afficheur_0_1_sim_netlist.v
// Design      : Master_afficheur_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Master_afficheur_0_1,afficheur,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "afficheur,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module Master_afficheur_0_1
   (CLK,
    HEX,
    SEPT_SEG,
    AN);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Master_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input CLK;
  input [15:0]HEX;
  output [6:0]SEPT_SEG;
  output [3:0]AN;

  wire [3:0]AN;
  wire CLK;
  wire [15:0]HEX;
  wire [6:0]SEPT_SEG;

  Master_afficheur_0_1_afficheur U0
       (.AN(AN),
        .CLK(CLK),
        .HEX(HEX),
        .SEPT_SEG(SEPT_SEG));
endmodule

(* ORIG_REF_NAME = "afficheur" *) 
module Master_afficheur_0_1_afficheur
   (SEPT_SEG,
    AN,
    CLK,
    HEX);
  output [6:0]SEPT_SEG;
  output [3:0]AN;
  input CLK;
  input [15:0]HEX;

  wire [3:0]AN;
  wire \AN[0]_i_1_n_0 ;
  wire \AN[1]_i_1_n_0 ;
  wire \AN[2]_i_1_n_0 ;
  wire \AN[3]_i_1_n_0 ;
  wire CLK;
  wire ENABLE_reg_n_0;
  wire \FSM_sequential_etat[0]_i_1_n_0 ;
  wire \FSM_sequential_etat[1]_i_1_n_0 ;
  wire [15:0]HEX;
  wire [6:0]SEPT_SEG;
  wire [13:0]cmp;
  wire cmp0_carry__0_n_0;
  wire cmp0_carry__0_n_1;
  wire cmp0_carry__0_n_2;
  wire cmp0_carry__0_n_3;
  wire cmp0_carry__1_n_0;
  wire cmp0_carry__1_n_1;
  wire cmp0_carry__1_n_2;
  wire cmp0_carry__1_n_3;
  wire cmp0_carry_n_0;
  wire cmp0_carry_n_1;
  wire cmp0_carry_n_2;
  wire cmp0_carry_n_3;
  wire \cmp[13]_i_1_n_0 ;
  wire \cmp[13]_i_2_n_0 ;
  wire \cmp[13]_i_3_n_0 ;
  wire [0:0]cmp_1;
  wire [13:1]data0;
  wire [3:0]digit;
  wire [3:0]digit_0;
  wire [1:0]etat;
  wire [3:0]NLW_cmp0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_cmp0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AN[0]_i_1 
       (.I0(etat[1]),
        .I1(etat[0]),
        .O(\AN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN[1]_i_1 
       (.I0(etat[0]),
        .I1(etat[1]),
        .O(\AN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN[2]_i_1 
       (.I0(etat[1]),
        .I1(etat[0]),
        .O(\AN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \AN[3]_i_1 
       (.I0(etat[1]),
        .I1(etat[0]),
        .O(\AN[3]_i_1_n_0 ));
  FDRE \AN_reg[0] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(\AN[0]_i_1_n_0 ),
        .Q(AN[0]),
        .R(1'b0));
  FDRE \AN_reg[1] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(\AN[1]_i_1_n_0 ),
        .Q(AN[1]),
        .R(1'b0));
  FDRE \AN_reg[2] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(\AN[2]_i_1_n_0 ),
        .Q(AN[2]),
        .R(1'b0));
  FDRE \AN_reg[3] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(\AN[3]_i_1_n_0 ),
        .Q(AN[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ENABLE_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\cmp[13]_i_1_n_0 ),
        .Q(ENABLE_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_etat[0]_i_1 
       (.I0(etat[0]),
        .O(\FSM_sequential_etat[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_etat[1]_i_1 
       (.I0(etat[0]),
        .I1(etat[1]),
        .O(\FSM_sequential_etat[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "dig1:00,dig2:01,dig3:10,dig4:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_reg[0] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(\FSM_sequential_etat[0]_i_1_n_0 ),
        .Q(etat[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "dig1:00,dig2:01,dig3:10,dig4:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_reg[1] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(\FSM_sequential_etat[1]_i_1_n_0 ),
        .Q(etat[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \SEPT_SEG[0]_INST_0 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[0]),
        .I3(digit[1]),
        .O(SEPT_SEG[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SEPT_SEG[1]_INST_0 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[1]),
        .I3(digit[0]),
        .O(SEPT_SEG[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \SEPT_SEG[2]_INST_0 
       (.I0(digit[3]),
        .I1(digit[0]),
        .I2(digit[1]),
        .I3(digit[2]),
        .O(SEPT_SEG[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \SEPT_SEG[3]_INST_0 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[0]),
        .I3(digit[1]),
        .O(SEPT_SEG[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \SEPT_SEG[4]_INST_0 
       (.I0(digit[3]),
        .I1(digit[1]),
        .I2(digit[2]),
        .I3(digit[0]),
        .O(SEPT_SEG[4]));
  LUT4 #(
    .INIT(16'h5190)) 
    \SEPT_SEG[5]_INST_0 
       (.I0(digit[3]),
        .I1(digit[2]),
        .I2(digit[0]),
        .I3(digit[1]),
        .O(SEPT_SEG[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \SEPT_SEG[6]_INST_0 
       (.I0(digit[3]),
        .I1(digit[0]),
        .I2(digit[2]),
        .I3(digit[1]),
        .O(SEPT_SEG[6]));
  CARRY4 cmp0_carry
       (.CI(1'b0),
        .CO({cmp0_carry_n_0,cmp0_carry_n_1,cmp0_carry_n_2,cmp0_carry_n_3}),
        .CYINIT(cmp[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cmp[4:1]));
  CARRY4 cmp0_carry__0
       (.CI(cmp0_carry_n_0),
        .CO({cmp0_carry__0_n_0,cmp0_carry__0_n_1,cmp0_carry__0_n_2,cmp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cmp[8:5]));
  CARRY4 cmp0_carry__1
       (.CI(cmp0_carry__0_n_0),
        .CO({cmp0_carry__1_n_0,cmp0_carry__1_n_1,cmp0_carry__1_n_2,cmp0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cmp[12:9]));
  CARRY4 cmp0_carry__2
       (.CI(cmp0_carry__1_n_0),
        .CO(NLW_cmp0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cmp0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,cmp[13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \cmp[0]_i_1 
       (.I0(cmp[0]),
        .O(cmp_1));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \cmp[13]_i_1 
       (.I0(\cmp[13]_i_2_n_0 ),
        .I1(cmp[3]),
        .I2(cmp[2]),
        .I3(cmp[5]),
        .I4(cmp[4]),
        .I5(\cmp[13]_i_3_n_0 ),
        .O(\cmp[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cmp[13]_i_2 
       (.I0(cmp[7]),
        .I1(cmp[6]),
        .I2(cmp[9]),
        .I3(cmp[8]),
        .O(\cmp[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \cmp[13]_i_3 
       (.I0(cmp[12]),
        .I1(cmp[13]),
        .I2(cmp[11]),
        .I3(cmp[10]),
        .I4(cmp[1]),
        .I5(cmp[0]),
        .O(\cmp[13]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmp_1),
        .Q(cmp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cmp[10]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cmp[11]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cmp[12]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cmp[13]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cmp[1]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cmp[2]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cmp[3]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cmp[4]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cmp[5]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cmp[6]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cmp[7]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cmp[8]),
        .R(\cmp[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cmp[9]),
        .R(\cmp[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \digit[0]_i_1 
       (.I0(HEX[8]),
        .I1(HEX[12]),
        .I2(HEX[0]),
        .I3(etat[1]),
        .I4(etat[0]),
        .I5(HEX[4]),
        .O(digit_0[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \digit[1]_i_1 
       (.I0(HEX[9]),
        .I1(HEX[13]),
        .I2(HEX[1]),
        .I3(etat[1]),
        .I4(etat[0]),
        .I5(HEX[5]),
        .O(digit_0[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \digit[2]_i_1 
       (.I0(HEX[10]),
        .I1(HEX[14]),
        .I2(HEX[2]),
        .I3(etat[1]),
        .I4(etat[0]),
        .I5(HEX[6]),
        .O(digit_0[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \digit[3]_i_1 
       (.I0(HEX[11]),
        .I1(HEX[15]),
        .I2(HEX[3]),
        .I3(etat[1]),
        .I4(etat[0]),
        .I5(HEX[7]),
        .O(digit_0[3]));
  FDRE \digit_reg[0] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(digit_0[0]),
        .Q(digit[0]),
        .R(1'b0));
  FDRE \digit_reg[1] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(digit_0[1]),
        .Q(digit[1]),
        .R(1'b0));
  FDRE \digit_reg[2] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(digit_0[2]),
        .Q(digit[2]),
        .R(1'b0));
  FDRE \digit_reg[3] 
       (.C(CLK),
        .CE(ENABLE_reg_n_0),
        .D(digit_0[3]),
        .Q(digit[3]),
        .R(1'b0));
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
