`timescale 1ns / 1ps

module Test_ALU_Module_Bit;
	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALUOps;
	reg [4:0] ShiftAmount; 

	// Outputs
	wire [31:0] Output; 
	wire Carry_Out; 
	
	wire FlagZero;
	wire FlagSign;
	wire FlagEqual;

	// Instantiate the Unit Under Test (UUT)
	ALU_Module uut (
		.A(A), 
		.B(B), 
		.ShiftAmount(ShiftAmount),
		.ALUOps(ALUOps),
        .Output(Output),
        .Carry_Out(Carry_Out),
		  .FlagZero(FlagZero),
		  .FlagSign(FlagSign),
		  .FlagEqual(FlagEqual)
		  
	);

	initial begin
		$monitor ("Test Bench for ALU Module");
		$monitor ("A = %d, B = %d, ALUOps = %d, Shift Amount = %d, Output = %d, Carry_Out = %d\n", A, B, ALUOps, ShiftAmount, Output, Carry_Out);
		// Initialize Inputs
		#100;
		A = 32'd234; B = 32'd523; ALUOps = 4'b1111; ShiftAmount = 5'd2;	// comp, compi
		#100;
		A = 32'd234; B = 32'd1; ALUOps = 4'b1111; ShiftAmount = 5'd2;	// comp, compi
		// Shift Testing
		#100
      A = 32'd234; B = 32'd2; ALUOps = 4'b0000; ShiftAmount = 5'd2;		// shll 
		#100;
      A = 32'd234; B = 32'd3; ALUOps = 4'b0100; ShiftAmount = 5'd2;		// shllv
		#100;
      A = 32'd234; B = 32'd2; ALUOps = 4'b0001; ShiftAmount = 5'd2;		// shrl
		#100;
      A = 32'd234; B = 32'd3; ALUOps = 4'b0101; ShiftAmount = 5'd2; 		// shrlv
		#100;
      A = 32'd234; B = 32'd2; ALUOps = 4'b0010; ShiftAmount = 5'd2;		// shra
		#100;
      A = 32'd234; B = 32'd3; ALUOps = 4'b0011; ShiftAmount = 5'd2;		// shrav
		#100;
		// Arithmetic Operations
		A = 32'd234; B = 32'd523; ALUOps = 4'b1000; ShiftAmount = 5'd2;	// and
		#100;
		A = 32'd234; B = 32'd523; ALUOps = 4'b1001; ShiftAmount = 5'd2;	// xor
		#100; 
		A = 32'd4; B = 32'd16; ALUOps = 4'b1011; ShiftAmount = 5'd2;	// diff
		#100;
		A = 32'd234; B = 32'd523; ALUOps = 4'b1010; ShiftAmount = 5'd2;	// add, addi, lw, sw

	end
endmodule