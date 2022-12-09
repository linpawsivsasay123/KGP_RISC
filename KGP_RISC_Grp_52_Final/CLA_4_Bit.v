`timescale 1ns / 1ps

module CLA_4_Bit(A, B, C_in, S, Block_P, Block_G);
	input [3:0] A, B;
	input C_in; 
	output [3:0] S;
	output Block_P, Block_G; 
	 
	// intermediate wires to store the results for generate and prpagation expression 
	// along with the carry bits 
	wire [3:0] G_wire, P_wire, C_wire;
	
	// get the values of generation and propagation bits
	assign G_wire = A & B;
	assign P_wire = A ^ B; 
	
	// get the value of each carry bits by substituting the previous values
	assign C_wire[0] = C_in;
	assign C_wire[1] = G_wire[0] | (P_wire[0] & C_wire[0]);
	assign C_wire[2] = G_wire[1] | (P_wire[1] & G_wire[0]) | (P_wire[1] & P_wire[0] & C_wire[0]);
	assign C_wire[3] = G_wire[2] | (P_wire[2] & G_wire[1]) | (P_wire[2] & P_wire[1] & G_wire[0]) | (P_wire[2] & P_wire[1] & P_wire[0] & C_wire[0]);
	
	// get the value of final sum for these 4 bits by performing xor 
	assign S = P_wire ^ C_wire;
	
	// get the values of Block propagate and Block generate signals 
	// corresponding equations are: 
	// P = P3 & P2 & P1 & P0
	// G = G3 + G2 & P3 + G1 & P3 & P2 + G0 & P3 & P2 & P1

	assign Block_P = P_wire[3] & P_wire[2] & P_wire[1] & P_wire[0];
	assign Block_G = G_wire[3] | (P_wire[3] & G_wire[2]) | (P_wire[3] & P_wire[2] & G_wire[1]) | (P_wire[3] & P_wire[2] & P_wire[1] & G_wire[0]);
endmodule
