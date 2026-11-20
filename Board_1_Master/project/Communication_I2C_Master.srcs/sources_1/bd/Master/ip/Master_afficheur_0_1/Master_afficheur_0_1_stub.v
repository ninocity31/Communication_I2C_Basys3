// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri Nov 20 12:00:39 2026
// Host        : ASUS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/work/Communication_I2C_Master/Communication_I2C_Master.srcs/sources_1/bd/Master/ip/Master_afficheur_0_1/Master_afficheur_0_1_stub.v
// Design      : Master_afficheur_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "afficheur,Vivado 2019.1.3" *)
module Master_afficheur_0_1(CLK, HEX, SEPT_SEG, AN)
/* synthesis syn_black_box black_box_pad_pin="CLK,HEX[15:0],SEPT_SEG[6:0],AN[3:0]" */;
  input CLK;
  input [15:0]HEX;
  output [6:0]SEPT_SEG;
  output [3:0]AN;
endmodule
