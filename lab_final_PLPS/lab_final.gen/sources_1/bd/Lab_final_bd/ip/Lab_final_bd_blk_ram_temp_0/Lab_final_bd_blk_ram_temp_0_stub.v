// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Dec  1 12:56:17 2023
// Host        : DESKTOP-2QICLVD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Lab_final_bd_blk_ram_temp_0 -prefix
//               Lab_final_bd_blk_ram_temp_0_ NN_bd_blk_mem_gen_0_1_stub.v
// Design      : NN_bd_blk_mem_gen_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module Lab_final_bd_blk_ram_temp_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[15:0],dina[8:0],clkb,enb,addrb[15:0],doutb[8:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [15:0]addra;
  input [8:0]dina;
  input clkb;
  input enb;
  input [15:0]addrb;
  output [8:0]doutb;
endmodule
