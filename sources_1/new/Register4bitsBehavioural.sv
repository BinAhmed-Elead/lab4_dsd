`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:46:44 PM
// Design Name: 
// Module Name: Register4bitsBehavioural
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


module Register4bitsBehavioural(
input logic [3:0] Data,
input CLK,
input RST,
input En,
output logic [3:0] Out
    );
    always@(negedge CLK, RST) begin
    if(En)
        Out = Data;
    if(!RST)
        Out = 4'b0000;
    end
endmodule
