// Verilog test fixture created from schematic D:\fundamentallogic\Trigger\D_Tri.sch - Sat Nov 21 16:03:19 2020

`timescale 1ns / 1ps

module D_Tri_D_Tri_sch_tb();

// Inputs
   reg C;
   reg D;

// Output
   wire Q;
   wire Qn;

// Bidirs

// Instantiate the UUT
   D_Tri UUT (
		.C(C), 
		.D(D), 
		.Q(Q), 
		.Qn(Qn)
   );
// Initialize Inputs
   integer i; 
	initial begin
	C = 0;
	D = 0;
	#115;
	D = 1;
	#20;
	D = 0;
	#220;
	D = 1;
	#20;
	D = 0;
	#70;
	D = 1;
	#20;
	D = 0;
	#130;
	D = 1;
	#20;
	D = 0;
	#80;
	end
	
	always@*
		for(i=0; i<20; i=i+1)begin
			#50; 
			C<=~C; 
		end
endmodule
