vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/xil_defaultlib
vlib activehdl/axi_bram_ctrl_v4_1_3
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_23
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_22
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_21
vlib activehdl/axi_data_fifo_v2_1_20
vlib activehdl/axi_crossbar_v2_1_22
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_14
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/axi_apb_bridge_v3_0_16
vlib activehdl/axi_cdma_v4_1_21

vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_bram_ctrl_v4_1_3 activehdl/axi_bram_ctrl_v4_1_3
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_23 activehdl/axi_datamover_v5_1_23
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_22 activehdl/axi_dma_v7_1_22
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_21 activehdl/axi_register_slice_v2_1_21
vmap axi_data_fifo_v2_1_20 activehdl/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 activehdl/axi_crossbar_v2_1_22
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_14 activehdl/axi_intc_v4_1_14
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap axi_apb_bridge_v3_0_16 activehdl/axi_apb_bridge_v3_0_16
vmap axi_cdma_v4_1_21 activehdl/axi_cdma_v4_1_21

vlog -work xpm  -sv2k12 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/ip/bnnTop_blk_mem_gen_0_1/sim/bnnTop_blk_mem_gen_0_1.v" \

vcom -work axi_bram_ctrl_v4_1_3 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/db86/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_bram_ctrl_0_1/sim/bnnTop_axi_bram_ctrl_0_1.vhd" \
"../../../bd/bnnTop/ip/bnnTop_axi_bram_ctrl_1_1/sim/bnnTop_axi_bram_ctrl_1_1.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_23 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_22 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/0fb1/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_dma_0_0/sim/bnnTop_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/ip/bnnTop_axi_crossbar_0_0/sim/bnnTop_axi_crossbar_0_0.v" \
"../../../bd/bnnTop/ip/bnnTop_axi_crossbar_1_0/sim/bnnTop_axi_crossbar_1_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_14 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/f78a/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_intc_0_0/sim/bnnTop_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/ip/bnnTop_xlconcat_0_0/sim/bnnTop_xlconcat_0_0.v" \
"../../../bd/bnnTop/ip/bnnTop_systolic_array_wrapp_0_0/sim/bnnTop_systolic_array_wrapp_0_0.v" \

vcom -work axi_apb_bridge_v3_0_16 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/7b85/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_apb_bridge_0_0/sim/bnnTop_axi_apb_bridge_0_0.vhd" \
"../../../bd/bnnTop/ip/bnnTop_axi_bram_ctrl_2_0/sim/bnnTop_axi_bram_ctrl_2_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/ip/bnnTop_activationsTop_wrapp_0_0/sim/bnnTop_activationsTop_wrapp_0_0.v" \

vcom -work axi_cdma_v4_1_21 -93 \
"../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/1055/hdl/axi_cdma_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_cdma_1_0/sim/bnnTop_axi_cdma_1_0.vhd" \
"../../../bd/bnnTop/ip/bnnTop_axi_bram_ctrl_3_0/sim/bnnTop_axi_bram_ctrl_3_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/ip/bnnTop_axi_crossbar_2_0/sim/bnnTop_axi_crossbar_2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_bram_ctrl_4_0/sim/bnnTop_axi_bram_ctrl_4_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/ip/bnnTop_partialsumsTop_wrapp_0_0/sim/bnnTop_partialsumsTop_wrapp_0_0.v" \
"../../../bd/bnnTop/ip/bnnTop_registers_0_1/sim/bnnTop_registers_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bnnTop/ip/bnnTop_axi_cdma_0_1/sim/bnnTop_axi_cdma_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bnn_accelerator_project3.srcs/sources_1/bd/bnnTop/ipshared/ec67/hdl" \
"../../../bd/bnnTop/sim/bnnTop.v" \

vlog -work xil_defaultlib \
"glbl.v"

