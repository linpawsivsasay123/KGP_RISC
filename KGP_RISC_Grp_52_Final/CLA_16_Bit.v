`timescale 1ns / 1ps

module CLA_16_Bit(A, B, C_in, S, C_out, Block_P, Block_G);
    input [15:0] A, B; 
    input C_in; 
    output [15:0] S; 
    output C_out, Block_P, Block_G; 
	 
    // temp wires to store the intermediate values of 
	wire [3:0] carry; // wires for connecting carries from lookahead carry unit to the 4-bit CLAs
	wire [3:0] wireP, wireG; // wires for connecting block propagate and generate from 4-bit CLAs to lookahead carry unit
	 
	// 16 bit adder by using four augmented 4-bit CLAs and a lookahead carry unit
	CLA_4_Bit cla0(.A(A[3:0]), .B(B[3:0]), .C_in(C_in), .S(S[3:0]), .Block_P(wireP[0]), .Block_G(wireG[0]));
	CLA_4_Bit cla1(.A(A[7:4]), .B(B[7:4]), .C_in(carry[0]), .S(S[7:4]), .Block_P(wireP[1]), .Block_G(wireG[1]));
	CLA_4_Bit cla2(.A(A[11:8]), .B(B[11:8]), .C_in(carry[1]), .S(S[11:8]), .Block_P(wireP[2]), .Block_G(wireG[2]));
	CLA_4_Bit cla3(.A(A[15:12]), .B(B[15:12]), .C_in(carry[2]), .S(S[15:12]), .Block_P(wireP[3]), .Block_G(wireG[3]));
	
	Look_Ahead_Carry_Unit lcu(.inBlockP(wireP), .inBlockG(wireG), .C_in(C_in), .Carry(carry), .Block_P(Block_P), .Block_G(Block_G));
	
	assign C_out = carry[3];
endmodule