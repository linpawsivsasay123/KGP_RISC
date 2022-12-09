`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:33:47 11/08/2022
// Design Name:   Jump_Control
// Module Name:   /home/vapippal/Desktop/KGP_RISC_Grp_52/Test_Branch_Module.v
// Project Name:  KGP_RISC_Grp_52
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Jump_Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Branch_Module;

	// Inputs
	reg [5:0] OpCode;
	reg FlagZero;
	reg FlagSign;
	reg FlagCarry;

	// Outputs
	wire FlagOutput;

	// Instantiate the Unit Under Test (UUT)
	Jump_Control uut (
		.OPCode(OpCode), 
		.FlagZero(FlagZero), 
		.FlagSign(FlagSign), 
		.FlagCarry(FlagCarry), 
		.FlagOutput(FlagOutput)
	);

	initial begin
		// Initialize Inputs
		OpCode = 0;
		FlagZero = 0;
		FlagSign = 0;
		FlagCarry = 0;

		// Wait 100 ns for global reset to finish
		#100;
		$monitor("OpCode = %b, FlagZero = %b, FlagSign = %b, FlagCarry = %b, out = %b", OpCode,FlagZero,FlagSign,FlagCarry,FlagOutput);
		OpCode = 6'b101000; #10; // op:b
		OpCode = 6'b100000; #10; // op:br
		OpCode = 6'b110000; FlagSign = 1; #10; //op:bltz rs < 0
		OpCode = 6'b110000; FlagSign = 0; #10; //op:bltz !rs < 0
		OpCode = 6'b110001; FlagZero = 1; #10; //op:bz rs == 0
		OpCode = 6'b110001; FlagZero = 0; #10; //op:bz rs != 0
		OpCode = 6'b110010; FlagZero = 0; #10; //op:bnz rs != 0
		OpCode = 6'b110010; FlagZero = 1; #10; //op:bnz rs == 0
		OpCode = 6'b101011; #10;  //op:bl
		OpCode = 6'b101001; FlagCarry = 1; #10; //op:bcy carry = 1
		OpCode = 6'b101010; FlagCarry = 0; #10; //op:bncy carry = 0
		OpCode = 6'b000000; #10;



	end
      
endmodule

