// Verilog test fixture created from schematic D:\fundamentallogic\Locker\RS_EN.sch - Sat Nov 21 14:44:49 2020

`timescale 1ns / 1ps

module RS_EN_RS_EN_sch_tb();

// Inputs
   reg C;
   reg R;
   reg S;

// Output
   wire Q;
   wire Qn;

// Bidirs

// Instantiate the UUT
   RS_EN UUT (
		.Q(Q), 
		.Qn(Qn), 
		.C(C), 
		.R(R), 
		.S(S)
   );
// Initialize Inputs
		integer i; 
      initial begin
		C = 0;
		R = 0;
		S = 0;
		#40;
		
		S=1;
		R=0; 
		#100;
		
		S=0;
		R=1; 
		#100;
		
		S=1;
		R=1; 
		#100; 
		
		S=0;
		R=0; 
		#100; 
		
		S=1;
		R=0; 
		#100; 
		end

		always @*
			for(i=0; i<20; i=i+1)begin
			#50; 
			C<=~C;
		end
endmodule
