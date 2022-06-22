`timescale 1ns / 1ps
module LAMP_Test;
// Inputs
	reg clk;
	reg S1;
	reg S2;
	reg S3;
// Outputs
	wire F;
// Instantiate the Unit Under Test (UUT)
	LampCtrl uut (
		.clk(clk), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.F(F)
	);
	
   initial begin
		// Initialize Inputs
		clk = 0;
		S1 = 0;
		S2 = 0;
		S3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		S1 = 1;	
		#20 S1 = 0;
		#6000 S2 = 1;   //#2^8=256*20=5120
		#20 S2 = 0;
		#6000 S3 = 1;
		#20 S3 = 0;
		#6000;
	end
	
 	always begin
		#10 clk = 0;
		#10 clk = 1;
	end   
	
endmodule