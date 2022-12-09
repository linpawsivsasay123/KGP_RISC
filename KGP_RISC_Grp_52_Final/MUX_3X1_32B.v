`timescale 1ns / 1ps

module MUX_3X1_32B(Input1, Input2, Input3, Select, Output);
    input [31:0] Input1, Input2, Input3; 
    input [1:0] Select; 
    output reg [31:0] Output; 
	 
    always @(*) begin
        if(Select == 2'b00)
            Output <= Input1;
        else if(Select == 2'b01)
            Output <= Input2;
        else
            Output <= Input3;
    end

endmodule