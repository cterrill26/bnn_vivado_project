`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 04:09:04 PM
// Design Name: 
// Module Name: partialsumsMem
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


module partialsumsMem(
    input clk,
    input resetn,
    input s_en,
    output [15:0] s_dout,
    input [10:0] s_addr,
    input start,
    input accumulate,
    input [10:0] address_start,
    input [5:0] batch,
    input [15:0] partialsum_out,
    input partialsum_out_valid,
    output logic propogate_start, propogate_accumulate,
    output logic [10:0] propogate_address_start,  
    output idle
    );
    
    localparam NUM_STATES = 2;
    localparam IDLE = 1;
    localparam COUNTING = 2;    
    
    logic [5:0] countrd;
    logic [15:0] doutb;
    logic [NUM_STATES-1:0] state;
    logic ena1, ena2, ena3, accum1, accum2;
    
    logic [15:0] partialsum_out_reg1, partialsum_out_reg2, partialsum_out_sum, sum;
    
    logic [10:0] addrwr1, addrwr2, addrwr3;
    
    assign s_dout = doutb;
    assign idle = state[0];
    
    always_ff @(posedge clk) begin
        if(~resetn) begin
            ena1 <= 0;
            ena2 <= 0;
            ena3 <= 0;
            countrd <= 0;
            state <= IDLE;
            partialsum_out_reg1 <= 0;
            partialsum_out_reg2 <= 0;
            partialsum_out_sum <= 0;
            propogate_start <= 0;
            propogate_accumulate <= 0;
            propogate_address_start <= 0;
            accum1 <= 0;
            accum2 <= 0;
            addrwr1 <= 0; 
            addrwr2 <= 0; 
            addrwr3 <= 0;
        end
        else begin
            ena1 <= state[1] && partialsum_out_valid;
            ena2 <= ena1;
            ena3 <= ena2;        
            partialsum_out_reg1 <= partialsum_out;
            partialsum_out_reg2 <= partialsum_out_reg1;
            partialsum_out_sum <= sum;
            propogate_start <= start;
            accum1 <= propogate_accumulate;
            accum2 <= accum1;
            addrwr1 <= propogate_address_start + countrd; 
            addrwr2 <= addrwr1; 
            addrwr3 <= addrwr2;
           
            if((state == IDLE) && start) begin
                countrd <= 0;
                state <= COUNTING;
                propogate_address_start <= address_start;
                propogate_accumulate <= accumulate;
            end
            else if(state == COUNTING) begin
                if(partialsum_out_valid) begin
                    if(countrd == batch)
                        state <= IDLE;
                    countrd <= countrd + 1;
                end
            end
        end
    end
    
    fp_add fp_add (
      .s_axis_a_tvalid(ena2),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(partialsum_out_reg2),              // input wire [15 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(ena2),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(doutb & {16{accum2}}),              // input wire [15 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(sum)    // output wire [15 : 0] m_axis_result_tdata
    );

    blk_mem_gen_1 blk_mem_gen_1 (
      .clka(clk),    // input wire clka
      .ena(ena3),      // input wire ena
      .wea(ena3),      // input wire [0 : 0] wea
      .addra(addrwr3),  // input wire [10 : 0] addra
      .dina(partialsum_out_sum),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(s_en || (state[1] && partialsum_out_valid)),      // input wire enb
      .addrb((state[1] && partialsum_out_valid)? (propogate_address_start + countrd) : s_addr),  // input wire [10 : 0] addrb
      .doutb(doutb)  // output wire [15 : 0] doutb
    );
    
endmodule
