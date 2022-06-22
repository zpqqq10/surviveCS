`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:26:36 12/14/2020
// Design Name:   shift_32
// Module Name:   D:/fundamentallogic/Exp12-Shift/shift_32_test.v
// Project Name:  Exp12-Shift
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_32_test;

	// Inputs
	reg clk;
	reg clear;
	reg S1;
	reg S0;
	reg SL;
	reg SR;
	reg [31:0] PData;

	// Outputs
	wire [31:0] Q;

	// Instantiate the Unit Under Test (UUT)
	shift_32 uut (
		.clk(clk), 
		.clear(clear), 
		.S1(S1), 
		.S0(S0), 
		.SL(SL), 
		.SR(SR), 
		.PData(PData), 
		.Q(Q)
	);

	initial begin
		clear = 1;
		clk = 0;
		SL = 0;
		SR = 0;
		S1 = 1;
		S0 = 1;
		PData = 32'h80000000; 
		fork
			forever #20 clk<=~clk;  
			#5; clear=0; 
			begin
				{S1,S0}=2'b11;
				#10; 
				// right
				{S1,S0}=2'b01; SR=1; 
				#1320;  SR=0; 
				#1320;  
				// parallel
				PData = 32'hAAAAAAAA;
				{S1,S0}=2'b11; 
				#50; 
				PData = 32'h55555555;
				#50; 
				PData = 32'h00000000;
				#50;
				SL=1; 
				#50; 
				// left
				{S1,S0}=2'b10; 
				#1320; 
				// hold
				{S1,S0}=2'b00; 
				#50; 
				// left
				SL=0; 
				{S1,S0}=2'b10; 
				#1320; 
		
			end
		join
   end
      
endmodule

