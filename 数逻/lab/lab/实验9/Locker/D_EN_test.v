// Verilog test fixture created from schematic D:\fundamentallogic\Locker\D_EN.sch - Sat Nov 21 15:05:20 2020

`timescale 1ns / 1ps

module D_EN_D_EN_sch_tb();

// Inputs
   reg D;
   reg C;

// Output
   wire Q;
   wire Qn;

// Bidirs

// Instantiate the UUT
   D_EN UUT (
		.Q(Q), 
		.Qn(Qn), 
		.D(D), 
		.C(C)
   );
// Initialize Inputs
   integer i, j; 
   initial begin
	D = 0;
	C = 0;
	#40; 
	for(i=0; i<5; i=i+1)begin
		D=~D; 
		#80; 
	end
   end
	
	always@*
	for(j=0; j<10; j=j+1)begin
		#50;
		C<=~C; 
	end
endmodule
