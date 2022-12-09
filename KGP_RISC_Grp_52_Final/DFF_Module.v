`timescale 1ns/1ps

module DFF_Module(in, clk, rst, out);
	input in, clk, rst; 
    output reg out; 
    always @(posedge clk or posedge rst) begin
        if(rst)
            out <= 1'b0;
        else 
            out <= in;
    end
endmodule