`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:11 10/28/2022
// Design Name:   Diff_Module
// Module Name:   C:/Users/Student/Desktop/KGP_RISC_Grp_52/Test_Diff_Module.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Diff_Module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Diff_Module;

	// Inputs
	reg [31:0] Input;

	// Outputs
	wire [5:0] Output;
	wire Equal;

	// Instantiate the Unit Under Test (UUT)
	Diff_Module uut (
		.Input(Input), 
		.Output(Output), 
		.Equal(Equal)
	);

	initial begin
		// Initialize Inputs
		Input = 0;

		// Wait 100 ns for global reset to finish
		#100;
	   $monitor("Tets Bench for Diff Module\n");
		$monitor("Input = %d , Output = %d , Equal = %d\n",Input,Output,Equal);
		
		Input = 32'd15;
		
		#100;
		Input = 32'd512;
		#100;
		Input = 32'd64;
		#100;
		Input = 32'd69;
		
		
		// Add stimulus here

	end
      
endmodule

