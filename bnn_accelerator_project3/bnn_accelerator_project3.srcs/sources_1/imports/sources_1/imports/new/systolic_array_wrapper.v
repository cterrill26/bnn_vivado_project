`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 01:11:13 PM
// Design Name: 
// Module Name: systolic_array_wrapper
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


module systolic_array_wrapper(
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
    input [31:0] s_axis_tdata, // Transfer Data (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *)
    input [3:0] s_axis_tkeep, // Transfer Null Byte Indicators (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
    input s_axis_tlast, // Packet Boundary Indicator (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
    input s_axis_tvalid, // Transfer valid (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
    output s_axis_tready, // Transfer ready (optional)
    input clk, weight_transfer,
    input [32*16-1:0] activation_in,
    input [32-1:0] activation_in_valid,
    input [5-1:0] last_row,
    input [5-1:0] last_col,
    output [32*16-1:0] partialsum_out,
    output [32-1:0] partialsum_out_valid
    );
    
    assign s_axis_tready = 1;
    
    systolic_array systolic_array (
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .clk(clk), 
        .weight_transfer(weight_transfer),
        .activation_in(activation_in),
        .activation_in_valid(activation_in_valid),
        .last_row(last_row),
        .last_col(last_col),
        .partialsum_out(partialsum_out),
        .partialsum_out_valid(partialsum_out_valid)    
    );
endmodule
