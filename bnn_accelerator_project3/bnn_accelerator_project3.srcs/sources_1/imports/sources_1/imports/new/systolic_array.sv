`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2021 01:03:08 AM
// Design Name: 
// Module Name: systolic_array
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


module systolic_array #(parameter ROWS = 32, parameter COLS = 32)(
    input [31:0] s_axis_tdata, // Transfer Data (optional)
    input s_axis_tvalid, // Transfer valid (required)
    input clk, weight_transfer,
    input [ROWS*16-1:0] activation_in,
    input [ROWS-1:0] activation_in_valid,
    input [$clog2(ROWS)-1:0] last_row,
    input [$clog2(COLS)-1:0] last_col,
    output logic [COLS*16-1:0] partialsum_out,
    output logic [COLS-1:0] partialsum_out_valid
    );
       
    logic [ROWS-1:0][COLS:0] activation_valid;
    logic [ROWS-1:0][COLS:0][15:0] activation;
    logic [ROWS:0][COLS-1:0] partialsum_valid;
    logic [ROWS:0][COLS-1:0][15:0] partialsum;
    logic [ROWS-1:0][COLS-1:0][15:0] weight, weight_buff;
    logic [ROWS*COLS-1:0][15:0] weight_buff_d, weight_buff_flat;
    
    always_ff @(posedge clk) begin
        for(int i = 0; i < ROWS; i += 1) begin
            for(int j = 0; j < COLS; j += 1) begin
                if ((i <= last_row) && (j <= last_col) && weight_transfer)
                    weight[i][j] <= weight_buff[i][j];
                if ((i <= last_row) && s_axis_tvalid)
                    weight_buff[i][j] <= weight_buff_d[i*COLS+j];
            end
        end   
    end
    
    
    always_comb begin
        weight_buff_d[0] = s_axis_tdata[15:0];
        weight_buff_d[1] = s_axis_tdata[31:16];
        for(int i = 2; i < ROWS*COLS; i += 1) 
             weight_buff_d[i] <=  weight_buff_flat[i-2];
             
        for(int i = 0; i < ROWS; i += 1) begin
            for(int j = 0; j < COLS; j += 1) begin
                weight_buff_flat[i*COLS+j] <= weight_buff[i][j];
            end
        end  
    end
    
    
    always_comb begin
        for(int i = 0; i < ROWS; i += 1) begin
            activation_valid[i][0] = activation_in_valid[i];
            activation[i][0] = activation_in[i*16+:16];
        end
        
        for(int i = 0; i < COLS; i += 1) begin
            partialsum_valid[ROWS][i] = 0;
            partialsum[ROWS][i] = 0;
            partialsum_out_valid[i] = partialsum_valid[0][i];
            partialsum_out[i*16+:16] = partialsum[0][i];
        end    
    end
    
    generate
        for(genvar i = 0; i < ROWS; i += 1) begin : GEN_ROWS
            for(genvar j = 0; j < COLS; j += 1) begin : GEN_COLS
                array_element array_element(
                    .clk(clk), 
                    .element_on((i <= last_row) && (j <= last_col)), 
                    .activation_in_valid(activation_valid[i][j]), 
                    .partialsum_in_valid(partialsum_valid[i+1][j]),
                    .activation_in(activation[i][j]),
                    .partialsum_in(partialsum[i+1][j]),
                    .weight(weight[i][j]),
                    .activation_out_valid(activation_valid[i][j+1]), 
                    .partialsum_out_valid(partialsum_valid[i][j]),
                    .activation_out(activation[i][j+1]),
                    .partialsum_out(partialsum[i][j])
                    );    
            end
        end
    endgenerate 
    
endmodule
