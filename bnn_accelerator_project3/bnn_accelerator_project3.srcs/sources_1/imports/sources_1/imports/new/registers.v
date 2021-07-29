`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 01:57:08 PM
// Design Name: 
// Module Name: registers
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


module registers(
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PADDR" *)
    input [31:0] s_apb_paddr, // Address (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSEL" *)
    input s_apb_psel, // Slave Select (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PENABLE" *)
    input s_apb_penable, // Enable (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWRITE" *)
    input s_apb_pwrite, // Write Control (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PWDATA" *)
    input [31:0] s_apb_pwdata, // Write Data (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PREADY" *)
    output s_apb_pready, // Slave Ready (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PRDATA" *)
    output [31:0] s_apb_prdata, // Read Data (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB_S PSLVERR" *)
    output reg s_apb_pslverr, // Slave Error Response (required)
    input clk, resetn,
    output reg weight_transfer,
    output reg [4:0] last_row,
    output reg [4:0] last_col,
    output reg systolic_start,
    output reg [10:0] activations_addr_start, partialsums_addr_start,
    output reg [5:0] batch,
    output reg accumulate, interrupt_en
    );
    
    //address 0x0 write a 1 to transfer buffered weights
    //address 0x4 write the last active row of the systolic array
    //address 0x8 write the last active column of the systolic array
    //address 0xc write a 1 to start the systolic array
    //address 0x10 write the start address of reading out of the activation buffers
    //address 0x14 write the batch size
    //address 0x18 write the start address of accumulators
    //address 0x1c write if the accululators sums will start from 0 or accumulate, and if an interrupt will be generated
    
    localparam NUM_STATES = 2;
    localparam IDLE = 1;
    localparam RESPONDED = 2;
    
    assign s_apb_pready = 1;
    assign s_apb_prdata = 0; //these are write only registers
 
    reg [NUM_STATES-1:0] state;
    
    always @ (posedge clk) begin
        if (~resetn) begin
            weight_transfer <= 0;
            last_row <= 0;
            last_col <= 0;
            systolic_start <= 0;
            activations_addr_start <= 0;
            batch <= 0;
            partialsums_addr_start <= 0;
            accumulate <= 0;
            interrupt_en <= 0;
            state <= IDLE;
            s_apb_pslverr <= 0;
        end
        else begin
            weight_transfer <= (state == IDLE) && (s_apb_paddr[4:0] == 'h0) && s_apb_psel && s_apb_pwrite && s_apb_pwdata[0];
            systolic_start  <= (state == IDLE) && (s_apb_paddr[4:0] == 'hc) && s_apb_psel && s_apb_pwrite && s_apb_pwdata[0];
            
            
            if((state == IDLE) && (s_apb_paddr[4:0] == 'h4) && s_apb_psel && s_apb_pwrite)
                last_row <= s_apb_pwdata[4:0];
            
            if((state == IDLE) && (s_apb_paddr[4:0] == 'h8) && s_apb_psel && s_apb_pwrite)
                last_col <= s_apb_pwdata[4:0];
            
            if((state == IDLE) && (s_apb_paddr[4:0] == 'h10) && s_apb_psel && s_apb_pwrite)
                activations_addr_start <= s_apb_pwdata[10:0];
            
            if((state == IDLE) && (s_apb_paddr[4:0] == 'h14) && s_apb_psel && s_apb_pwrite)
                batch <= s_apb_pwdata[5:0];
                
            if((state == IDLE) && (s_apb_paddr[4:0] == 'h18) && s_apb_psel && s_apb_pwrite)
                partialsums_addr_start <= s_apb_pwdata[10:0];
            
            if((state == IDLE) && (s_apb_paddr[4:0] == 'h1c) && s_apb_psel && s_apb_pwrite) begin
                accumulate <= s_apb_pwdata[0];
                interrupt_en <= s_apb_pwdata[1];
            end
            
            if (state == IDLE && s_apb_psel)
                state <= RESPONDED;
            else
                state <= IDLE;
            
            if (state == IDLE && s_apb_psel && !s_apb_pwrite)
                s_apb_pslverr <= 1;
            else
                s_apb_pslverr <= 0;
        end
    end
    
    
    
endmodule
