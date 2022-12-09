`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:42:33 11/08/2022
// Design Name:   INSTR_MEM
// Module Name:   /home/vapippal/Desktop/KGP_RISC_Grp_52/Test_Instr_Module.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: INSTR_MEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Instr_Module;

	// Inputs
	reg clka;
	reg [9:0] addra;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	INSTR_MEM uut (
		.clka(clka), 
		.addra(addra), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		addra = 0;

		// Wait 100 ns for global reset to finish
		#100;

		@(posedge clka)
		addra = 10'd0;
		
		#10; addra = 10'd0;
		#10; addra = 10'd1;
		
		// Add stimulus here
	end
	
	always
	#5 clka = ~clka;
      
endmodule

