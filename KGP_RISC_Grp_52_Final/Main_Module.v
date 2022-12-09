`timescale 1ns / 1ps

module Main_Module(
    input clk, select,
    input rst,input [9:0] InputFPGA,
	 output [15:0] OutputFPGA
    );

	wire [31:0] NextInstructionAddress, InstructionAddress;	
	Program_Counter pc(NextInstructionAddress, clk, rst, InstructionAddress); 
	
	wire [31:0] Instruction;					
	
	INSTR_MEM IM(clk, {2'b0,NextInstructionAddress[9:2]}, Instruction); 
	 
	wire fZero, fNegative, fCarry, fEqual; 
	wire aluSrc;               
	wire fMemRead, fMemWrite;     
	wire lblSel, jmpSel;         
	wire [1:0] regDst, memToReg;  
	wire regWrite;            
 
	wire [5:0] OPCode ,FunCode;
	wire [4:0] ShiftAmount, ReadRegister1, ReadRegister2;       
	wire [15:0] Immediate;
	assign OPCode  = Instruction[31:26];
	assign FunCode = Instruction[10:5];
	assign ShiftAmount   = Instruction[15:11];
	assign ReadRegister1      = Instruction[25:21];
	assign ReadRegister2      = Instruction[20:16];
	assign Immediate     = Instruction[15:0];

	
	wire [4:0] writeAddr;
	wire [31:0] writeData, readData1, readData2;
	wire [4:0] ra;
	assign ra = 5'b11111;
	
	
	MUX_3X1_5B mRegDst(ReadRegister1, ReadRegister2, ra, regDst, writeAddr);
	Register_File RFile(clk, rst, ReadRegister1, ReadRegister2, readData1, readData2, regWrite, writeAddr, writeData);

	
	Control_Module ctrl(
		OPCode,
		FunCode,
		fMemRead,
		fMemWrite,
		regWrite,
		regDst,
		memToReg,
		aluSrc,
		lblSel,
		jmpSel
		);

	
	wire [3:0] ALUCode;
	ALU_Control_Module  aluControl(
		OPCode,
		FunCode,
		ALUCode
	);

	
	wire [31:0] extendImm;
    Sign_Extend_Module signExtend(
		Immediate,
		extendImm
	);	

	
	wire [31:0] aluInp2;
	MUX_2X1_32B aluMux(
		readData2,
		extendImm,
		aluSrc,
		aluInp2
	);

	wire [31:0] aluResult;
	wire carryOut;
	
	ALU_Module alu(readData1, aluInp2, ShiftAmount, ALUCode, aluResult, carryOut, fZero, fNegative, fEqual);
	
	DFF_Module Carry(carryOut, clk, rst, fCarry); 
	
	
	wire fBranch;				   
	Jump_Control bContrl(
		OPCode,
		fZero,
		fNegative,
		fCarry,
		fBranch
	);

	
	wire ena;
	wire [31:0] memData;
	assign ena = fMemRead | fMemWrite | select;
	
	wire [9:0] addr_to_mem;
	assign addr_to_mem = select ? InputFPGA : {2'b00, aluResult[9:2]};
	
	DATA_MEM dataMem(
		~clk,					
		ena,
		fMemWrite,
		addr_to_mem,
		readData2,
		memData
	);
	assign OutputFPGA = memData[15:0];
	wire [31:0] pc4, jmpLabel, jmpImmLabel;
   
	
	assign pc4 = InstructionAddress + 32'd4;
	assign jmpLabel = {pc4[31:28], {Instruction[25:0], 2'b00}};
	assign jmpImmLabel = pc4 + {extendImm[29:0], 2'b00};       
	
	
	wire [31:0] lblSelOut, jmpSelOut;
	MUX_2X1_32B mLblSel(jmpLabel, jmpImmLabel, lblSel, lblSelOut);  
	MUX_2X1_32B mJmpSel(lblSelOut, readData1, jmpSel, jmpSelOut); 
	MUX_2X1_32B mBrnchSel(pc4, jmpSelOut, fBranch, NextInstructionAddress);
	MUX_3X1_32B mMemToReg(aluResult, memData, pc4, memToReg, writeData);
	
endmodule