`timescale 1ns / 1ps

module Look_Ahead_Carry_Unit(inBlockP, inBlockG, C_in, Carry, Block_P, Block_G);

	input [3:0] inBlockP, inBlockG; 
	input C_in; 
	output [3:0] Carry; 
	output Block_P, Block_G; 
	
	// here we calc the values of intermediate carry using the propagation and generation signals we got 
	// using the following rules: 
	// C_in(1) = P(0) & C_in(0) + G(0)
	// C_in(2) = P(1) & P(0) & C_in(0) + P(1) & G(0) + G(1)
	// C_in(3) = P(2) & P(1) & P(0) & C_in(0) + P(2) & P(1) & G(0) + P(2) & G(1) + G(2)
	// C_in(4) = P(3) & P(2) & P(1) & P(0) & C_in(0) + P(3) & P(2) & P(1) & G(0) + P(3) & P(2) & G(1) + P(3) & G(2) + G(3)

	assign Carry[0] = inBlockG[0] | (inBlockP[0] & C_in);
	assign Carry[1] = inBlockG[1] | (inBlockP[1] & inBlockG[0]) | (inBlockP[1] & inBlockP[0] & C_in);
	assign Carry[2] = inBlockG[2] | (inBlockP[2] & inBlockG[1]) | (inBlockP[2] & inBlockP[1] & inBlockG[0]) | (inBlockP[2] & inBlockP[1] & inBlockP[0] & C_in);
	assign Carry[3] = inBlockG[3] | (inBlockP[3] & inBlockG[2]) | (inBlockP[3] & inBlockP[2] & inBlockG[1]) | (inBlockP[3] & inBlockP[2] & inBlockP[1] & inBlockG[0]) | (inBlockP[3] & inBlockP[2] & inBlockP[1] & inBlockP[0] & C_in);
	
	// here we calc the values of next block prop and generate signals
	// using the following rules: 
	// Block P = P(3) & P(2) & P(1) & P(0)
	// Block G = G(3) + G(2) & P(3) + G(1) & P(3) & P(2) + G(0) & P(3) & P(2) & P(1)

	assign Block_P = inBlockP[3] & inBlockP[2] & inBlockP[1] & inBlockP[0];
	assign Block_G = inBlockG[3] | (inBlockP[3] & inBlockG[2]) | (inBlockP[3] & inBlockP[2] & inBlockG[1]) | (inBlockP[3] & inBlockP[2] & inBlockP[1] & inBlockG[0]);

endmodule