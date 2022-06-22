`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:14:34 12/20/2020
// Design Name:   ms1
// Module Name:   D:/fundamentallogic/Exp13-Wallclock/ms1_test.v
// Project Name:  Exp13-Wallclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ms1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ms1_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire ms1;

	// Instantiate the Unit Under Test (UUT)
	ms1 uut (
		.clk(clk), 
		.rst(rst), 
		.ms1(ms1)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		fork
			forever #10 clk<=~clk; 
			begin
			#800; rst=1; 
			#100; rst=0; 
			end
		join

	end
      
endmodule

