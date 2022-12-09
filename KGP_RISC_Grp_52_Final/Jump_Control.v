`timescale  1ns /1ps

module Jump_Control(OPCode, FlagZero, FlagSign, FlagCarry, FlagOutput);
    // sets the flagoutput to 1 if we have to jump else 0
    input [5:0] OPCode;
	input FlagZero, FlagSign, FlagCarry;
	output reg FlagOutput;
	 
	wire b, bZero, bNZero, bSign, bCarry, bNCarry;
	
    always @(*) begin
        if(OPCode == 6'b101000) // b 
            FlagOutput <= 1; 
        else if(OPCode == 6'b101011) // bl
            FlagOutput <= 1;
        else if(OPCode == 6'b100000) // br
            FlagOutput <= 1;
        else if((OPCode == 6'b101001) & FlagCarry) // bcy
            FlagOutput <= 1;
        else if((OPCode == 6'b101010) & ~FlagCarry) // bncy
            FlagOutput <= 1;
        else if((OPCode == 6'b110000) & FlagSign) // bltz
            FlagOutput <= 1;
        else if((OPCode == 6'b110001) & FlagZero) // bz
            FlagOutput <= 1;
        else if((OPCode == 6'b110010) & ~FlagZero) // bnz
            FlagOutput <= 1;
        else 
            FlagOutput <= 0; 
    end	 
endmodule