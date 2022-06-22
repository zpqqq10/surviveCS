`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:05 12/20/2020
// Design Name:   count_60
// Module Name:   D:/fundamentallogic/Exp13-Wallclock/count_60test.v
// Project Name:  Exp13-Wallclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_60
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count_60test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] six_ten;
	wire count_carry;

	// Instantiate the Unit Under Test (UUT)
	count_60 uut (
		.clk(clk), 
		.reset(reset), 
		.six_ten(six_ten), 
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

