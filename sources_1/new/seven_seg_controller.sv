`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 07:01:06 AM
// Design Name: 
// Module Name: seven_seg_controller
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


module seven_seg_controller(
input BTNL,BTNC,BTNU, // CLK,En,RST
input [7:0] SW,
input CLK100MHZ,
output logic AN[7:0],//Enables
output CG,CF,CE,CD,CC,CB,CA
);  
    logic CLK_out;
    logic [3:0] enables;
    logic [6:0] mux_0;
    logic [6:0] mux_1;
    logic [6:0] mux_2;
    logic [6:0] mux_3;
    logic [1:0] s;
    assign AN[0] = enables[0];
    assign AN[1] = enables[1];
    assign AN[2] = enables[2];
    assign AN[3] = enables[3];
    assign AN[4] = 1'b1;
    assign AN[5] = 1'b1;
    assign AN[6] = 1'b1;
    assign AN[7] = 1'b1;
    always@(posedge CLK_out, negedge BTNU)begin
        if(BTNU)
            enables = 4'b1110;
         else
            enables = (enables<<1) | (enables>>3);
    end
    assign enables_initial = 4'b0001;
    mux2_1 #(4) mux1(
    enables_initial,
    enables_shift,
    ); 
//    always@(posedge CLK_out, negedge BTNU) begin
      
//        if(!BTNU)//RST
//            s=2'b00;
//     end
    logic [6:0] seg;
    assign CA = seg[0];
    assign CB = seg[1];
    assign CC = seg[2];
    assign CD = seg[3];
    assign CE = seg[4];
    assign CF = seg[5];
    assign CG = seg[6];
    logic [3:0]  reg_out1,reg_out2;
    logic CLK;
    assign CLK = BTNL;
    logic [3:0] digit[3:0];
    assign digit[0] = SW[3:0];
    assign digit[1] = SW[7:4];
    Register4bits regi1(
        .Data(digit[0]),
        .RST(BTNU),
        .CLK(CLK),
        .En(BTNC),
        .Out(reg_out1)
    );
    Register4bits regi2(
        .Data(digit[1]),
        .RST(BTNU),
        .CLK(CLK),
        .En(BTNC),
        .Out(reg_out2)
    );
    seven_seg sg0(
        .bin(digit[0]),
        .seg(mux_0)
    );
        seven_seg sg1(
        .bin(digit[1]),
        .seg(mux_1)
    );
        seven_seg sg2(
        .bin(reg_out1),
        .seg(mux_2)
    );
        seven_seg sg3(
        .bin(reg_out2),
        .seg(mux_3)
    );
    
    mux4_1 #(7) m1(
    .data0(mux_0),
    .data1(mux_1),
    .data2(mux_2),
    .data3(mux_3),
    .f(seg),
    .s(s)
    );
    Clk_Divider #(20) Div1(
        .CLK(CLK100MHZ),
        .RST(BTNU),
        .CLK_out(CLK_out)
    );
endmodule
