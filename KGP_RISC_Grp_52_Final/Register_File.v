`timescale 1ns / 1ps

module Register_File(clk, rst, ReadRegister1, ReadRegister2, ReadData1, ReadData2, Write, WriteRegister, WriteData);
    input clk, rst; 

    input [4:0] ReadRegister1, ReadRegister2;
    output [31:0] ReadData1; 
    output [31:0] ReadData2;

    input Write; 
    input [4:0] WriteRegister; 
    input [31:0] WriteData;

    reg [31:0] Registers[31:0]; 

    assign ReadData1 = Registers[ReadRegister1];
    assign ReadData2 = Registers[ReadRegister2]; 

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            Registers[0] = 0;
            Registers[1] = 0;
            Registers[2] = 0;
            Registers[3] = 0;
            Registers[4] = 0;
            Registers[5] = 0;
            Registers[6] = 0;
            Registers[7] = 0;
            Registers[8] = 0;
            Registers[9] = 0;
            Registers[10] = 0;
            Registers[11] = 0;
            Registers[12] = 0;
            Registers[13] = 0;
            Registers[14] = 0;
            Registers[15] = 0;
            Registers[16] = 0;
            Registers[17] = 0;
            Registers[18] = 0;
            Registers[19] = 0;
            Registers[20] = 0;
            Registers[21] = 0;
            Registers[22] = 0;
            Registers[23] = 0;
            Registers[24] = 0;
            Registers[25] = 0;
            Registers[26] = 0;
            Registers[27] = 0;
            Registers[28] = 0;
            Registers[29] = 0;
            Registers[30] = 0;
            Registers[31] = 0;
        end 
        else if(Write)
            Registers[WriteRegister] = WriteData;
    end

endmodule