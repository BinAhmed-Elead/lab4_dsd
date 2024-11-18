`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 01:56:45 PM
// Design Name: 
// Module Name: tb_D_Latch
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


module tb_D_Latch;
    logic D,RST,CLK,Q,nQ;
     D_Latch latch(
    .D(D),
    .RST(RST),
    .CLK(CLK),
    .Q(Q),
    .nQ(nQ)
    );
    initial begin
    D=1'b0;CLK=1'b0;RST=1'b0;
    #5 CLK=1'b1;RST=1'b1;
    #5 CLK=1'b0;D=1'b1;
    #5 CLK=1'b1;
    #5 CLK=1'b0;D=1'b0;
    #5 CLK=1'b1;D=1'b1;
    #5 CLK=1'b0;RST=1'b0;
    #5 CLK=1'b1;
    $finish;
    end
endmodule
