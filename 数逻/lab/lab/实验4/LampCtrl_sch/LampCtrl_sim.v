// Verilog test fixture created from schematic D:\LampCtrl_sch\LampCtrl.sch - Tue Oct 13 13:11:42 2020

`timescale 1ns / 1ps

module LampCtrl_LampCtrl_sch_tb();

// Inputs
   reg S3;
   reg S2;
   reg S1;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   LampCtrl UUT (
		.F(F), 
		.S3(S3), 
		.S2(S2), 
		.S1(S1)
   );
// Initialize Inputs
 	integer i;
	initial begin
		for(i=0;i<=8;i=i+1)begin
			{S3,S2,S1} <= i;
			#50;
		end
    end

endmodule