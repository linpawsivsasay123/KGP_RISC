`timescale 1ns / 1ps

module wrapper_RISC(
input clk,
input rst,
input select,
input [9:0] InputFPGA,
output [15:0] OutputFPGA
    );
	 
Main_Module RISC(.clk(clk),.rst(rst),.select(select), .InputFPGA(InputFPGA), .OutputFPGA(OutputFPGA));

endmodule
