// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:registers:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bnnTop_registers_0_1 (
  s_apb_paddr,
  s_apb_psel,
  s_apb_penable,
  s_apb_pwrite,
  s_apb_pwdata,
  s_apb_pready,
  s_apb_prdata,
  s_apb_pslverr,
  clk,
  resetn,
  weight_transfer,
  last_row,
  last_col,
  systolic_start,
  activations_addr_start,
  partialsums_addr_start,
  batch,
  accumulate,
  interrupt_en
);

(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PADDR" *)
input wire [31 : 0] s_apb_paddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSEL" *)
input wire s_apb_psel;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PENABLE" *)
input wire s_apb_penable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWRITE" *)
input wire s_apb_pwrite;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWDATA" *)
input wire [31 : 0] s_apb_pwdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PREADY" *)
output wire s_apb_pready;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PRDATA" *)
output wire [31 : 0] s_apb_prdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSLVERR" *)
output wire s_apb_pslverr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bnnTop_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
output wire weight_transfer;
output wire [4 : 0] last_row;
output wire [4 : 0] last_col;
output wire systolic_start;
output wire [10 : 0] activations_addr_start;
output wire [10 : 0] partialsums_addr_start;
output wire [5 : 0] batch;
output wire accumulate;
output wire interrupt_en;

  registers inst (
    .s_apb_paddr(s_apb_paddr),
    .s_apb_psel(s_apb_psel),
    .s_apb_penable(s_apb_penable),
    .s_apb_pwrite(s_apb_pwrite),
    .s_apb_pwdata(s_apb_pwdata),
    .s_apb_pready(s_apb_pready),
    .s_apb_prdata(s_apb_prdata),
    .s_apb_pslverr(s_apb_pslverr),
    .clk(clk),
    .resetn(resetn),
    .weight_transfer(weight_transfer),
    .last_row(last_row),
    .last_col(last_col),
    .systolic_start(systolic_start),
    .activations_addr_start(activations_addr_start),
    .partialsums_addr_start(partialsums_addr_start),
    .batch(batch),
    .accumulate(accumulate),
    .interrupt_en(interrupt_en)
  );
endmodule
