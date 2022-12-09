`timescale 1ns / 1ps

module Test_Register_File;

	// Inputs
    reg clk;
    reg rst;
    reg Write; 
    reg [4:0] ReadRegister1;
    reg [4:0] ReadRegister2;
    reg [4:0] WriteRegister; 
    reg [31:0] WriteData; 

    // Outputs
    wire [31:0] ReadData1; 
    wire [31:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
        .clk(clk),
        .rst(rst),
        .ReadRegister1(ReadRegister1), 
        .ReadRegister2(ReadRegister2), 
        .ReadData1(ReadData1), 
        .ReadData2(ReadData2), 
        .Write(Write), 
        .WriteRegister(WriteRegister), 
        .WriteData(WriteData)
	);

    initial begin
        // Monitor the changes
        $monitor("time = %0d, ReadRegister1 = %d, ReadRegister2 = %d, ReadData1 = %d, ReadData2 = %d", $time, ReadRegister1, ReadRegister2, ReadData1, ReadData2);
        
        // Stimulus to verify the working of the register file
        clk = 1'b0; Write = 1'b0; WriteData = 75;
        #2 rst = 1'b1;
        #1 rst = 1'b0;
        #5 ReadRegister1 = 5'b10101; ReadRegister2 = 5'b00101; Write = 1'b1; WriteData = 45; WriteRegister = 5'b10101;
        #10 Write = 1'b0; WriteData = 45; WriteRegister = 5'b10101;
        #10 Write = 1'b1; WriteData = 69; WriteRegister = 5'b10111;
        #10 ReadRegister1 = 5'b10111; WriteData = 45; WriteRegister = 5'b10111;
        #5 $finish;
    end
    
    // Change the clock signal after every 5 time units
    always begin
        #5 clk = ~clk;
    end
      
endmodule