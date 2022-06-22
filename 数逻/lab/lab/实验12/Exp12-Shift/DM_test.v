// Verilog test fixture created from schematic D:\fundamentallogic\Exp12-Shift\DM74LS194.sch - Sun Dec 13 00:47:08 2020

`timescale 1ns / 1ps

module DM74LS194_DM74LS194_sch_tb();

// Inputs
   reg CR;
   reg clk;
   reg SL;
   reg SR;
   reg A;
   reg B;
   reg C;
   reg D;
   reg S1;
   reg S0;

// Output
   wire QA;
   wire QB;
   wire QC;
   wire QD;

// Bidirs

// Instantiate the UUT
   DM74LS194 UUT (
		.CR(CR), 
		.clk(clk), 
		.QA(QA), 
		.QB(QB), 
		.QC(QC), 
		.QD(QD), 
		.SL(SL), 
		.SR(SR), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.S1(S1), 
		.S0(S0)
   );
// Initialize Inputs
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
