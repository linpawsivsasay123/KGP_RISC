`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:38 10/28/2022
// Design Name:   Adder_Module
// Module Name:   C:/Users/Student/Desktop/KGP_RISC_Grp_52/Test_Adder_Module.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_Module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Adder_Module;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Sum;
	wire Carry_Out;

	// Instantiate the Unit Under Test (UUT)
	Adder_Module uut (
		.A(A), 
		.B(B), 
		.Sum(Sum), 
		.Carry_Out(Carry_Out)
	);

	initial begin
		$monitor ("Test Bench for Adder Module\n"); 
		$monitor ("A = %d, B = %d, Sum = %d, Carry_Out = %d\n", A, B, Sum, S, Carry_Out);
		// Initialize Inputs 
		A = 32'd12; B = 4'd3;
		#100;
		A = 32'd6969; B = 32'd28;
		#100
		A = 32'd119; B = 32'd29;
		#100;
		A = 32'd56; B = 32'd52;
		#100
		A = 32'd559; B = 32'd31;
	end
      
endmodule

