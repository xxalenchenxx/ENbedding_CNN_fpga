vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_6
vlib riviera/lib_fifo_v1_0_15
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_27
vlib riviera/axi_sg_v4_1_14
vlib riviera/axi_dma_v7_1_26
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_25
vlib riviera/axi_data_fifo_v2_1_24
vlib riviera/axi_crossbar_v2_1_26
vlib riviera/axi_vip_v1_1_11
vlib riviera/processing_system7_vip_v1_0_13
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_protocol_converter_v2_1_25

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap lib_fifo_v1_0_15 riviera/lib_fifo_v1_0_15
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_27 riviera/axi_datamover_v5_1_27
vmap axi_sg_v4_1_14 riviera/axi_sg_v4_1_14
vmap axi_dma_v7_1_26 riviera/axi_dma_v7_1_26
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 riviera/axi_register_slice_v2_1_25
vmap axi_data_fifo_v2_1_24 riviera/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 riviera/axi_crossbar_v2_1_26
vmap axi_vip_v1_1_11 riviera/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 riviera/processing_system7_vip_v1_0_13
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_protocol_converter_v2_1_25 riviera/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_15 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/a4ed/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_27 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/9b19/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_14 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/bcf6/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_26 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/69a4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_axi_dma_0_0/sim/Lab_final_bd_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_xbar_0/sim/Lab_final_bd_xbar_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_myip_v1_0_0_0/sim/Lab_final_bd_myip_v1_0_0_0.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_processing_system7_0_0/sim/Lab_final_bd_processing_system7_0_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_xbar_1/sim/Lab_final_bd_xbar_1.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_rst_ps7_0_50M_0/sim/Lab_final_bd_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_blk_rom_weight_0/sim/Lab_final_bd_blk_rom_weight_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_blk_rom_other_weight_0/sim/Lab_final_bd_blk_rom_other_weight_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_blk_ram_temp_0/sim/Lab_final_bd_blk_ram_temp_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_MP1_0_0/sim/Lab_final_bd_MP1_0_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_blk_rom_inimg_0/sim/Lab_final_bd_blk_rom_inimg_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_MP2_0_0/sim/Lab_final_bd_MP2_0_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_FC_0_0/sim/Lab_final_bd_FC_0_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_MUX_mem_out_0_0/sim/Lab_final_bd_MUX_mem_out_0_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_ConV1_0_0/sim/Lab_final_bd_ConV1_0_0.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/ec67/hdl" "+incdir+../../../../lab_final.gen/sources_1/bd/Lab_final_bd/ipshared/3007/hdl" "+incdir+E:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_auto_pc_0/sim/Lab_final_bd_auto_pc_0.v" \
"../../../bd/Lab_final_bd/ip/Lab_final_bd_auto_pc_1/sim/Lab_final_bd_auto_pc_1.v" \
"../../../bd/Lab_final_bd/sim/Lab_final_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

