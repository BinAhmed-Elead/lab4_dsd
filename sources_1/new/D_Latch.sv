`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 01:31:27 PM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    input D,
    input RST,
    input CLK,
    output logic Q,
    output logic nQ
    );
    logic w1,w2,w3,w4,w5,nRST;
    nand(w1,D,CLK);
    not(w2,D);
    nand(w3,w2,CLK);
    //w1  > S
    //w3 > R
    not(nRST,RST);
    or(w4,w1,nRST);//D or nRST
    and(w5,w3,RST);// R and RST
    nand(Q,w4,nQ);
    nand(nQ,w5,Q);
endmodule
