`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2021 12:17:19 AM
// Design Name: 
// Module Name: array_element
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


module array_element(
    input clk, element_on, activation_in_valid, partialsum_in_valid,
    input [15:0] activation_in,
    input [15:0] partialsum_in,
    input [15:0] weight,
    output logic activation_out_valid, partialsum_out_valid,
    output logic [15:0] activation_out,
    output logic [15:0] partialsum_out
    );
    
    logic [15:0] partialsum;
    logic element_enable;
    assign element_enable = element_on & activation_in_valid;
    
    fp_mult_add fp_mult_add(
        .s_axis_a_tvalid(element_enable),
        .s_axis_a_tdata(activation_in),
        .s_axis_b_tvalid(element_enable),
        .s_axis_b_tdata(weight),
        .s_axis_c_tvalid(element_enable),
        .s_axis_c_tdata(partialsum_in & {16{partialsum_in_valid}}),
        .m_axis_result_tvalid(),
        .m_axis_result_tdata(partialsum)
        );
    
    always_ff @(posedge clk) begin
        if(element_on) begin
            activation_out_valid <= activation_in_valid;
            partialsum_out_valid <= activation_in_valid;
        end
        if(element_enable) begin
            activation_out <= activation_in;    
            partialsum_out <= partialsum;
        end
    end
    
endmodule
