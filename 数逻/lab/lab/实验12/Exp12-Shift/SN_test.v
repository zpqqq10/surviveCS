`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:04:41 12/15/2020
// Design Name:   SN74LS194
// Module Name:   D:/fundamentallogic/Exp12-Shift/SN_test.v
// Project Name:  Exp12-Shift
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SN74LS194
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SN_test;

	// Inputs
	reg S1;
	reg S0;
	reg SR;
	reg SL;
	reg clk;
	reg CR;
	reg A;
	reg B;
	reg C;
	reg D;

	// Outputs
	wire QA;
	wire QB;
	wire QC;
	wire QD;

	// Instantiate the Unit Under Test (UUT)
	SN74LS194 uut (
		.S1(S1), 
		.S0(S0), 
		.SR(SR), 
		.SL(SL), 
		.clk(clk), 
		.CR(CR), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.QA(QA), 
		.QB(QB), 
		.QC(QC), 
		.QD(QD)
	);

	initial begin
		CR = 0;
		clk = 0;
		SL = 0;
		SR = 0;
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		S1 = 0;
		S0 = 0;
		fork
			forever #20 clk<=~clk; 
			#10 CR=1; 
			begin
				// right
				{S1,S0}=2'b01; 
				SR=1; 
				#200; CR=0; 
				#40;  CR=1; 
				// left
				{S1,S0}=2'b10; 
				SL=1; 
				#170; 
				// parallel
				{S1,S0}=2'b11; 
				{A,B,C,D}=4'b1000; 
				SL=0; 
				SR=0; 
				#50; 
				// hold
				{S1,S0}=2'b00; 
				#50; 
				// right
				{S1,S0}=2'b01; 
				#170; 
				// parallel
				{S1,S0}=2'b11; 
				{A,B,C,D}=4'b0001; 
				#40; 
				// left
				{S1,S0}=2'b10; 
				#170; 
				
			end
		join
   end
endmodule

