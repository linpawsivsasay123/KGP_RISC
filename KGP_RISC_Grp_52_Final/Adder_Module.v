`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:22 11/08/2022 
// Design Name: 
// Module Name:    Adder_Module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Adder_Module(A, B, Sum, Carry_Out);
    input [31:0] A;
    input [31:0] B;
    output [31:0] Sum; 
    output Carry_Out; 

    wire CarryIn1;
    wire CarryOut1;

    assign CarryIn1 = 0; 

    wire useless; 

    CLA_16_Bit Add1(.A(A[15:0]), .B(B[15:0]), .C_in(CarryIn1), .S(Sum[15:0]), .C_out(CarryOut1), .Block_G(useless), .Block_P(useless));    
    CLA_16_Bit Add2(.A(A[31:16]), .B(B[31:16]), .C_in(CarryOut1), .S(Sum[31:16]), .C_out(Carry_Out), .Block_G(useless), .Block_P(useless));    
endmodule
