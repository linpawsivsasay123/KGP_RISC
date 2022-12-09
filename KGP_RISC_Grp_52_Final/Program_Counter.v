`timescale 1ns / 1ps

module Program_Counter(Input, clk, rst, Output); 
    input [31:0] Input; 
    input clk; 
    input rst; 
    output reg [31:0] Output; 
	 
	always @(posedge clk or posedge rst) begin
	    if(rst)
		    Output <= -32'd4;
		else 
            Output <= Input;
	 end
endmodule