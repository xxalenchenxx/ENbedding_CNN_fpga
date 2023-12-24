// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Nov  6 20:16:46 2023
// Host        : DESKTOP-2QICLVD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top NN_bd_blk_mem_gen_2_0 -prefix
//               NN_bd_blk_mem_gen_2_0_ NN_bd_blk_mem_gen_2_0_stub.v
// Design      : NN_bd_blk_mem_gen_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module NN_bd_blk_mem_gen_2_0(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[8:0],douta[31:0]" */;
  input clka;
  input ena;
  input [8:0]addra;
  output [31:0]douta;
endmodule
