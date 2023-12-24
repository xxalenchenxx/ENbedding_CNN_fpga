// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Dec 11 13:10:07 2023
// Host        : DESKTOP-2QICLVD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Lab_final/lab_final
//               _NN/lab_final.gen/sources_1/bd/NN_bd/ip/NN_bd_ConV1_0_0/NN_bd_ConV1_0_0_stub.v}
// Design      : NN_bd_ConV1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ConV1,Vivado 2021.2" *)
module NN_bd_ConV1_0_0(clk, start_ConV1, end_ConV1, start_ConV2, 
  end_ConV3, ram_addr_ri, ram_data_ri, ram_en_ri, ram_addr_w, ram_data_w, ram_en_w, ram_wea, 
  rom_addr_ri, rom_data_ri, rom_en_ri, rom_addr_rw, rom_data_rw, rom_en_rw, rom_addr_row, 
  rom_data_row, rom_en_row)
/* synthesis syn_black_box black_box_pad_pin="clk,start_ConV1,end_ConV1,start_ConV2,end_ConV3,ram_addr_ri[15:0],ram_data_ri[7:0],ram_en_ri,ram_addr_w[15:0],ram_data_w[7:0],ram_en_w,ram_wea,rom_addr_ri[11:0],rom_data_ri[7:0],rom_en_ri,rom_addr_rw[14:0],rom_data_rw[7:0],rom_en_rw,rom_addr_row[8:0],rom_data_row[31:0],rom_en_row" */;
  input clk;
  input start_ConV1;
  output end_ConV1;
  input start_ConV2;
  output end_ConV3;
  output [15:0]ram_addr_ri;
  input [7:0]ram_data_ri;
  output ram_en_ri;
  output [15:0]ram_addr_w;
  output [7:0]ram_data_w;
  output ram_en_w;
  output ram_wea;
  output [11:0]rom_addr_ri;
  input [7:0]rom_data_ri;
  output rom_en_ri;
  output [14:0]rom_addr_rw;
  input [7:0]rom_data_rw;
  output rom_en_rw;
  output [8:0]rom_addr_row;
  input [31:0]rom_data_row;
  output rom_en_row;
endmodule
