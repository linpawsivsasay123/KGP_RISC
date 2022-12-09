`timescale 1ns / 1ps

module Test_CLA_4_Bit;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C_in;

	// Outputs
	wire [3:0] S;
	wire Block_P;
	wire Block_G;

	// Instantiate the Unit Under Test (UUT)
	CLA_4_Bit uut (
		.A(A), 
		.B(B), 
		.C_in(C_in), 
		.S(S), 
		.Block_P(Block_P), 
		.Block_G(Block_G)
	);

	initial begin
		$monitor ("Test Bench for 8 Bit Augmented CLA\n"); 
		$monitor ("in1 = %d, in2 = %d, c_in = %d, sum = %d, block p = %d, block g = %d\n", A, B, C_in, S, Block_P, Block_G);
		// Initialize Inputs 
		A = 4'd12; B = 4'd3; C_in = 0;
		#100;
		A = 4'd5; B = 4'd8; C_in = 0;
		#100
		A = 4'd9; B = 4'd2; C_in = 1;
		#100;
		A = 4'b1101; B = 4'b1101; C_in = 1;
	end
      
endmodule