// Verilog test fixture created from schematic D:\Hex27Seg\MC14495_ZJU.sch - Tue Oct 27 09:48:26 2020

`timescale 1ns / 1ps

module MC14495_ZJU_MC14495_ZJU_sch_tb();

// Inputs
   reg D0;
   reg D1;
   reg D2;
   reg D3;
   reg LE;
   reg point;

// Output
   wire a;
   wire b;
   wire c;
   wire d;
   wire e;
   wire f;
   wire g;
   wire p;

// Bidirs

// Instantiate the UUT
   MC14495_ZJU UUT (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.LE(LE), 
		.p(p), 
		.point(point)
   );
// Initialize Inputs
	integer i; 
   initial begin
		D0 = 0;
		D1 = 0;
		D2 = 0;
		D3 = 0;
		LE = 0;
		point = 0;
		for (i=0; i<=15; i=i+1)begin
			#50; 
			{D3, D2, D1, D0}=i; 
			point = i; 
		end
		
		#50; 
		i=i+1; 
		assign LE=1; 
   end
endmodule
