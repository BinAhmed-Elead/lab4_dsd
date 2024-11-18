`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 06:59:54 AM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(input [3:0] bin,
                                  output [6:0] seg);
assign seg[0] = ((~bin[3] & ~bin[2] & ~bin[1] & bin[0]) | (bin[2] & ~bin[1] & ~bin[0]) | (bin[3] & ~bin[2] & bin[1] & bin[0]) | (bin[3] & bin[2] & ~bin[1]));
assign seg[1] =  ((~bin[3] & bin[2] & ~bin[1] & bin[0]) | (bin[2] & bin[1] & ~bin[0]) | (bin[3] & bin[1] & bin[0]) | (bin[3] & bin[2] & ~bin[0]));
assign seg[2] =  ((~bin[3] & ~bin[2] & bin[1] & ~bin[0]) | (bin[3] & bin[2] & ~bin[0]) | (bin[3] & bin[2] & bin[1]));
assign seg[3] =   ((~bin[2] & ~bin[1] & bin[0]) | (~bin[3] & bin[2] & ~bin[1] & ~bin[0]) | (bin[2] & bin[1] & bin[0]) | (bin[3] & ~bin[2] & bin[1] & ~bin[0]));
assign seg[4]= ((~bin[3] & bin[0]) | (~bin[3] & bin[2] & ~bin[1]) | (~bin[2] & ~bin[1] & bin[0]));
assign seg[5]= ((~bin[3] & ~bin[2] & bin[0]) | (~bin[3] & ~bin[2] & bin[1]) | (~bin[3] & bin[1] & bin[0]) | (bin[3] & bin[2] & ~bin[1]));
assign seg[6] = ((~bin[3] & ~bin[2] & ~bin[1]) | (~bin[3] & bin[2] & bin[1] & bin[0]));
endmodule
