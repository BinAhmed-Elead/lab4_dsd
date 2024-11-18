`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 02:03:31 PM
// Design Name: 
// Module Name: mux4_1
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


module mux4_1 #(parameter width=4)(
        input logic [width-1:0] data0,
        input logic [width-1:0] data1,
        input logic [width-1:0] data2,
        input logic [width-1:0] data3,
        input logic [1:0] s,
        output logic [width-1:0] f
    );
 
 always@(*)begin 
        case(s)
            2'b00: f =data0;
            2'b01: f =data1;
            2'b10: f =data2;
            2'b11: f =data3;
        endcase
    end
endmodule
