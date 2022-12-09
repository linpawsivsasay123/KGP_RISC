`timescale 1ns / 1ps

module MUX_2X1(Input1, Input2, Select, Output);
    input [31:0] Input1;
    input [31:0] Input2;
    input Select;
    output reg [31:0] Output;
    
    always @(*) begin
        if(Select == 0)
            Output = Input1;
        else
            Output = Input2;
    end
endmodule