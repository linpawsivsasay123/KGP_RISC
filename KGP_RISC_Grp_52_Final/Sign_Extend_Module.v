`timescale 1ns / 1ps

module Sign_Extend_Module(Input, Output);
    input [15:0] Input;
	output [31:0] Output; 
	assign Output = {{16{Input[15]}}, Input};
endmodule