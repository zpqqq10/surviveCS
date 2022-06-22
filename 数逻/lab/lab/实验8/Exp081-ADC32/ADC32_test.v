// Verilog test fixture created from schematic D:\fundamentallogic\Exp081-ADC32\ADC32.sch - Wed Nov 11 18:58:45 2020

`timescale 1ns / 1ps

module ADC32_ADC32_sch_tb();

// Inputs
   reg C0;
   reg [31:0] a;
   reg [31:0] b;

// Output
   wire Co;
   wire [31:0] s;

// Bidirs

// Instantiate the UUT
   ADC32 UUT (
		.C0(C0), 
		.Co(Co), 
		.a(a), 
		.b(b), 
		.s(s)
   );
// Initialize Inputs
		integer i=0, j=0; 
       initial begin
		C0 = 0;
		a = 0;
		b = 0;
		#50; 
		a=32'h00000001; 
		b=32'h0000000F; 
		
		#50; 
		b=32'hAAAAAAAA; 
		
		#50; 
		b=32'h55555555; 
		
		#50; 
		b=32'hFFFFFFFF; 
		
		#50; 
		b=32'h00000000; 
		
		for(i=0; i<=15; i=i+1)begin
			#50; 
			a=a+32'h11111111; 
			for(j=0; j<=15; j=j+1)begin
				#50; 
				b=b+32'h11111111; 
			end
		end
		#50; 
		a=0; 
		b=0; 
		C0=1; 
		for(i=0; i<=15; i=i+1)begin
			#50; 
			a=a+32'h11111111; 
			for(j=0; j<=15; j=j+1)begin
				#50; 
				b=b+32'h11111111; 
			end
		end
   end
endmodule
