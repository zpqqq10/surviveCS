// Verilog test fixture created from schematic D:\fundamentallogic\Exp081-ADC32\add.sch - Wed Nov 11 16:48:39 2020

`timescale 1ns / 1ps

module add_add_sch_tb();

// Inputs
   reg ai;
   reg bi;
   reg ci;

// Output
   wire si;
   wire CO;
   wire Gi;
   wire Pi;

// Bidirs

// Instantiate the UUT
   add UUT (
		.ai(ai), 
		.bi(bi), 
		.ci(ci), 
		.si(si), 
		.CO(CO), 
		.Gi(Gi), 
		.Pi(Pi)
   );
// Initialize Inputs
		integer i; 
		initial begin
		ai = 0;
		bi = 0;
		ci = 0;
		for(i=0; i<=7; i=i+1)begin
			#50; 
			{ci,ai,bi}=i+1;
		end
   end
endmodule
