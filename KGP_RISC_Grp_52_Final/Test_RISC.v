`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:46:47 11/08/2022
// Design Name:   Main_Module
// Module Name:   /home/vapippal/Desktop/KGP_RISC_Grp_52/Test_RISC.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_Module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_RISC;

	// Inputs
	reg clk;
	reg rst;
	reg select; 
	reg [9:0] InputFPGA;

	wire [15:0] OutputFPGA; 

	// Instantiate the Unit Under Test (UUT)
	Main_Module uut (
		.clk(clk), 
		.rst(rst),
		.InputFPGA(InputFPGA),
		.OutputFPGA(OutputFPGA)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1; 
		select = 0; 

		// Wait 100 ns for global reset to finish
		#1; 
		rst = 1; 
		#2;
		rst = 0;
		#3;
		#5000;
		// Add stimulus here
	end
	
	always @(*) begin
		if (uut.RFile.Registers[1] == 1) begin
			$display("Content of return value register $v0: %d", uut.RFile.Registers[2]);
			$finish;
		end
	end
	
	always
	#5 clk = ~clk;
	
      
endmodule

