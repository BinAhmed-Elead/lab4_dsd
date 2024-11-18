`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:32:50 PM
// Design Name: 
// Module Name: tb_Register4bits
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


module tb_Register4bits;
logic [3:0] Data,Out,Out2;
logic CLK,RST,En;

Register4bits rg(
.Data(Data),
.CLK(CLK),
.RST(RST),
.En(En),
.Out(Out)
);
Register4bitsBehavioural rgbh(
.Data(Data),
.CLK(CLK),
.RST(RST),
.En(En),
.Out(Out2)
);
initial begin
RST=1'b0;En=1'b1; Data = 4'b0000;
CLK=1'b0;#5
RST=1'b1;
CLK=1'b1;#5
CLK=1'b0;#1 Data = 4'b1010;#5
CLK=1'b1;#5
CLK=1'b0;#5
CLK=1'b1;#5
Data = 4'b0110;#1
CLK=1'b0;#5
En=1'b0;
Data = 4'b0111;
CLK=1'b1;#5
CLK=1'b0;#5
RST=1'b0;
CLK=1'b1;#5
$finish;
end
endmodule
