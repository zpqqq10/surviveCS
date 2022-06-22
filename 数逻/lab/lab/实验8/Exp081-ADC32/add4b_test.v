// Verilog test fixture created from schematic D:\fundamentallogic\Exp081-ADC32\add4b.sch - Wed Nov 11 18:05:56 2020

`timescale 1ns / 1ps

module add4b_add4b_sch_tb();

// Inputs
   reg [3:0] ai;
   reg [3:0] bi;
   reg C0;

// Output
   wire GP;
   wire GG;
   wire [3:0] s;

// Bidirs

// Instantiate the UUT
   add4b UUT (
		.ai(ai), 
		.bi(bi), 
		.C0(C0), 
		.GP(GP), 
		.GG(GG), 
		.s(s)
   );
// Initialize Inputs
   integer i=0, j=0; 
       initial begin
		ai = 0;
		bi = 0;
		C0 = 0;
		
		for (i=0; i<=15; i=i+1)begin
			#50; 
			ai=i+1; 
			for(j=0; j<=15; j=j+1)begin
				#50; 
				bi=j+1; 
			end
		end
   end
endmodule
