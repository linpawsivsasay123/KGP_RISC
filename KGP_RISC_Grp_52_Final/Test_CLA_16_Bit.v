`timescale 1ns / 1ps

module Test_CLA_16_Bit;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg C_in;

	// Outputs
	wire [15:0] S;
	wire C_out;
	wire Block_P;
	wire Block_G;

	// Instantiate the Unit Under Test (UUT)
	CLA_16_Bit uut (
		.A(A), 
		.B(B), 
		.C_in(C_in), 
		.S(S), 
		.C_out(C_out), 
		.Block_P(Block_P), 
		.Block_G(Block_G)
	);

	initial begin
		$monitor ("Test Benches for 16 Bit CLA adder using LCU\n");
		$monitor ("A = %d, B = %d, c_in = %d, sum = %d, c_out = %d\n", A, B, C_in, S, C_out);
		// Initialize Inputs
		A = 16'd234; B = 16'd523; C_in = 0;
		#100;
		A = 16'd3245; B = 16'd16785; C_in = 1;
		#100;
		A = 16'd25000; B = 16'd40535; C_in = 0;
		#100;
		A = 16'd25001; B = 16'd40535; C_in = 0;
		#100;
		A = 16'd25000; B = 16'd40535; C_in = 1;
	end
endmodule