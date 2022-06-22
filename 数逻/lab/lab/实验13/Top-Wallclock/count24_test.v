`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:58:24 12/23/2020
// Design Name:   count_24
// Module Name:   D:/fundamentallogic/Top-Wallclock/count24_test.v
// Project Name:  Top-Wallclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_24
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count24_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] two_four;
	wire count_carry;

	// Instantiate the Unit Under Test (UUT)
	count_24 uut (
		.clk(clk), 
		.reset(reset), 
		.two_four(two_four), 
		.count_carry(count_carry)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		fork
			forever #10 clk<=~clk; 
			begin
				reset=1; 
				#100; 
				reset=0; 
			end
		join

	end
      
endmodule

