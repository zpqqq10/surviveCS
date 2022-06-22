`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:53 01/11/2021
// Design Name:   random
// Module Name:   D:/fundamentallogic/flappybird/random_test.v
// Project Name:  flappybird
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: random
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module random_test;

	// Inputs
	reg clk;
	reg [7:0] seed;
	reg load;

	// Outputs
	wire [7:0] random;

	// Instantiate the Unit Under Test (UUT)
	random uut (
		.clk(clk), 
		.seed(seed), 
		.load(load), 
		.random(random)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		seed = 1;
		load = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here

		fork
			forever #10 clk<=~clk; 
			begin
			#100; load<=1; 
			#100; load<=0; 
			end
		join
	end
      
endmodule

