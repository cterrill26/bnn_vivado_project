//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Jul 28 17:52:30 2021
//Host        : LAPTOP-RDE5N9E1 running 64-bit major release  (build 9200)
//Command     : generate_target bnnTop.bd
//Design      : bnnTop
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bnnTop,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bnnTop,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=24,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bnnTop.hwdef" *) 
module bnnTop
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arprot,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awprot,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wstrb,
    S_AXI_LITE_wvalid,
    clk,
    interrupt_0_interrupt,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bnnTop_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bnnTop_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_LITE_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *) input [2:0]S_AXI_LITE_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output [0:0]S_AXI_LITE_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input [0:0]S_AXI_LITE_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [31:0]S_AXI_LITE_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *) input [2:0]S_AXI_LITE_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output [0:0]S_AXI_LITE_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input [0:0]S_AXI_LITE_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input [0:0]S_AXI_LITE_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]S_AXI_LITE_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output [0:0]S_AXI_LITE_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]S_AXI_LITE_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input [0:0]S_AXI_LITE_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]S_AXI_LITE_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output [0:0]S_AXI_LITE_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]S_AXI_LITE_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output [0:0]S_AXI_LITE_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]S_AXI_LITE_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input [0:0]S_AXI_LITE_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M00_AXI:S_AXI_LITE, ASSOCIATED_RESET resetn, CLK_DOMAIN bnnTop_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 interrupt_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_0, LOW_LATENCY 0, SENSITIVITY LEVEL_HIGH" *) output interrupt_0_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]S00_AXI_0_1_ARADDR;
  wire [2:0]S00_AXI_0_1_ARPROT;
  wire [0:0]S00_AXI_0_1_ARREADY;
  wire [0:0]S00_AXI_0_1_ARVALID;
  wire [31:0]S00_AXI_0_1_AWADDR;
  wire [2:0]S00_AXI_0_1_AWPROT;
  wire [0:0]S00_AXI_0_1_AWREADY;
  wire [0:0]S00_AXI_0_1_AWVALID;
  wire [0:0]S00_AXI_0_1_BREADY;
  wire [1:0]S00_AXI_0_1_BRESP;
  wire [0:0]S00_AXI_0_1_BVALID;
  wire [31:0]S00_AXI_0_1_RDATA;
  wire [0:0]S00_AXI_0_1_RREADY;
  wire [1:0]S00_AXI_0_1_RRESP;
  wire [0:0]S00_AXI_0_1_RVALID;
  wire [31:0]S00_AXI_0_1_WDATA;
  wire [0:0]S00_AXI_0_1_WREADY;
  wire [3:0]S00_AXI_0_1_WSTRB;
  wire [0:0]S00_AXI_0_1_WVALID;
  wire [511:0]activationsTop_wrapp_0_activation_in;
  wire [31:0]activationsTop_wrapp_0_activation_in_valid;
  wire [31:0]axi_apb_bridge_0_APB_M_PADDR;
  wire axi_apb_bridge_0_APB_M_PENABLE;
  wire [31:0]axi_apb_bridge_0_APB_M_PRDATA;
  wire axi_apb_bridge_0_APB_M_PREADY;
  wire [0:0]axi_apb_bridge_0_APB_M_PSEL;
  wire axi_apb_bridge_0_APB_M_PSLVERR;
  wire [31:0]axi_apb_bridge_0_APB_M_PWDATA;
  wire axi_apb_bridge_0_APB_M_PWRITE;
  wire [13:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [16:0]axi_bram_ctrl_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_2_BRAM_PORTA_WE;
  wire [16:0]axi_bram_ctrl_3_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_3_BRAM_PORTA_CLK;
  wire [511:0]axi_bram_ctrl_3_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_3_BRAM_PORTA_EN;
  wire axi_bram_ctrl_3_BRAM_PORTA_RST;
  wire [16:0]axi_bram_ctrl_4_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_4_BRAM_PORTA_CLK;
  wire [511:0]axi_bram_ctrl_4_BRAM_PORTA_DIN;
  wire axi_bram_ctrl_4_BRAM_PORTA_EN;
  wire axi_bram_ctrl_4_BRAM_PORTA_RST;
  wire [63:0]axi_bram_ctrl_4_BRAM_PORTA_WE;
  wire [31:0]axi_cdma_0_M_AXI_ARADDR;
  wire [1:0]axi_cdma_0_M_AXI_ARBURST;
  wire [3:0]axi_cdma_0_M_AXI_ARCACHE;
  wire [7:0]axi_cdma_0_M_AXI_ARLEN;
  wire [2:0]axi_cdma_0_M_AXI_ARPROT;
  wire [0:0]axi_cdma_0_M_AXI_ARREADY;
  wire [2:0]axi_cdma_0_M_AXI_ARSIZE;
  wire axi_cdma_0_M_AXI_ARVALID;
  wire [31:0]axi_cdma_0_M_AXI_AWADDR;
  wire [1:0]axi_cdma_0_M_AXI_AWBURST;
  wire [3:0]axi_cdma_0_M_AXI_AWCACHE;
  wire [7:0]axi_cdma_0_M_AXI_AWLEN;
  wire [2:0]axi_cdma_0_M_AXI_AWPROT;
  wire [0:0]axi_cdma_0_M_AXI_AWREADY;
  wire [2:0]axi_cdma_0_M_AXI_AWSIZE;
  wire axi_cdma_0_M_AXI_AWVALID;
  wire axi_cdma_0_M_AXI_BREADY;
  wire [1:0]axi_cdma_0_M_AXI_BRESP;
  wire [0:0]axi_cdma_0_M_AXI_BVALID;
  wire [31:0]axi_cdma_0_M_AXI_RDATA;
  wire [0:0]axi_cdma_0_M_AXI_RLAST;
  wire axi_cdma_0_M_AXI_RREADY;
  wire [1:0]axi_cdma_0_M_AXI_RRESP;
  wire [0:0]axi_cdma_0_M_AXI_RVALID;
  wire [31:0]axi_cdma_0_M_AXI_WDATA;
  wire axi_cdma_0_M_AXI_WLAST;
  wire [0:0]axi_cdma_0_M_AXI_WREADY;
  wire [3:0]axi_cdma_0_M_AXI_WSTRB;
  wire axi_cdma_0_M_AXI_WVALID;
  wire axi_cdma_0_cdma_introut;
  wire [31:0]axi_cdma_1_M_AXI_ARADDR;
  wire [1:0]axi_cdma_1_M_AXI_ARBURST;
  wire [3:0]axi_cdma_1_M_AXI_ARCACHE;
  wire [7:0]axi_cdma_1_M_AXI_ARLEN;
  wire [2:0]axi_cdma_1_M_AXI_ARPROT;
  wire [0:0]axi_cdma_1_M_AXI_ARREADY;
  wire [2:0]axi_cdma_1_M_AXI_ARSIZE;
  wire axi_cdma_1_M_AXI_ARVALID;
  wire [31:0]axi_cdma_1_M_AXI_AWADDR;
  wire [1:0]axi_cdma_1_M_AXI_AWBURST;
  wire [3:0]axi_cdma_1_M_AXI_AWCACHE;
  wire [7:0]axi_cdma_1_M_AXI_AWLEN;
  wire [2:0]axi_cdma_1_M_AXI_AWPROT;
  wire [0:0]axi_cdma_1_M_AXI_AWREADY;
  wire [2:0]axi_cdma_1_M_AXI_AWSIZE;
  wire axi_cdma_1_M_AXI_AWVALID;
  wire axi_cdma_1_M_AXI_BREADY;
  wire [1:0]axi_cdma_1_M_AXI_BRESP;
  wire [0:0]axi_cdma_1_M_AXI_BVALID;
  wire [511:0]axi_cdma_1_M_AXI_RDATA;
  wire [0:0]axi_cdma_1_M_AXI_RLAST;
  wire axi_cdma_1_M_AXI_RREADY;
  wire [1:0]axi_cdma_1_M_AXI_RRESP;
  wire [0:0]axi_cdma_1_M_AXI_RVALID;
  wire [511:0]axi_cdma_1_M_AXI_WDATA;
  wire axi_cdma_1_M_AXI_WLAST;
  wire [0:0]axi_cdma_1_M_AXI_WREADY;
  wire [63:0]axi_cdma_1_M_AXI_WSTRB;
  wire axi_cdma_1_M_AXI_WVALID;
  wire axi_cdma_1_cdma_introut;
  wire [31:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_ARCACHE;
  wire [7:0]axi_crossbar_0_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_ARPROT;
  wire [3:0]axi_crossbar_0_M00_AXI_ARQOS;
  wire [0:0]axi_crossbar_0_M00_AXI_ARREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_ARREGION;
  wire [2:0]axi_crossbar_0_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_AWCACHE;
  wire [7:0]axi_crossbar_0_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_AWPROT;
  wire [3:0]axi_crossbar_0_M00_AXI_AWQOS;
  wire [0:0]axi_crossbar_0_M00_AXI_AWREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_AWREGION;
  wire [2:0]axi_crossbar_0_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire [0:0]axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire [0:0]axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_WLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_ARADDR;
  wire [3:2]axi_crossbar_0_M01_AXI_ARBURST;
  wire [7:4]axi_crossbar_0_M01_AXI_ARCACHE;
  wire [15:8]axi_crossbar_0_M01_AXI_ARLEN;
  wire [1:1]axi_crossbar_0_M01_AXI_ARLOCK;
  wire [5:3]axi_crossbar_0_M01_AXI_ARPROT;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [5:3]axi_crossbar_0_M01_AXI_ARSIZE;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_AWADDR;
  wire [3:2]axi_crossbar_0_M01_AXI_AWBURST;
  wire [7:4]axi_crossbar_0_M01_AXI_AWCACHE;
  wire [15:8]axi_crossbar_0_M01_AXI_AWLEN;
  wire [1:1]axi_crossbar_0_M01_AXI_AWLOCK;
  wire [5:3]axi_crossbar_0_M01_AXI_AWPROT;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [5:3]axi_crossbar_0_M01_AXI_AWSIZE;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire axi_crossbar_0_M01_AXI_RLAST;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_WLAST;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_ARADDR;
  wire [5:4]axi_crossbar_0_M02_AXI_ARBURST;
  wire [11:8]axi_crossbar_0_M02_AXI_ARCACHE;
  wire [23:16]axi_crossbar_0_M02_AXI_ARLEN;
  wire [2:2]axi_crossbar_0_M02_AXI_ARLOCK;
  wire [8:6]axi_crossbar_0_M02_AXI_ARPROT;
  wire axi_crossbar_0_M02_AXI_ARREADY;
  wire [8:6]axi_crossbar_0_M02_AXI_ARSIZE;
  wire [2:2]axi_crossbar_0_M02_AXI_ARVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_AWADDR;
  wire [5:4]axi_crossbar_0_M02_AXI_AWBURST;
  wire [11:8]axi_crossbar_0_M02_AXI_AWCACHE;
  wire [23:16]axi_crossbar_0_M02_AXI_AWLEN;
  wire [2:2]axi_crossbar_0_M02_AXI_AWLOCK;
  wire [8:6]axi_crossbar_0_M02_AXI_AWPROT;
  wire axi_crossbar_0_M02_AXI_AWREADY;
  wire [8:6]axi_crossbar_0_M02_AXI_AWSIZE;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_BRESP;
  wire axi_crossbar_0_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M02_AXI_RDATA;
  wire axi_crossbar_0_M02_AXI_RLAST;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_RRESP;
  wire axi_crossbar_0_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_WDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_WLAST;
  wire axi_crossbar_0_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_ARADDR;
  wire axi_crossbar_1_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_1_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_AWADDR;
  wire axi_crossbar_1_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_1_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_1_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_BRESP;
  wire axi_crossbar_1_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_1_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M00_AXI_RRESP;
  wire axi_crossbar_1_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_1_M00_AXI_WDATA;
  wire axi_crossbar_1_M00_AXI_WREADY;
  wire [0:0]axi_crossbar_1_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_1_M01_AXI_ARADDR;
  wire axi_crossbar_1_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_1_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_1_M01_AXI_AWADDR;
  wire axi_crossbar_1_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_1_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_1_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M01_AXI_BRESP;
  wire axi_crossbar_1_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_1_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M01_AXI_RRESP;
  wire axi_crossbar_1_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_1_M01_AXI_WDATA;
  wire axi_crossbar_1_M01_AXI_WREADY;
  wire [1:1]axi_crossbar_1_M01_AXI_WVALID;
  wire [95:64]axi_crossbar_1_M02_AXI_ARADDR;
  wire axi_crossbar_1_M02_AXI_ARREADY;
  wire [2:2]axi_crossbar_1_M02_AXI_ARVALID;
  wire [95:64]axi_crossbar_1_M02_AXI_AWADDR;
  wire axi_crossbar_1_M02_AXI_AWREADY;
  wire [2:2]axi_crossbar_1_M02_AXI_AWVALID;
  wire [2:2]axi_crossbar_1_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M02_AXI_BRESP;
  wire axi_crossbar_1_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M02_AXI_RDATA;
  wire [2:2]axi_crossbar_1_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M02_AXI_RRESP;
  wire axi_crossbar_1_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_1_M02_AXI_WDATA;
  wire axi_crossbar_1_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_1_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_1_M02_AXI_WVALID;
  wire [127:96]axi_crossbar_1_M03_AXI_ARADDR;
  wire axi_crossbar_1_M03_AXI_ARREADY;
  wire [3:3]axi_crossbar_1_M03_AXI_ARVALID;
  wire [127:96]axi_crossbar_1_M03_AXI_AWADDR;
  wire axi_crossbar_1_M03_AXI_AWREADY;
  wire [3:3]axi_crossbar_1_M03_AXI_AWVALID;
  wire [3:3]axi_crossbar_1_M03_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M03_AXI_BRESP;
  wire axi_crossbar_1_M03_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M03_AXI_RDATA;
  wire [3:3]axi_crossbar_1_M03_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M03_AXI_RRESP;
  wire axi_crossbar_1_M03_AXI_RVALID;
  wire [127:96]axi_crossbar_1_M03_AXI_WDATA;
  wire axi_crossbar_1_M03_AXI_WREADY;
  wire [3:3]axi_crossbar_1_M03_AXI_WVALID;
  wire [159:128]axi_crossbar_1_M04_AXI_ARADDR;
  wire axi_crossbar_1_M04_AXI_ARREADY;
  wire [4:4]axi_crossbar_1_M04_AXI_ARVALID;
  wire [159:128]axi_crossbar_1_M04_AXI_AWADDR;
  wire axi_crossbar_1_M04_AXI_AWREADY;
  wire [4:4]axi_crossbar_1_M04_AXI_AWVALID;
  wire [4:4]axi_crossbar_1_M04_AXI_BREADY;
  wire [1:0]axi_crossbar_1_M04_AXI_BRESP;
  wire axi_crossbar_1_M04_AXI_BVALID;
  wire [31:0]axi_crossbar_1_M04_AXI_RDATA;
  wire [4:4]axi_crossbar_1_M04_AXI_RREADY;
  wire [1:0]axi_crossbar_1_M04_AXI_RRESP;
  wire axi_crossbar_1_M04_AXI_RVALID;
  wire [159:128]axi_crossbar_1_M04_AXI_WDATA;
  wire axi_crossbar_1_M04_AXI_WREADY;
  wire [4:4]axi_crossbar_1_M04_AXI_WVALID;
  wire [31:0]axi_crossbar_2_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_2_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_2_M00_AXI_ARCACHE;
  wire [7:0]axi_crossbar_2_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_2_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_2_M00_AXI_ARPROT;
  wire axi_crossbar_2_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_2_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_2_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_2_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_2_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_2_M00_AXI_AWCACHE;
  wire [7:0]axi_crossbar_2_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_2_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_2_M00_AXI_AWPROT;
  wire axi_crossbar_2_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_2_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_2_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_2_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_2_M00_AXI_BRESP;
  wire axi_crossbar_2_M00_AXI_BVALID;
  wire [511:0]axi_crossbar_2_M00_AXI_RDATA;
  wire axi_crossbar_2_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_2_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_2_M00_AXI_RRESP;
  wire axi_crossbar_2_M00_AXI_RVALID;
  wire [511:0]axi_crossbar_2_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_2_M00_AXI_WLAST;
  wire axi_crossbar_2_M00_AXI_WREADY;
  wire [63:0]axi_crossbar_2_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_2_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_2_M01_AXI_ARADDR;
  wire [3:2]axi_crossbar_2_M01_AXI_ARBURST;
  wire [7:4]axi_crossbar_2_M01_AXI_ARCACHE;
  wire [15:8]axi_crossbar_2_M01_AXI_ARLEN;
  wire [1:1]axi_crossbar_2_M01_AXI_ARLOCK;
  wire [5:3]axi_crossbar_2_M01_AXI_ARPROT;
  wire axi_crossbar_2_M01_AXI_ARREADY;
  wire [5:3]axi_crossbar_2_M01_AXI_ARSIZE;
  wire [1:1]axi_crossbar_2_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_2_M01_AXI_AWADDR;
  wire [3:2]axi_crossbar_2_M01_AXI_AWBURST;
  wire [7:4]axi_crossbar_2_M01_AXI_AWCACHE;
  wire [15:8]axi_crossbar_2_M01_AXI_AWLEN;
  wire [1:1]axi_crossbar_2_M01_AXI_AWLOCK;
  wire [5:3]axi_crossbar_2_M01_AXI_AWPROT;
  wire axi_crossbar_2_M01_AXI_AWREADY;
  wire [5:3]axi_crossbar_2_M01_AXI_AWSIZE;
  wire [1:1]axi_crossbar_2_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_2_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_2_M01_AXI_BRESP;
  wire axi_crossbar_2_M01_AXI_BVALID;
  wire [511:0]axi_crossbar_2_M01_AXI_RDATA;
  wire axi_crossbar_2_M01_AXI_RLAST;
  wire [1:1]axi_crossbar_2_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_2_M01_AXI_RRESP;
  wire axi_crossbar_2_M01_AXI_RVALID;
  wire [1023:512]axi_crossbar_2_M01_AXI_WDATA;
  wire [1:1]axi_crossbar_2_M01_AXI_WLAST;
  wire axi_crossbar_2_M01_AXI_WREADY;
  wire [127:64]axi_crossbar_2_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_2_M01_AXI_WVALID;
  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_0_M_AXIS_MM2S_TKEEP;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire axi_dma_0_mm2s_introut;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire clk_1;
  wire partialsumsTop_wrapp_0_done;
  wire registers_0_accumulate;
  wire [10:0]registers_0_activations_addr_start;
  wire [5:0]registers_0_batch;
  wire registers_0_interrupt_en;
  wire [4:0]registers_0_last_col;
  wire [4:0]registers_0_last_row;
  wire [10:0]registers_0_partialsums_addr_start;
  wire registers_0_systolic_start;
  wire registers_0_weight_transfer;
  wire resetn_1;
  wire [511:0]systolic_array_wrapp_0_partialsum_out;
  wire [31:0]systolic_array_wrapp_0_partialsum_out_valid;
  wire [3:0]xlconcat_0_dout;
  wire [19:0]NLW_axi_crossbar_1_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = axi_crossbar_0_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = axi_crossbar_0_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = axi_crossbar_0_M00_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = axi_crossbar_0_M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = axi_crossbar_0_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = axi_crossbar_0_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = axi_crossbar_0_M00_AXI_ARQOS;
  assign M00_AXI_arregion[3:0] = axi_crossbar_0_M00_AXI_ARREGION;
  assign M00_AXI_arsize[2:0] = axi_crossbar_0_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid[0] = axi_crossbar_0_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = axi_crossbar_0_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = axi_crossbar_0_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = axi_crossbar_0_M00_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = axi_crossbar_0_M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = axi_crossbar_0_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = axi_crossbar_0_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = axi_crossbar_0_M00_AXI_AWQOS;
  assign M00_AXI_awregion[3:0] = axi_crossbar_0_M00_AXI_AWREGION;
  assign M00_AXI_awsize[2:0] = axi_crossbar_0_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid[0] = axi_crossbar_0_M00_AXI_AWVALID;
  assign M00_AXI_bready[0] = axi_crossbar_0_M00_AXI_BREADY;
  assign M00_AXI_rready[0] = axi_crossbar_0_M00_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = axi_crossbar_0_M00_AXI_WDATA;
  assign M00_AXI_wlast[0] = axi_crossbar_0_M00_AXI_WLAST;
  assign M00_AXI_wstrb[3:0] = axi_crossbar_0_M00_AXI_WSTRB;
  assign M00_AXI_wvalid[0] = axi_crossbar_0_M00_AXI_WVALID;
  assign S00_AXI_0_1_ARADDR = S_AXI_LITE_araddr[31:0];
  assign S00_AXI_0_1_ARPROT = S_AXI_LITE_arprot[2:0];
  assign S00_AXI_0_1_ARVALID = S_AXI_LITE_arvalid[0];
  assign S00_AXI_0_1_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign S00_AXI_0_1_AWPROT = S_AXI_LITE_awprot[2:0];
  assign S00_AXI_0_1_AWVALID = S_AXI_LITE_awvalid[0];
  assign S00_AXI_0_1_BREADY = S_AXI_LITE_bready[0];
  assign S00_AXI_0_1_RREADY = S_AXI_LITE_rready[0];
  assign S00_AXI_0_1_WDATA = S_AXI_LITE_wdata[31:0];
  assign S00_AXI_0_1_WSTRB = S_AXI_LITE_wstrb[3:0];
  assign S00_AXI_0_1_WVALID = S_AXI_LITE_wvalid[0];
  assign S_AXI_LITE_arready[0] = S00_AXI_0_1_ARREADY;
  assign S_AXI_LITE_awready[0] = S00_AXI_0_1_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = S00_AXI_0_1_BRESP;
  assign S_AXI_LITE_bvalid[0] = S00_AXI_0_1_BVALID;
  assign S_AXI_LITE_rdata[31:0] = S00_AXI_0_1_RDATA;
  assign S_AXI_LITE_rresp[1:0] = S00_AXI_0_1_RRESP;
  assign S_AXI_LITE_rvalid[0] = S00_AXI_0_1_RVALID;
  assign S_AXI_LITE_wready[0] = S00_AXI_0_1_WREADY;
  assign axi_crossbar_0_M00_AXI_ARREADY = M00_AXI_arready[0];
  assign axi_crossbar_0_M00_AXI_AWREADY = M00_AXI_awready[0];
  assign axi_crossbar_0_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign axi_crossbar_0_M00_AXI_BVALID = M00_AXI_bvalid[0];
  assign axi_crossbar_0_M00_AXI_RDATA = M00_AXI_rdata[31:0];
  assign axi_crossbar_0_M00_AXI_RLAST = M00_AXI_rlast[0];
  assign axi_crossbar_0_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign axi_crossbar_0_M00_AXI_RVALID = M00_AXI_rvalid[0];
  assign axi_crossbar_0_M00_AXI_WREADY = M00_AXI_wready[0];
  assign clk_1 = clk;
  assign interrupt_0_interrupt = axi_intc_0_interrupt_INTERRUPT;
  assign resetn_1 = resetn;
  bnnTop_activationsTop_wrapp_0_0 activationsTop_wrapp_0
       (.activation_in(activationsTop_wrapp_0_activation_in),
        .activation_in_valid(activationsTop_wrapp_0_activation_in_valid),
        .addr_start(registers_0_activations_addr_start),
        .batch(registers_0_batch),
        .clk(clk_1),
        .last_row(registers_0_last_row),
        .resetn(resetn_1),
        .s_addra(axi_bram_ctrl_2_BRAM_PORTA_ADDR),
        .s_addrb(axi_bram_ctrl_4_BRAM_PORTA_ADDR),
        .s_clka(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .s_clkb(axi_bram_ctrl_4_BRAM_PORTA_CLK),
        .s_dina(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .s_dinb(axi_bram_ctrl_4_BRAM_PORTA_DIN),
        .s_douta(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .s_ena(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .s_enb(axi_bram_ctrl_4_BRAM_PORTA_EN),
        .s_rsta(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .s_rstb(axi_bram_ctrl_4_BRAM_PORTA_RST),
        .s_wea(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .s_web(axi_bram_ctrl_4_BRAM_PORTA_WE),
        .start(registers_0_systolic_start));
  bnnTop_axi_apb_bridge_0_0 axi_apb_bridge_0
       (.m_apb_paddr(axi_apb_bridge_0_APB_M_PADDR),
        .m_apb_penable(axi_apb_bridge_0_APB_M_PENABLE),
        .m_apb_prdata(axi_apb_bridge_0_APB_M_PRDATA),
        .m_apb_pready(axi_apb_bridge_0_APB_M_PREADY),
        .m_apb_psel(axi_apb_bridge_0_APB_M_PSEL),
        .m_apb_pslverr(axi_apb_bridge_0_APB_M_PSLVERR),
        .m_apb_pwdata(axi_apb_bridge_0_APB_M_PWDATA),
        .m_apb_pwrite(axi_apb_bridge_0_APB_M_PWRITE),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_crossbar_1_M03_AXI_ARADDR),
        .s_axi_aresetn(resetn_1),
        .s_axi_arready(axi_crossbar_1_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_1_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M03_AXI_AWADDR),
        .s_axi_awready(axi_crossbar_1_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_1_M03_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_1_M03_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M03_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M03_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M03_AXI_RDATA),
        .s_axi_rready(axi_crossbar_1_M03_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M03_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M03_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M03_AXI_WDATA),
        .s_axi_wready(axi_crossbar_1_M03_AXI_WREADY),
        .s_axi_wvalid(axi_crossbar_1_M03_AXI_WVALID));
  bnnTop_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR[45:32]),
        .s_axi_arburst(axi_crossbar_0_M01_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M01_AXI_ARCACHE),
        .s_axi_aresetn(resetn_1),
        .s_axi_arlen(axi_crossbar_0_M01_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M01_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M01_AXI_AWADDR[45:32]),
        .s_axi_awburst(axi_crossbar_0_M01_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M01_AXI_AWCACHE),
        .s_axi_awlen(axi_crossbar_0_M01_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M01_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axi_rlast(axi_crossbar_0_M01_AXI_RLAST),
        .s_axi_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_0_M01_AXI_WLAST),
        .s_axi_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M01_AXI_WVALID));
  bnnTop_axi_bram_ctrl_1_1 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_dma_0_M_AXI_MM2S_ARADDR[13:0]),
        .s_axi_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .s_axi_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .s_axi_aresetn(resetn_1),
        .s_axi_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .s_axi_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .s_axi_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .s_axi_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .s_axi_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .s_axi_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .s_axi_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .s_axi_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0));
  bnnTop_axi_bram_ctrl_2_0 axi_bram_ctrl_2
       (.bram_addr_a(axi_bram_ctrl_2_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_crossbar_0_M02_AXI_ARADDR[80:64]),
        .s_axi_arburst(axi_crossbar_0_M02_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M02_AXI_ARCACHE),
        .s_axi_aresetn(resetn_1),
        .s_axi_arlen(axi_crossbar_0_M02_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M02_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_0_M02_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_0_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M02_AXI_AWADDR[80:64]),
        .s_axi_awburst(axi_crossbar_0_M02_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M02_AXI_AWCACHE),
        .s_axi_awlen(axi_crossbar_0_M02_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M02_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_0_M02_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_0_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M02_AXI_RDATA),
        .s_axi_rlast(axi_crossbar_0_M02_AXI_RLAST),
        .s_axi_rready(axi_crossbar_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M02_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_0_M02_AXI_WLAST),
        .s_axi_wready(axi_crossbar_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M02_AXI_WVALID));
  bnnTop_axi_bram_ctrl_3_0 axi_bram_ctrl_3
       (.bram_addr_a(axi_bram_ctrl_3_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_crossbar_2_M00_AXI_ARADDR[16:0]),
        .s_axi_arburst(axi_crossbar_2_M00_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_2_M00_AXI_ARCACHE),
        .s_axi_aresetn(resetn_1),
        .s_axi_arlen(axi_crossbar_2_M00_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_2_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_2_M00_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_2_M00_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_2_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_2_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_2_M00_AXI_AWADDR[16:0]),
        .s_axi_awburst(axi_crossbar_2_M00_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_2_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_crossbar_2_M00_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_2_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_2_M00_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_2_M00_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_2_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_2_M00_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_2_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_2_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_2_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_2_M00_AXI_RDATA),
        .s_axi_rlast(axi_crossbar_2_M00_AXI_RLAST),
        .s_axi_rready(axi_crossbar_2_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_2_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_2_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_2_M00_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_2_M00_AXI_WLAST),
        .s_axi_wready(axi_crossbar_2_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_2_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_2_M00_AXI_WVALID));
  bnnTop_axi_bram_ctrl_4_0 axi_bram_ctrl_4
       (.bram_addr_a(axi_bram_ctrl_4_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_4_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_4_BRAM_PORTA_EN),
        .bram_rddata_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .bram_rst_a(axi_bram_ctrl_4_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_4_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_4_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_crossbar_2_M01_AXI_ARADDR[48:32]),
        .s_axi_arburst(axi_crossbar_2_M01_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_2_M01_AXI_ARCACHE),
        .s_axi_aresetn(resetn_1),
        .s_axi_arlen(axi_crossbar_2_M01_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_2_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_2_M01_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_2_M01_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_2_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_2_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_2_M01_AXI_AWADDR[48:32]),
        .s_axi_awburst(axi_crossbar_2_M01_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_2_M01_AXI_AWCACHE),
        .s_axi_awlen(axi_crossbar_2_M01_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_2_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_2_M01_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_2_M01_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_2_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_2_M01_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_2_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_2_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_2_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_2_M01_AXI_RDATA),
        .s_axi_rlast(axi_crossbar_2_M01_AXI_RLAST),
        .s_axi_rready(axi_crossbar_2_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_2_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_2_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_2_M01_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_2_M01_AXI_WLAST),
        .s_axi_wready(axi_crossbar_2_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_2_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_2_M01_AXI_WVALID));
  bnnTop_axi_cdma_0_1 axi_cdma_0
       (.cdma_introut(axi_cdma_0_cdma_introut),
        .m_axi_aclk(clk_1),
        .m_axi_araddr(axi_cdma_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdma_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdma_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_cdma_0_M_AXI_ARLEN),
        .m_axi_arprot(axi_cdma_0_M_AXI_ARPROT),
        .m_axi_arready(axi_cdma_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_cdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdma_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdma_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdma_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_cdma_0_M_AXI_AWLEN),
        .m_axi_awprot(axi_cdma_0_M_AXI_AWPROT),
        .m_axi_awready(axi_cdma_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_cdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdma_0_M_AXI_AWVALID),
        .m_axi_bready(axi_cdma_0_M_AXI_BREADY),
        .m_axi_bresp(axi_cdma_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdma_0_M_AXI_BVALID),
        .m_axi_rdata(axi_cdma_0_M_AXI_RDATA),
        .m_axi_rlast(axi_cdma_0_M_AXI_RLAST),
        .m_axi_rready(axi_cdma_0_M_AXI_RREADY),
        .m_axi_rresp(axi_cdma_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdma_0_M_AXI_RVALID),
        .m_axi_wdata(axi_cdma_0_M_AXI_WDATA),
        .m_axi_wlast(axi_cdma_0_M_AXI_WLAST),
        .m_axi_wready(axi_cdma_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdma_0_M_AXI_WVALID),
        .s_axi_lite_aclk(clk_1),
        .s_axi_lite_araddr(axi_crossbar_1_M01_AXI_ARADDR[37:32]),
        .s_axi_lite_aresetn(resetn_1),
        .s_axi_lite_arready(axi_crossbar_1_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_crossbar_1_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_crossbar_1_M01_AXI_AWADDR[37:32]),
        .s_axi_lite_awready(axi_crossbar_1_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_crossbar_1_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_crossbar_1_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_crossbar_1_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_crossbar_1_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_crossbar_1_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_crossbar_1_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_crossbar_1_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_crossbar_1_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_crossbar_1_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_crossbar_1_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_crossbar_1_M01_AXI_WVALID));
  bnnTop_axi_cdma_1_0 axi_cdma_1
       (.cdma_introut(axi_cdma_1_cdma_introut),
        .m_axi_aclk(clk_1),
        .m_axi_araddr(axi_cdma_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdma_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdma_1_M_AXI_ARCACHE),
        .m_axi_arlen(axi_cdma_1_M_AXI_ARLEN),
        .m_axi_arprot(axi_cdma_1_M_AXI_ARPROT),
        .m_axi_arready(axi_cdma_1_M_AXI_ARREADY),
        .m_axi_arsize(axi_cdma_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdma_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdma_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdma_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdma_1_M_AXI_AWCACHE),
        .m_axi_awlen(axi_cdma_1_M_AXI_AWLEN),
        .m_axi_awprot(axi_cdma_1_M_AXI_AWPROT),
        .m_axi_awready(axi_cdma_1_M_AXI_AWREADY),
        .m_axi_awsize(axi_cdma_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdma_1_M_AXI_AWVALID),
        .m_axi_bready(axi_cdma_1_M_AXI_BREADY),
        .m_axi_bresp(axi_cdma_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdma_1_M_AXI_BVALID),
        .m_axi_rdata(axi_cdma_1_M_AXI_RDATA),
        .m_axi_rlast(axi_cdma_1_M_AXI_RLAST),
        .m_axi_rready(axi_cdma_1_M_AXI_RREADY),
        .m_axi_rresp(axi_cdma_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdma_1_M_AXI_RVALID),
        .m_axi_wdata(axi_cdma_1_M_AXI_WDATA),
        .m_axi_wlast(axi_cdma_1_M_AXI_WLAST),
        .m_axi_wready(axi_cdma_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdma_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdma_1_M_AXI_WVALID),
        .s_axi_lite_aclk(clk_1),
        .s_axi_lite_araddr(axi_crossbar_1_M04_AXI_ARADDR[133:128]),
        .s_axi_lite_aresetn(resetn_1),
        .s_axi_lite_arready(axi_crossbar_1_M04_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_crossbar_1_M04_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_crossbar_1_M04_AXI_AWADDR[133:128]),
        .s_axi_lite_awready(axi_crossbar_1_M04_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_crossbar_1_M04_AXI_AWVALID),
        .s_axi_lite_bready(axi_crossbar_1_M04_AXI_BREADY),
        .s_axi_lite_bresp(axi_crossbar_1_M04_AXI_BRESP),
        .s_axi_lite_bvalid(axi_crossbar_1_M04_AXI_BVALID),
        .s_axi_lite_rdata(axi_crossbar_1_M04_AXI_RDATA),
        .s_axi_lite_rready(axi_crossbar_1_M04_AXI_RREADY),
        .s_axi_lite_rresp(axi_crossbar_1_M04_AXI_RRESP),
        .s_axi_lite_rvalid(axi_crossbar_1_M04_AXI_RVALID),
        .s_axi_lite_wdata(axi_crossbar_1_M04_AXI_WDATA),
        .s_axi_lite_wready(axi_crossbar_1_M04_AXI_WREADY),
        .s_axi_lite_wvalid(axi_crossbar_1_M04_AXI_WVALID));
  bnnTop_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_axi_araddr({axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_0_M02_AXI_ARBURST,axi_crossbar_0_M01_AXI_ARBURST,axi_crossbar_0_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_0_M02_AXI_ARCACHE,axi_crossbar_0_M01_AXI_ARCACHE,axi_crossbar_0_M00_AXI_ARCACHE}),
        .m_axi_arlen({axi_crossbar_0_M02_AXI_ARLEN,axi_crossbar_0_M01_AXI_ARLEN,axi_crossbar_0_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_0_M02_AXI_ARLOCK,axi_crossbar_0_M01_AXI_ARLOCK,axi_crossbar_0_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_0_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,axi_crossbar_0_M00_AXI_ARPROT}),
        .m_axi_arqos(axi_crossbar_0_M00_AXI_ARQOS),
        .m_axi_arready({axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arregion(axi_crossbar_0_M00_AXI_ARREGION),
        .m_axi_arsize({axi_crossbar_0_M02_AXI_ARSIZE,axi_crossbar_0_M01_AXI_ARSIZE,axi_crossbar_0_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_0_M02_AXI_AWBURST,axi_crossbar_0_M01_AXI_AWBURST,axi_crossbar_0_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_0_M02_AXI_AWCACHE,axi_crossbar_0_M01_AXI_AWCACHE,axi_crossbar_0_M00_AXI_AWCACHE}),
        .m_axi_awlen({axi_crossbar_0_M02_AXI_AWLEN,axi_crossbar_0_M01_AXI_AWLEN,axi_crossbar_0_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_0_M02_AXI_AWLOCK,axi_crossbar_0_M01_AXI_AWLOCK,axi_crossbar_0_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_0_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,axi_crossbar_0_M00_AXI_AWPROT}),
        .m_axi_awqos(axi_crossbar_0_M00_AXI_AWQOS),
        .m_axi_awready({axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awregion(axi_crossbar_0_M00_AXI_AWREGION),
        .m_axi_awsize({axi_crossbar_0_M02_AXI_AWSIZE,axi_crossbar_0_M01_AXI_AWSIZE,axi_crossbar_0_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rlast({axi_crossbar_0_M02_AXI_RLAST,axi_crossbar_0_M01_AXI_RLAST,axi_crossbar_0_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_0_M02_AXI_WLAST,axi_crossbar_0_M01_AXI_WLAST,axi_crossbar_0_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr(axi_cdma_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_cdma_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_cdma_0_M_AXI_ARCACHE),
        .s_axi_arlen(axi_cdma_0_M_AXI_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(axi_cdma_0_M_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(axi_cdma_0_M_AXI_ARREADY),
        .s_axi_arsize(axi_cdma_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_cdma_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_cdma_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_cdma_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_cdma_0_M_AXI_AWCACHE),
        .s_axi_awlen(axi_cdma_0_M_AXI_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(axi_cdma_0_M_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_cdma_0_M_AXI_AWREADY),
        .s_axi_awsize(axi_cdma_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_cdma_0_M_AXI_AWVALID),
        .s_axi_bready(axi_cdma_0_M_AXI_BREADY),
        .s_axi_bresp(axi_cdma_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_cdma_0_M_AXI_BVALID),
        .s_axi_rdata(axi_cdma_0_M_AXI_RDATA),
        .s_axi_rlast(axi_cdma_0_M_AXI_RLAST),
        .s_axi_rready(axi_cdma_0_M_AXI_RREADY),
        .s_axi_rresp(axi_cdma_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_cdma_0_M_AXI_RVALID),
        .s_axi_wdata(axi_cdma_0_M_AXI_WDATA),
        .s_axi_wlast(axi_cdma_0_M_AXI_WLAST),
        .s_axi_wready(axi_cdma_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_cdma_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_cdma_0_M_AXI_WVALID));
  bnnTop_axi_crossbar_1_0 axi_crossbar_1
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_axi_araddr({axi_crossbar_1_M04_AXI_ARADDR,axi_crossbar_1_M03_AXI_ARADDR,axi_crossbar_1_M02_AXI_ARADDR,axi_crossbar_1_M01_AXI_ARADDR,axi_crossbar_1_M00_AXI_ARADDR}),
        .m_axi_arready({axi_crossbar_1_M04_AXI_ARREADY,axi_crossbar_1_M03_AXI_ARREADY,axi_crossbar_1_M02_AXI_ARREADY,axi_crossbar_1_M01_AXI_ARREADY,axi_crossbar_1_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_1_M04_AXI_ARVALID,axi_crossbar_1_M03_AXI_ARVALID,axi_crossbar_1_M02_AXI_ARVALID,axi_crossbar_1_M01_AXI_ARVALID,axi_crossbar_1_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_1_M04_AXI_AWADDR,axi_crossbar_1_M03_AXI_AWADDR,axi_crossbar_1_M02_AXI_AWADDR,axi_crossbar_1_M01_AXI_AWADDR,axi_crossbar_1_M00_AXI_AWADDR}),
        .m_axi_awready({axi_crossbar_1_M04_AXI_AWREADY,axi_crossbar_1_M03_AXI_AWREADY,axi_crossbar_1_M02_AXI_AWREADY,axi_crossbar_1_M01_AXI_AWREADY,axi_crossbar_1_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_1_M04_AXI_AWVALID,axi_crossbar_1_M03_AXI_AWVALID,axi_crossbar_1_M02_AXI_AWVALID,axi_crossbar_1_M01_AXI_AWVALID,axi_crossbar_1_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_1_M04_AXI_BREADY,axi_crossbar_1_M03_AXI_BREADY,axi_crossbar_1_M02_AXI_BREADY,axi_crossbar_1_M01_AXI_BREADY,axi_crossbar_1_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_1_M04_AXI_BRESP,axi_crossbar_1_M03_AXI_BRESP,axi_crossbar_1_M02_AXI_BRESP,axi_crossbar_1_M01_AXI_BRESP,axi_crossbar_1_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_1_M04_AXI_BVALID,axi_crossbar_1_M03_AXI_BVALID,axi_crossbar_1_M02_AXI_BVALID,axi_crossbar_1_M01_AXI_BVALID,axi_crossbar_1_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_1_M04_AXI_RDATA,axi_crossbar_1_M03_AXI_RDATA,axi_crossbar_1_M02_AXI_RDATA,axi_crossbar_1_M01_AXI_RDATA,axi_crossbar_1_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_1_M04_AXI_RREADY,axi_crossbar_1_M03_AXI_RREADY,axi_crossbar_1_M02_AXI_RREADY,axi_crossbar_1_M01_AXI_RREADY,axi_crossbar_1_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_1_M04_AXI_RRESP,axi_crossbar_1_M03_AXI_RRESP,axi_crossbar_1_M02_AXI_RRESP,axi_crossbar_1_M01_AXI_RRESP,axi_crossbar_1_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_1_M04_AXI_RVALID,axi_crossbar_1_M03_AXI_RVALID,axi_crossbar_1_M02_AXI_RVALID,axi_crossbar_1_M01_AXI_RVALID,axi_crossbar_1_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_1_M04_AXI_WDATA,axi_crossbar_1_M03_AXI_WDATA,axi_crossbar_1_M02_AXI_WDATA,axi_crossbar_1_M01_AXI_WDATA,axi_crossbar_1_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_1_M04_AXI_WREADY,axi_crossbar_1_M03_AXI_WREADY,axi_crossbar_1_M02_AXI_WREADY,axi_crossbar_1_M01_AXI_WREADY,axi_crossbar_1_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_1_M02_AXI_WSTRB,NLW_axi_crossbar_1_m_axi_wstrb_UNCONNECTED[7:0]}),
        .m_axi_wvalid({axi_crossbar_1_M04_AXI_WVALID,axi_crossbar_1_M03_AXI_WVALID,axi_crossbar_1_M02_AXI_WVALID,axi_crossbar_1_M01_AXI_WVALID,axi_crossbar_1_M00_AXI_WVALID}),
        .s_axi_araddr(S00_AXI_0_1_ARADDR),
        .s_axi_arprot(S00_AXI_0_1_ARPROT),
        .s_axi_arready(S00_AXI_0_1_ARREADY),
        .s_axi_arvalid(S00_AXI_0_1_ARVALID),
        .s_axi_awaddr(S00_AXI_0_1_AWADDR),
        .s_axi_awprot(S00_AXI_0_1_AWPROT),
        .s_axi_awready(S00_AXI_0_1_AWREADY),
        .s_axi_awvalid(S00_AXI_0_1_AWVALID),
        .s_axi_bready(S00_AXI_0_1_BREADY),
        .s_axi_bresp(S00_AXI_0_1_BRESP),
        .s_axi_bvalid(S00_AXI_0_1_BVALID),
        .s_axi_rdata(S00_AXI_0_1_RDATA),
        .s_axi_rready(S00_AXI_0_1_RREADY),
        .s_axi_rresp(S00_AXI_0_1_RRESP),
        .s_axi_rvalid(S00_AXI_0_1_RVALID),
        .s_axi_wdata(S00_AXI_0_1_WDATA),
        .s_axi_wready(S00_AXI_0_1_WREADY),
        .s_axi_wstrb(S00_AXI_0_1_WSTRB),
        .s_axi_wvalid(S00_AXI_0_1_WVALID));
  bnnTop_axi_crossbar_2_0 axi_crossbar_2
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_axi_araddr({axi_crossbar_2_M01_AXI_ARADDR,axi_crossbar_2_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_2_M01_AXI_ARBURST,axi_crossbar_2_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_2_M01_AXI_ARCACHE,axi_crossbar_2_M00_AXI_ARCACHE}),
        .m_axi_arlen({axi_crossbar_2_M01_AXI_ARLEN,axi_crossbar_2_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_2_M01_AXI_ARLOCK,axi_crossbar_2_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_2_M01_AXI_ARPROT,axi_crossbar_2_M00_AXI_ARPROT}),
        .m_axi_arready({axi_crossbar_2_M01_AXI_ARREADY,axi_crossbar_2_M00_AXI_ARREADY}),
        .m_axi_arsize({axi_crossbar_2_M01_AXI_ARSIZE,axi_crossbar_2_M00_AXI_ARSIZE}),
        .m_axi_arvalid({axi_crossbar_2_M01_AXI_ARVALID,axi_crossbar_2_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_2_M01_AXI_AWADDR,axi_crossbar_2_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_2_M01_AXI_AWBURST,axi_crossbar_2_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_2_M01_AXI_AWCACHE,axi_crossbar_2_M00_AXI_AWCACHE}),
        .m_axi_awlen({axi_crossbar_2_M01_AXI_AWLEN,axi_crossbar_2_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_2_M01_AXI_AWLOCK,axi_crossbar_2_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_2_M01_AXI_AWPROT,axi_crossbar_2_M00_AXI_AWPROT}),
        .m_axi_awready({axi_crossbar_2_M01_AXI_AWREADY,axi_crossbar_2_M00_AXI_AWREADY}),
        .m_axi_awsize({axi_crossbar_2_M01_AXI_AWSIZE,axi_crossbar_2_M00_AXI_AWSIZE}),
        .m_axi_awvalid({axi_crossbar_2_M01_AXI_AWVALID,axi_crossbar_2_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_2_M01_AXI_BREADY,axi_crossbar_2_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_2_M01_AXI_BRESP,axi_crossbar_2_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_2_M01_AXI_BVALID,axi_crossbar_2_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_2_M01_AXI_RDATA,axi_crossbar_2_M00_AXI_RDATA}),
        .m_axi_rlast({axi_crossbar_2_M01_AXI_RLAST,axi_crossbar_2_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_2_M01_AXI_RREADY,axi_crossbar_2_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_2_M01_AXI_RRESP,axi_crossbar_2_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_2_M01_AXI_RVALID,axi_crossbar_2_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_2_M01_AXI_WDATA,axi_crossbar_2_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_2_M01_AXI_WLAST,axi_crossbar_2_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_2_M01_AXI_WREADY,axi_crossbar_2_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_2_M01_AXI_WSTRB,axi_crossbar_2_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_2_M01_AXI_WVALID,axi_crossbar_2_M00_AXI_WVALID}),
        .s_axi_araddr(axi_cdma_1_M_AXI_ARADDR),
        .s_axi_arburst(axi_cdma_1_M_AXI_ARBURST),
        .s_axi_arcache(axi_cdma_1_M_AXI_ARCACHE),
        .s_axi_arlen(axi_cdma_1_M_AXI_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(axi_cdma_1_M_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(axi_cdma_1_M_AXI_ARREADY),
        .s_axi_arsize(axi_cdma_1_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_cdma_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_cdma_1_M_AXI_AWADDR),
        .s_axi_awburst(axi_cdma_1_M_AXI_AWBURST),
        .s_axi_awcache(axi_cdma_1_M_AXI_AWCACHE),
        .s_axi_awlen(axi_cdma_1_M_AXI_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(axi_cdma_1_M_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_cdma_1_M_AXI_AWREADY),
        .s_axi_awsize(axi_cdma_1_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_cdma_1_M_AXI_AWVALID),
        .s_axi_bready(axi_cdma_1_M_AXI_BREADY),
        .s_axi_bresp(axi_cdma_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_cdma_1_M_AXI_BVALID),
        .s_axi_rdata(axi_cdma_1_M_AXI_RDATA),
        .s_axi_rlast(axi_cdma_1_M_AXI_RLAST),
        .s_axi_rready(axi_cdma_1_M_AXI_RREADY),
        .s_axi_rresp(axi_cdma_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_cdma_1_M_AXI_RVALID),
        .s_axi_wdata(axi_cdma_1_M_AXI_WDATA),
        .s_axi_wlast(axi_cdma_1_M_AXI_WLAST),
        .s_axi_wready(axi_cdma_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_cdma_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_cdma_1_M_AXI_WVALID));
  bnnTop_axi_dma_0_0 axi_dma_0
       (.axi_resetn(resetn_1),
        .m_axi_mm2s_aclk(clk_1),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_0_mm2s_introut),
        .s_axi_lite_aclk(clk_1),
        .s_axi_lite_araddr(axi_crossbar_1_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_crossbar_1_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_crossbar_1_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_crossbar_1_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_crossbar_1_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_crossbar_1_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_crossbar_1_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_crossbar_1_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_crossbar_1_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_crossbar_1_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_crossbar_1_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_crossbar_1_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_crossbar_1_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_crossbar_1_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_crossbar_1_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_crossbar_1_M00_AXI_WVALID));
  bnnTop_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(clk_1),
        .s_axi_araddr(axi_crossbar_1_M02_AXI_ARADDR[72:64]),
        .s_axi_aresetn(resetn_1),
        .s_axi_arready(axi_crossbar_1_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_1_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_1_M02_AXI_AWADDR[72:64]),
        .s_axi_awready(axi_crossbar_1_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_1_M02_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_1_M02_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_1_M02_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_1_M02_AXI_RDATA),
        .s_axi_rready(axi_crossbar_1_M02_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_1_M02_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_1_M02_AXI_WDATA),
        .s_axi_wready(axi_crossbar_1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_1_M02_AXI_WVALID));
  bnnTop_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_1_BRAM_PORTA_WE));
  bnnTop_partialsumsTop_wrapp_0_0 partialsumsTop_wrapp_0
       (.accumulate(registers_0_accumulate),
        .address_start(registers_0_partialsums_addr_start),
        .batch(registers_0_batch),
        .clk(clk_1),
        .done(partialsumsTop_wrapp_0_done),
        .interrupt_en(registers_0_interrupt_en),
        .last_col(registers_0_last_col),
        .partialsum_out(systolic_array_wrapp_0_partialsum_out),
        .partialsum_out_valid(systolic_array_wrapp_0_partialsum_out_valid),
        .resetn(resetn_1),
        .s_addr(axi_bram_ctrl_3_BRAM_PORTA_ADDR),
        .s_clk(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .s_dout(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .s_en(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .s_rst(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .start(registers_0_systolic_start));
  bnnTop_registers_0_1 registers_0
       (.accumulate(registers_0_accumulate),
        .activations_addr_start(registers_0_activations_addr_start),
        .batch(registers_0_batch),
        .clk(clk_1),
        .interrupt_en(registers_0_interrupt_en),
        .last_col(registers_0_last_col),
        .last_row(registers_0_last_row),
        .partialsums_addr_start(registers_0_partialsums_addr_start),
        .resetn(resetn_1),
        .s_apb_paddr(axi_apb_bridge_0_APB_M_PADDR),
        .s_apb_penable(axi_apb_bridge_0_APB_M_PENABLE),
        .s_apb_prdata(axi_apb_bridge_0_APB_M_PRDATA),
        .s_apb_pready(axi_apb_bridge_0_APB_M_PREADY),
        .s_apb_psel(axi_apb_bridge_0_APB_M_PSEL),
        .s_apb_pslverr(axi_apb_bridge_0_APB_M_PSLVERR),
        .s_apb_pwdata(axi_apb_bridge_0_APB_M_PWDATA),
        .s_apb_pwrite(axi_apb_bridge_0_APB_M_PWRITE),
        .systolic_start(registers_0_systolic_start),
        .weight_transfer(registers_0_weight_transfer));
  bnnTop_systolic_array_wrapp_0_0 systolic_array_wrapp_0
       (.activation_in(activationsTop_wrapp_0_activation_in),
        .activation_in_valid(activationsTop_wrapp_0_activation_in_valid),
        .clk(clk_1),
        .last_col(registers_0_last_col),
        .last_row(registers_0_last_row),
        .partialsum_out(systolic_array_wrapp_0_partialsum_out),
        .partialsum_out_valid(systolic_array_wrapp_0_partialsum_out_valid),
        .s_axis_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .weight_transfer(registers_0_weight_transfer));
  bnnTop_xlconcat_0_0 xlconcat_0
       (.In0(axi_cdma_0_cdma_introut),
        .In1(axi_dma_0_mm2s_introut),
        .In2(axi_cdma_1_cdma_introut),
        .In3(partialsumsTop_wrapp_0_done),
        .dout(xlconcat_0_dout));
endmodule
