`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2021 02:56:40 PM
// Design Name: 
// Module Name: partialsumsTop
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


module partialsumsTop(
    input s_en, // Chip Enable Signal (optional)
    output [511:0] s_dout, // Data Out Bus (optional)
    input [16:0] s_addr, // Address Signal (required)
    input clk, resetn, start, accumulate, interrupt_en,
    input [10:0] address_start,
    input [5:0] batch,
    input [32*16-1:0] partialsum_out,
    input [32-1:0] partialsum_out_valid,
    input [4:0] last_col,
    output logic done
    );
    
    logic partialsum_out_valid_reg, empty_fifo, accumulate_fifo, interrupt_en_fifo;
    logic [10:0] address_start_fifo;
    logic [31:0] propogate_accumulate, propogate_start;
    logic [31:0][10:0] propogate_address_start;
    logic idle;
    
    logic interrupt_en_fifo2;
    
    always_ff @(posedge clk) begin
        if(~resetn) begin
            partialsum_out_valid_reg <= 0;
            done <= 0;
        end
        else begin
            partialsum_out_valid_reg <= partialsum_out_valid[last_col];
            done <= partialsum_out_valid_reg & ~partialsum_out_valid[last_col] & interrupt_en_fifo2;
        end       
    end
    
    fifo_generator_1 fifo_generator_1 (
      .clk(clk),                  // input wire clk
      .srst(~resetn),                // input wire srst
      .din({interrupt_en, accumulate, address_start}), // input wire [12 : 0] din
      .wr_en(start),              // input wire wr_en
      .rd_en(!empty_fifo && idle),              // input wire rd_en
      .dout({interrupt_en_fifo, accumulate_fifo, address_start_fifo}), // output wire [12 : 0] dout
      .full(),                // output wire full
      .empty(empty_fifo),              // output wire empty
      .wr_rst_busy(),  // output wire wr_rst_busy
      .rd_rst_busy()  // output wire rd_rst_busy
    );
    
    fifo_generator_2 fifo_generator_2 (
      .clk(clk),                  // input wire clk
      .srst(~resetn),                // input wire srst
      .din(interrupt_en_fifo),                  // input wire [0 : 0] din
      .wr_en(!empty_fifo && idle),              // input wire wr_en
      .rd_en(partialsum_out_valid_reg & ~partialsum_out_valid[last_col]),  // input wire rd_en
      .dout(interrupt_en_fifo2),                // output wire [0 : 0] dout
      .full(),                // output wire full
      .empty(),              // output wire empty
      .wr_rst_busy(),  // output wire wr_rst_busy
      .rd_rst_busy()  // output wire rd_rst_busy
    );
    
    generate 
        for(genvar i = 0; i < 32; i += 1) begin : GEN_PARTIALSUMSMEM
            if(i == 0) begin
                partialsumsMem partialsumsMem(
                    .clk(clk),
                    .resetn(resetn),
                    .s_en(s_en && (i <= last_col)),
                    .s_dout(s_dout[16*i+:16]),
                    .s_addr(s_addr[16:6]),
                    .start(!empty_fifo && idle),
                    .accumulate(accumulate_fifo),
                    .address_start(address_start_fifo),
                    .batch(batch),
                    .propogate_start(propogate_start[i]),
                    .propogate_address_start(propogate_address_start[i]),
                    .propogate_accumulate(propogate_accumulate[i]),
                    .idle(idle),
                    .partialsum_out(partialsum_out[i*16+:16]),
                    .partialsum_out_valid(partialsum_out_valid[i])
                );
            end
            else begin
                partialsumsMem partialsumsMem(
                    .clk(clk),
                    .resetn(resetn),
                    .s_en(s_en && (i <= last_col)),
                    .s_dout(s_dout[16*i+:16]),
                    .s_addr(s_addr[16:6]),
                    .start(propogate_start[i-1] && (i <= last_col)),
                    .accumulate(propogate_accumulate[i-1]),
                    .address_start(propogate_address_start[i-1]),
                    .batch(batch),
                    .propogate_start(propogate_start[i]),
                    .propogate_address_start(propogate_address_start[i]),
                    .propogate_accumulate(propogate_accumulate[i]),
                    .idle(),
                    .partialsum_out(partialsum_out[i*16+:16]),
                    .partialsum_out_valid(partialsum_out_valid[i])
                );
            end
        end
    endgenerate
    
endmodule
