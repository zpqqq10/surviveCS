// Verilog test fixture created from schematic D:\fundamentallogic\Trigger\RS_Tri.sch - Sat Nov 21 15:44:26 2020

`timescale 1ns / 1ps

module RS_Tri_RS_Tri_sch_tb();

// Inputs
   reg R;
   reg S;
   reg C;

// Output
   wire Y;
   wire Qn;
   wire Q;

// Bidirs

// Instantiate the UUT
   RS_Tri UUT (
		.R(R), 
		.S(S), 
		.Y(Y), 
		.Qn(Qn), 
		.Q(Q), 
		.C(C)
   );
// Initialize Inputs
   integer i;
	initial begin
	C = 0;
	S = 0;
	R = 0;
	#55;
	S = 1;
	#80;
	S = 0;
	#100;
	R = 1;
	#100;
	R = 0;
	#100;
	S = 1;
	#20;
	S = 0;
	#5;
	R = 1;
	#20;
	R = 0;
	#55;
	S = 1;
	#20;
	S = 0;
	#120;
	R = 1;
	S = 1;
	#100;
	R = 0;
	S = 0;
	end
	
	always @* 
		for (i=0;i<20;i=i+1) begin
			#50;
			C <= ~C;
	end
endmodule
