`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:05:59 12/20/2020
// Design Name:   clk_1s
// Module Name:   D:/fundamentallogic/Exp13-Wallclock/clk_1s_test.v
// Project Name:  Exp13-Wallclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_1s
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_1s_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [11:0] ms;
	wire clk_1s;

	// Instantiate the Unit Under Test (UUT)
	clk_1s uut (
		.clk(clk), 
		.reset(reset), 
		.ms(ms), 
		.clk_1s(clk_1s)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		fork
		forever #10 clk<=~clk; 
		begin
		reset=0; 
		#1100000; 
		reset=1; 		
		end
		join
	end
      
endmodule

