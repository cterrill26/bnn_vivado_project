`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 02:56:17 PM
// Design Name: 
// Module Name: partialsumsTop_wrapper
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


module partialsumsTop_wrapper(
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *)
    // Uncomment the following to set interface specific parameter on the bus interface.
    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL,MEM_ECC None,MEM_WIDTH 512,MEM_SIZE 131072, READ_LATENCY 2,READ_WRITE_MODE READ_WRITE" *)
    input s_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *)
    output [511:0] s_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *)
    input [16:0] s_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *)
    input s_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *)
    input s_rst, // Reset Signal (required)
    input clk, resetn, start, accumulate, interrupt_en,
    input [10:0] address_start,
    input [5:0] batch,
    input [32*16-1:0] partialsum_out,
    input [32-1:0] partialsum_out_valid,
    input [4:0] last_col,
    (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 DONE INTERRUPT" *)
    // Supported parameter: SENSITIVITY { LEVEL_HIGH, LEVEL_LOW, EDGE_RISING, EDGE_FALLING }
    // Normally LEVEL_HIGH is assumed.  Use this parameter to force the level
    (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)
    output done
    );
    
    partialsumsTop partialsumsTop(
        .s_en(s_en),
        .s_dout(s_dout),
        .s_addr(s_addr),
        .clk(clk), 
        .resetn(resetn), 
        .start(start), 
        .accumulate(accumulate),
        .interrupt_en(interrupt_en),
        .address_start(address_start),
        .batch(batch),
        .partialsum_out(partialsum_out),
        .partialsum_out_valid(partialsum_out_valid),
        .last_col(last_col),
        .done(done)
    );
    
endmodule
