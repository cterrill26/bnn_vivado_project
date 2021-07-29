`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 03:11:36 PM
// Design Name: 
// Module Name: activationsTop_wrapper
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


module activationsTop_wrapper(
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *)
    // Uncomment the following to set interface specific parameter on the bus interface.
    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL,MEM_ECC None,MEM_WIDTH 32,MEM_SIZE 131072, READ_LATENCY 3,READ_WRITE_MODE READ_WRITE" *)
    input s_ena, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *)
    output [31:0] s_douta, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *)
    input [31:0] s_dina, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *)
    input [3:0] s_wea, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *)
    input [16:0] s_addra, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *)
    input s_clka, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *)
    input s_rsta, // Reset Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *)
    // Uncomment the following to set interface specific parameter on the bus interface.
    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL,MEM_ECC None,MEM_WIDTH 512,MEM_SIZE 131072,READ_WRITE_MODE READ_WRITE" *)
    input s_enb, // Chip Enable Signal (optional)
    //(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *)
    //output [31:0] s_doutb, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *)
    input [511:0] s_dinb, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *)
    input [63:0] s_web, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *)
    input [16:0] s_addrb, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *)
    input s_clkb, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *)
    input s_rstb, // Reset Signal (required)    
    input clk, resetn, start,
    input [4:0] last_row,
    input [10:0] addr_start, 
    input [5:0] batch,
    output [32*16-1:0] activation_in,
    output [32-1:0] activation_in_valid 
    );
    
    activationsTop activationsTop(
        .s_ena(s_ena), 
        .s_douta(s_douta), 
        .s_dina(s_dina),
        .s_wea(s_wea), 
        .s_addra(s_addra), 
        .s_enb(s_enb), 
        .s_dinb(s_dinb),
        .s_web(s_web), 
        .s_addrb(s_addrb),
        .clk(clk), 
        .resetn(resetn), 
        .start(start),
        .last_row(last_row),
        .addr_start(addr_start), 
        .batch(batch),
        .activation_in(activation_in),
        .activation_in_valid(activation_in_valid)
    );
    
endmodule
