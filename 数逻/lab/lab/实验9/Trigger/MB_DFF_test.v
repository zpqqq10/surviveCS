// Verilog test fixture created from schematic D:\fundamentallogic\Trigger\MB_DFF.sch - Sat Nov 21 16:17:10 2020

`timescale 1ns / 1ps

module MB_DFF_MB_DFF_sch_tb();

// Inputs
   reg D;
   reg Rn;
   reg Sn;
   reg Cp;

// Output
   wire Qn;
   wire Q;

// Bidirs

// Instantiate the UUT
   MB_DFF UUT (
		.D(D), 
		.Rn(Rn), 
		.Qn(Qn), 
		.Q(Q), 
		.Sn(Sn), 
		.Cp(Cp)
   );
// Initialize Inputs
	integer i; 
   initial begin
	D = 0;
	Rn = 1;
	Sn = 1;
	Cp = 0;
	#115; 
	D=1; 
	#20; 
	D=0; 
	#220; 
	
	D=1; 
	#20;
	D=0; 
	#70;
	
	D=1; 
	#20;
	D=0; 
	#130;
	
	D=1; 
	#20;
	D=0; 
	#80;
	
	Rn=1; 
	Sn=0; 
	#50; 
	Rn=0; 
	Sn=1; 
	#50; 
	Rn=0; 
	Sn=0; 
	#50; 
	Rn=1; 
	Sn=1; 
	#50; 
   end
	
	always@*
		for(i=0; i<40; i=i+1)begin
			#50; 
			Cp<=~Cp; 
		end
endmodule
