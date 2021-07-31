`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2021 03:03:24 PM
// Design Name: 
// Module Name: activationsTop
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


module activationsTop(
    input s_ena, 
    output logic [127:0] s_douta,
    input [127:0] s_dina,
    input [15:0] s_wea,
    input [16:0] s_addra,
    input s_enb, 
    input [255:0] s_dinb,
    input [31:0] s_web,
    input [16:0] s_addrb,
    input clk, resetn, start,
    input [3:0] last_row,
    input [11:0] addr_start, 
    input [7:0] batch,
    output [16*16-1:0] activation_in,
    output [16-1:0] activation_in_valid
    );
    
    logic [15:0][15:0] read_data;

    logic s_en1, s_en2, empty_fifo;
    logic [0:0] s_addr1, s_addr2;
    logic [16:0] propogate_start;
    logic [11:0] addr_start_fifo;
    logic [16:0][11:0] propogate_addr_start;
    logic [15:0] idle;
    
    assign propogate_start[16] = 0;
    assign propogate_addr_start[16] = 0; //never used  
    
    always_ff @(posedge clk) begin
        s_en1 <= s_ena;
        s_en2 <= s_en1;
        s_addr1 <= s_addra[4];
        s_addr2 <= s_addr1;       
        if(s_en2) begin
            for(int i = 0; i < 8; i += 1)
                s_douta[i*16+:16] <= read_data[8*s_addr2+i]; 
        end       
    end
    
    fifo_generator_0 fifo_generator_0 (
      .clk(clk),                  // input wire clk
      .srst(~resetn),             // input wire srst
      .din(addr_start),                  // input wire [11 : 0] din
      .wr_en(start),              // input wire wr_en
      .rd_en(!empty_fifo && idle[last_row]),              // input wire rd_en
      .dout(addr_start_fifo),                // output wire [11 : 0] dout
      .full(),                // output wire full
      .empty(empty_fifo),              // output wire empty
      .wr_rst_busy(),  // output wire wr_rst_busy
      .rd_rst_busy()  // output wire rd_rst_busy
    );   
    
    generate
        for(genvar i = 0; i < 16; i += 1) begin : GEN_ACTIVATIONSMEM
            activationsMem activationsMem(
                .clk(clk),
                .resetn(resetn),
                .s_addr((s_enb)? s_addrb[16:5] : s_addra[16:5]),
                .s_din((s_enb)? s_dinb[i*16+:16] : s_dina[(i%8)*16+:16]),
                .s_dout(read_data[i]),
                .s_we((s_enb)? (|s_web[i*2+:2]) : (|s_wea[(i%8)*2+:2])),
                .s_en(s_enb || (s_ena && (s_addra[4:4] == i/8))),
                .addr_start((propogate_start[i+1])? propogate_addr_start[i+1] : addr_start_fifo),
                .start((!empty_fifo && (last_row == i) && idle[i]) || propogate_start[i+1]),
                .propogate_addr_start(propogate_addr_start[i]),
                .propogate_start(propogate_start[i]),
                .batch(batch),
                .activation_in(activation_in[i*16+:16]),
                .activation_in_valid(activation_in_valid[i]),
                .idle(idle[i])
            );
        end
    endgenerate
    
endmodule
