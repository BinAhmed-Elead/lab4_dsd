`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 01:33:50 PM
// Design Name: 
// Module Name: D_FlipFlop
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


module D_FlipFlop(
    input logic D,
    input logic CLK,RST,En,
    output logic Q,nQ
    
    );
    logic w1,Trig,nTrig;
    and (Trig,CLK,En);
   not (nTrig,Trig);
 D_Latch master(
    .D(D),
    .RST(RST),
    .CLK(Trig),
    .Q(w1),
    .nQ()
    );
    
     D_Latch slave(
    .D(w1),
    .RST(RST),
    .CLK(nTrig),
    .Q(Q),
    .nQ(nQ)
    );

endmodule
