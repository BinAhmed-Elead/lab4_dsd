`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 05:37:14 PM
// Design Name: 
// Module Name: incremental
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


    module incremental (
    input  clk,      
    input  reset,
    input a,
    output f
);
    logic sum,cout;
    
    HalfAdder ha(
    .a(a),
    .b(1'b1),
    .sum(sum),
    .cout(cout)
    );

endmodule
