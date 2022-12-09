`timescale 1ns / 1ps

module ALU_Module(A, B, ShiftAmount, ALUOps, Output, Carry_Out, FlagZero, FlagSign, FlagEqual);
    input [31:0] A;
    input [31:0] B;
    input [4:0] ShiftAmount; 
    output reg [31:0] Output; 
    output reg Carry_Out; 
    input [3:0] ALUOps;

    output FlagZero, FlagSign, FlagEqual; 
	
    wire [31:0] OutputA, OutputAdd, OutputAnd, OutputXor, OutputShift, OutputDiff; 
    wire Equal; 
	 
	 wire cout, equal; 

    wire [31:0] B_Inverse, A_1; 
    assign B_Inverse = ~B; 
    assign A_1 = 32'd1;

    reg [31:0] SelectA, SelectB; 
	 
	 reg [4:0] shamt; 

    always @(*) begin   
        if(ALUOps == 4'b1111) begin
            SelectA <= A_1; 
            SelectB <= B_Inverse; 
        end
        else if(ALUOps == 4'b0000 | ALUOps == 4'b0001 | ALUOps == 4'b0010) begin // shift is via immediate value and the value is present as shamt
            SelectA <= A; 
            SelectB <= ShiftAmount; 
				shamt <= ShiftAmount; 
        end 
        else begin
            SelectA <= A; 
            SelectB <= B; 
				shamt <= B[4:0]; 
        end
    end
	

    assign OutputA = SelectA; 
    assign OutputAnd = SelectA & SelectB; 
    assign OutputXor = SelectA ^ SelectB; 
	 Adder_Module Adder(SelectA, SelectB, OutputAdd, cout);
    Shift_Module Shifter(SelectA, shamt, OutputShift, ALUOps[1], ALUOps[0]);
    Diff_Module Differ(OutputXor, OutputDiff, equal);
	
    always @(*) begin 
        if(ALUOps[3] == 0)
            Output <= OutputShift; 
        else if(ALUOps == 4'b1000)
            Output <= OutputAnd; 
        else if(ALUOps == 4'b1001)
            Output <= OutputXor; 
        else if(ALUOps == 4'b1011)
            Output <= OutputDiff; 
        else if(ALUOps == 4'b1010)begin
            Output <= OutputAdd; 
				Carry_Out = cout;
				end
        else if(ALUOps == 4'b1111)
            Output <= OutputAdd; 
        else if(ALUOps == 4'b1110)
            Output <= OutputA; 
		  else 
				Output <= OutputA; 
    end

    assign FlagZero = (Output == 32'b0);
	 assign FlagSign = Output[31];
	 assign FlagEqual = equal; 

endmodule