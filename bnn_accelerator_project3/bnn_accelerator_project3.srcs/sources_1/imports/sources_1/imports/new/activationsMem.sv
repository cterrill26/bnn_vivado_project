`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 04:01:16 AM
// Design Name: 
// Module Name: activationsMem
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


module activationsMem(
    input clk,
    input resetn,
    input [10:0] s_addr,
    input [15:0] s_din,
    output [15:0] s_dout,
    input s_we,
    input s_en,
    input [10:0] addr_start,
    input start,
    output logic propogate_start,
    output logic [10:0] propogate_addr_start,
    input [5:0] batch,
    output [15:0] activation_in,
    output activation_in_valid,
    output idle
    );
    
    localparam NUM_STATES = 2;
    localparam IDLE = 1;
    localparam COUNTING = 2;
   
    logic [NUM_STATES-1:0] state;
    logic [5:0] countrd;
    logic counting1, counting2;
    
    assign activation_in_valid = counting2;
    assign idle = state[0];
        
    blk_mem_gen_0 activations (
      .clka(clk),    // input wire clka
      .ena(s_en),      // input wire ena
      .wea(s_we),      // input wire [0 : 0] wea
      .addra(s_addr),  // input wire [10 : 0] addra
      .dina(s_din),    // input wire [15 : 0] dina
      .douta(s_dout),  // output wire [15 : 0] douta
      .clkb(clk),    // input wire clkb
      .enb(state[1]),      // input wire enb
      .web(0),      // input wire [0 : 0] web
      .addrb(propogate_addr_start + countrd),  // input wire [10 : 0] addrb
      .dinb(0),    // input wire [15 : 0] dinb
      .doutb(activation_in)  // output wire [15 : 0] doutb
    );
    
    
    always_ff @(posedge clk) begin
        if(~resetn) begin
            propogate_start <= 0;
            countrd <= 0;
            state <= IDLE;
            counting1 <= 0;
            counting2 <= 0;
            propogate_addr_start <= 0;
        end
        else begin
            propogate_start <= start;
            counting1 <= state[1];
            counting2 <= counting1;
            
            if(state == IDLE && start) begin
                state <= COUNTING;
                propogate_addr_start <= addr_start;
                countrd <= 0;
            end
            else if (state == COUNTING) begin
                if(countrd == batch)
                    state <= IDLE;
                countrd <= countrd + 1;
            end                
        end
    end
    
endmodule
