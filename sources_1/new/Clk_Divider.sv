`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 03:14:07 PM
// Design Name: 
// Module Name: Clk_Divider
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


module Clk_Divider #(parameter Devider=4)(
input CLK,
input RST,
output logic CLK_out
    );
    logic [Devider-1:0] CLK_int;
    
    assign CLK_out=CLK_int[Devider-1];
    
    always@(posedge CLK,  negedge RST )
    begin
        if (!RST)
            CLK_int[0]=1'b0;
        else
            CLK_int[0]=~CLK_int[0];
     end;
     
         genvar i;
         generate
        for (i=1; i < Devider; i++) begin
                always@(posedge CLK_int[i-1],  negedge RST )
                    begin
                           if (!RST)
                                CLK_int[i]=1'b0;
                           else
                                CLK_int[i]=~CLK_int[i];  
                    end
        end
    endgenerate
endmodule
