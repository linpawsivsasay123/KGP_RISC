`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:26 10/28/2022
// Design Name:   Shift_Module
// Module Name:   C:/Users/Student/Desktop/KGP_RISC_Grp_52/Test_Shift_Modue.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shift_Module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Shift_Modue;

	// Inputs
	reg [31:0] Input;
	reg [4:0] Shift_Amount;
	reg Type;
	reg Direction;

	// Outputs
	wire [31:0] Output;

	// Instantiate the Unit Under Test (UUT)
	Shift_Module uut (
		.Input(Input), 
		.Shift_Amount(Shift_Amount), 
		.Output(Output), 
		.Type(Type), 
		.Direction(Direction)
	);

	initial begin
		// Initialize Inputs
		Input = 0;
		Shift_Amount = 0;
		Type = 0;
		Direction = 0;
		$monitor("Test Bench for Shift Module");
		$monitor("Input = %d , Shift_Amount = %d , Output = %d , Type = %d , Direction = %d\n",Input,Shift_Amount,Output,Type,Direction);
		// Wait 100 ns for global reset to finish
		#100;
      Input = 32'd23; Shift_Amount = 5'b101; Type = 1'b0; Direction = 1'b0;
		#100;
      Input = 32'd23; Shift_Amount = 5'b101; Type = 1'b0; Direction = 1'b1;
		#100;
      Input = 32'd23; Shift_Amount = 5'b101; Type = 1'b1; Direction = 1'b0;
		#100;
      Input = 32'd23; Shift_Amount = 5'b101; Type = 1'b1; Direction = 1'b1;
		#100;
      Input = 32'd26; Shift_Amount = 5'b1101; Type = 1'b1; Direction = 1'b0;		
		// Add stimulus here

	end
      
endmodule

