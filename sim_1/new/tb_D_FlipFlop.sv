`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:49:35 PM
// Design Name: 
// Module Name: tb_D_FlipFlop
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


module tb_D_FlipFlop;
logic D,CLK,RST,Q,nQ;
    D_FlipFlop dff(
    D,
    CLK,
    RST,
    Q,
    nQ
    );
    initial begin
                D=1'b1;CLK=1'b1;RST=1'b0;#5
        D=1'b1;CLK=1'b0;RST=1'b0;#5
                D=1'b0;CLK=1'b1;RST=1'b1;#5
        D=1'b1;CLK=1'b0;RST=1'b1;#5
                D=1'b1;CLK=1'b1;RST=1'b1;#5
        D=1'b0;CLK=1'b0;RST=1'b1;#5
                D=1'b0;CLK=1'b1;RST=1'b1;#5
        D=1'b0;CLK=1'b0;RST=1'b1;#5
                D=1'b0;CLK=1'b1;RST=1'b1;#5
        D=1'b1;CLK=1'b0;RST=1'b1;#5
                D=1'b1;CLK=1'b1;RST=1'b1;#5
        D=1'b1;CLK=1'b0;RST=1'b1;#5
                D=1'b1;CLK=1'b1;RST=1'b1;#5
        D=1'b1;CLK=1'b0;RST=1'b1;#5
                D=1'b1;CLK=1'b1;RST=1'b0;#5
        D=1'b1;CLK=1'b0;RST=1'b1;#5
        $stop;
    end
endmodule
