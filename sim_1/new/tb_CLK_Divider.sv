`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 03:31:52 PM
// Design Name: 
// Module Name: tb_CLK_Divider
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


module tb_CLK_Divider;
logic CLK,RST;
logic CLK_out;
Clk_Divider cd(
.CLK(CLK),
.CLK_out(CLK_out),
.RST(RST)
);
initial begin
RST=1'b0; CLK=1'b0;#5
RST=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5;
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5;
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5;
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5;
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5;
CLK=1'b0;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5;
$finish;
 end
endmodule
