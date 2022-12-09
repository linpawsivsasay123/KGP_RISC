`timescale  1ns /1ps

module Control_Module(OpCode, FuncCode, memRead, memWrite, regWrite, regDst, mem2Reg, aluSrc, lblSel, jmpSel);

    input  [5:0] OpCode, FuncCode; 
    output memRead, memWrite; 
    output regWrite;
    output [1:0] regDst;
    output [1:0] mem2Reg;
    output aluSrc, lblSel, jmpSel;
 
	 assign jmpSel = ~OpCode[4] & ~OpCode[3];
	 assign lblSel = OpCode[5] & OpCode[4];
	 assign mem2Reg = OpCode[5:4];
	 assign memWrite = (OpCode == 6'b011000);
	 assign memRead = (OpCode == 6'b010000);
	 assign aluSrc = OpCode[4] | OpCode[3];
	 
	 assign regWrite = (~OpCode[5] & ~OpCode[4]) |
							 (~OpCode[5] & ~OpCode[3]) |
							 ( OpCode[1] &  OpCode[0]);
							 
	 assign regDst[0] = OpCode[4];
	 assign regDst[1] = OpCode[5]; 
 endmodule