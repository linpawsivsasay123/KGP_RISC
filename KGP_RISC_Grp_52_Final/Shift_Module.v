`timescale 1ns / 1ps

module Shift_Module(Input, Shift_Amount, Output, Type, Direction);
    input [31:0] Input; 
    input [4:0] Shift_Amount; 
    output reg [31:0] Output; 
    input Type; 
    input Direction;
    
    always @(*) begin
        if(Type == 0) begin
            if(Direction == 0)
                Output = Input << Shift_Amount;
            else
                Output = Input >> Shift_Amount;
        end
        else
            Output = Input >>> Shift_Amount;
    end
endmodule
