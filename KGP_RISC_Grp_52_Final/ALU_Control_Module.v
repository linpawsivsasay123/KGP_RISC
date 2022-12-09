`timescale 1ns / 1ps

module ALU_Control_Module(OPCode, FuncCode, ALUOps);
    input [5:0] OPCode, FuncCode;
    output reg [3:0] ALUOps;

    always @(*) begin
        if(OPCode == 6'b000000) begin
            if(FuncCode == 6'b000001) //add
                ALUOps <= 4'b1010;
            else if(FuncCode == 6'b000101) // comp
                ALUOps <= 4'b1111;
				else if(FuncCode == 6'b000100) // diff
					 ALUOps <= 4'b1011;
            else if(FuncCode == 6'b000010)//and
                ALUOps <= 4'b1000;
            else if(FuncCode == 6'b000011)//xor
                ALUOps <= 4'b1001;
            else if(FuncCode == 6'b001100)//shll
                ALUOps <= 4'b0000;
            else if(FuncCode == 6'b001000)//shllv
                ALUOps <= 4'b0100;
            else if(FuncCode == 6'b001110)//shrl
                ALUOps <= 4'b0001;
            else if(FuncCode == 6'b001010)//shrlv
                ALUOps <= 4'b0101;
            else if(FuncCode == 6'b001111)//shra
                ALUOps <= 4'b0010;	
            else if(FuncCode == 6'b001011)//shrav
                ALUOps <= 4'b0011;
				else
					ALUOps <= 4'b0000;
        end
        else if(OPCode == 6'b001000) begin // addi 
            ALUOps <= 4'b1010;
        end 
        else if(OPCode == 6'b001001) begin // compi 
            ALUOps <= 4'b1111;
        end 
        else if(OPCode == 6'b010000) begin // lw
            ALUOps <= 4'b1010;
        end 
        else if(OPCode == 6'b011000) begin // sw
            ALUOps <= 4'b1010;
        end 
        else if(OPCode == 6'b101000) begin // b
            // do nothing
				ALUOps <= 4'b0000;
        end 
        else if(OPCode == 6'b100000) begin // br (value of A)
            ALUOps <= 4'b1110;
        end 
        else if(OPCode == 6'b101001) begin // bcy
            // do nothing
				ALUOps <= 4'b0000;
        end 
        else if(OPCode == 6'b101010) begin // bncy
            // do nothing
				ALUOps <= 4'b0000;
        end 
        else if(OPCode == 6'b110000) begin // bltz (value of A)
            ALUOps <= 4'b1110;;
        end 
        else if(OPCode == 6'b110001) begin // bz (value of A)
            ALUOps <= 4'b1110;
        end 
        else if(OPCode == 6'b110010) begin // bnz (value of A)
            ALUOps <= 4'b1110;
        end
        else if(OPCode == 6'b101011) begin // bl
            // do nothing
				ALUOps <= 4'b0000;
        end 
		  else begin
				// by defualt
				ALUOps <= 4'b0000;
		  end
    end
endmodule