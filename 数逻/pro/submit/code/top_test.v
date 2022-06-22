`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:50:34 01/04/2021
// Design Name:   Top
// Module Name:   D:/fundamentallogic/flappybird/top_test.v
// Project Name:  flappybird
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_test;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] SW;

	// Outputs
	wire hs;
	wire vs;
	wire [3:0] R;
	wire [3:0] G;
	wire [3:0] B;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.rst(rst), 
		.SW(SW), 
		.hs(hs), 
		.vs(vs), 
		.R(R), 
		.G(G), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		SW = 0;

		fork 
			forever #10 clk<=~clk; 
		join

	end
      
endmodule

