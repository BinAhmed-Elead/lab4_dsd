`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:21:22 PM
// Design Name: 
// Module Name: Register4bits
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


module Register4bits(
input logic [3:0] Data,
input CLK,
input RST,
input En,
output logic [3:0] Out
    );
    
    D_FlipFlop dff0(
    Data[0],
    CLK,
    RST,
    En,
    Out[0],
    );
    
    D_FlipFlop dff1(
    Data[1],
    CLK,
    RST,
    En,
    Out[1],
    );
        D_FlipFlop dff2(
    Data[2],
    CLK,
    RST,
    En,
    Out[2],
    );
        D_FlipFlop dff3(
    Data[3],
    CLK,
    RST,
    En,
    Out[3],
    );
endmodule

