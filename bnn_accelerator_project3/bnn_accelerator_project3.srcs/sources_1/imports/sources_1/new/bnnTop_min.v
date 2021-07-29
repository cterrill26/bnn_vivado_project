`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2021 01:30:09 PM
// Design Name: 
// Module Name: bnnTop_min
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bnnTop_min(
    M00_AXI_araddr,
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
//    M00_AXI_awaddr,
//    M00_AXI_awburst,
//    M00_AXI_awcache,
//    M00_AXI_awlen,
//    M00_AXI_awlock,
//    M00_AXI_awprot,
//    M00_AXI_awqos,
//    M00_AXI_awready,
//    M00_AXI_awregion,
//    M00_AXI_awsize,
//    M00_AXI_awvalid,
//    M00_AXI_bready,
//    M00_AXI_bresp,
//    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
//    M00_AXI_wdata,
//    M00_AXI_wlast,
//    M00_AXI_wready,
//    M00_AXI_wstrb,
//    M00_AXI_wvalid,
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
    output [31:0]M00_AXI_araddr;
    output [1:0]M00_AXI_arburst;
    output [3:0]M00_AXI_arcache;
    output [7:0]M00_AXI_arlen;
    output [0:0]M00_AXI_arlock;
    output [2:0]M00_AXI_arprot;
    output [3:0]M00_AXI_arqos;
    input [0:0]M00_AXI_arready;
    output [3:0]M00_AXI_arregion;
    output [2:0]M00_AXI_arsize;
    output [0:0]M00_AXI_arvalid;
//    output [31:0]M00_AXI_awaddr;
//    output [1:0]M00_AXI_awburst;
//    output [3:0]M00_AXI_awcache;
//    output [7:0]M00_AXI_awlen;
//    output [0:0]M00_AXI_awlock;
//    output [2:0]M00_AXI_awprot;
//    output [3:0]M00_AXI_awqos;
//    input [0:0]M00_AXI_awready;
//    output [3:0]M00_AXI_awregion;
//    output [2:0]M00_AXI_awsize;
//    output [0:0]M00_AXI_awvalid;
//    output [0:0]M00_AXI_bready;
//    input [1:0]M00_AXI_bresp;
//    input [0:0]M00_AXI_bvalid;
    input [31:0]M00_AXI_rdata;
    input [0:0]M00_AXI_rlast;
    output [0:0]M00_AXI_rready;
    input [1:0]M00_AXI_rresp;
    input [0:0]M00_AXI_rvalid;
//    output [31:0]M00_AXI_wdata;
//    output [0:0]M00_AXI_wlast;
//    input [0:0]M00_AXI_wready;
//    output [3:0]M00_AXI_wstrb;
//    output [0:0]M00_AXI_wvalid;
    input [31:0]S_AXI_LITE_araddr;
    input [2:0]S_AXI_LITE_arprot;
    output [0:0]S_AXI_LITE_arready;
    input [0:0]S_AXI_LITE_arvalid;
    input [31:0]S_AXI_LITE_awaddr;
    input [2:0]S_AXI_LITE_awprot;
    output [0:0]S_AXI_LITE_awready;
    input [0:0]S_AXI_LITE_awvalid;
    input [0:0]S_AXI_LITE_bready;
    output [1:0]S_AXI_LITE_bresp;
    output [0:0]S_AXI_LITE_bvalid;
    output [31:0]S_AXI_LITE_rdata;
    input [0:0]S_AXI_LITE_rready;
    output [1:0]S_AXI_LITE_rresp;
    output [0:0]S_AXI_LITE_rvalid;
    input [31:0]S_AXI_LITE_wdata;
    output [0:0]S_AXI_LITE_wready;
    input [3:0]S_AXI_LITE_wstrb;
    input [0:0]S_AXI_LITE_wvalid;
    input clk;
    output interrupt_0_interrupt;
    input resetn;
    
    bnnTop_wrapper DUT(
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(),
        .M00_AXI_awburst(),
        .M00_AXI_awcache(),
        .M00_AXI_awlen(),
        .M00_AXI_awlock(),
        .M00_AXI_awprot(),
        .M00_AXI_awqos(),
        .M00_AXI_awready(0),
        .M00_AXI_awregion(),
        .M00_AXI_awsize(),
        .M00_AXI_awvalid(),
        .M00_AXI_bready(),
        .M00_AXI_bresp(0),
        .M00_AXI_bvalid(0),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(),
        .M00_AXI_wlast(),
        .M00_AXI_wready(0),
        .M00_AXI_wstrb(),
        .M00_AXI_wvalid(),
        .S_AXI_LITE_araddr(S_AXI_LITE_araddr),
        .S_AXI_LITE_arprot(S_AXI_LITE_arprot),
        .S_AXI_LITE_arready(S_AXI_LITE_arready),
        .S_AXI_LITE_arvalid(S_AXI_LITE_arvalid),
        .S_AXI_LITE_awaddr(S_AXI_LITE_awaddr),
        .S_AXI_LITE_awprot(S_AXI_LITE_awprot),
        .S_AXI_LITE_awready(S_AXI_LITE_awready),
        .S_AXI_LITE_awvalid(S_AXI_LITE_awvalid),
        .S_AXI_LITE_bready(S_AXI_LITE_bready),
        .S_AXI_LITE_bresp(S_AXI_LITE_bresp),
        .S_AXI_LITE_bvalid(S_AXI_LITE_bvalid),
        .S_AXI_LITE_rdata(S_AXI_LITE_rdata),
        .S_AXI_LITE_rready(S_AXI_LITE_rready),
        .S_AXI_LITE_rresp(S_AXI_LITE_rresp),
        .S_AXI_LITE_rvalid(S_AXI_LITE_rvalid),
        .S_AXI_LITE_wdata(S_AXI_LITE_wdata),
        .S_AXI_LITE_wready(S_AXI_LITE_wready),
        .S_AXI_LITE_wstrb(S_AXI_LITE_wstr),
        .S_AXI_LITE_wvalid(S_AXI_LITE_wvalid),
        .clk(clk),
        .interrupt_0_interrupt(interrupt_0_interrupt),
        .resetn(resetn));
endmodule
