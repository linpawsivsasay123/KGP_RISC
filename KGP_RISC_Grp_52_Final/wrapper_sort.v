`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:31:15 11/09/2022
// Design Name:   wrapper_RISC
// Module Name:   C:/Users/Student/Desktop/KGP_RISC_Grp_52/wrapper_sort.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wrapper_RISC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wrapper_sort;

	// Inputs
	reg clk;
	reg rst;
	reg button;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	wrapper_RISC uut (
		.clk(clk), 
		.rst(rst), 
		.button(button), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		button = 0;

		// Wait 100 ns for global reset to finish
		#2;
		rst = 1;
		#2;
		rst = 0;
		#100000 // Now the processs orting will be done
		
		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;		
		#100 button = 1;
		#100 button = 0;		
 		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;
		#100 button = 1;
		#100 button = 0;
		$finish;
		
		// Add stimulus here

	end
	
	always #10 clk = ~clk;
      
endmodule

