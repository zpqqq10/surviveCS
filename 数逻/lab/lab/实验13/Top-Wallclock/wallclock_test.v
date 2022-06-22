`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:45 12/22/2020
// Design Name:   wallclock
// Module Name:   D:/fundamentallogic/Top-Wallclock/wallclock_test.v
// Project Name:  Top-Wallclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallclock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallclock_test;

	// Inputs
	reg clk;
	reg reset;
	reg inc;
	reg [2:0] adj_push;

	// Outputs
	wire [15:0] Time_out;
	wire [3:0] s_point;
	wire [3:0] t_blink;

	// Instantiate the Unit Under Test (UUT)
	wallclock uut (
		.clk(clk), 
		.reset(reset), 
		.inc(inc), 
		.adj_push(adj_push), 
		.Time_out(Time_out), 
		.s_point(s_point), 
		.t_blink(t_blink)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		inc = 0;
		adj_push = 0;

		fork
			forever #5 clk<=~clk; 
			begin
			#20; reset=1; 
			#20; reset=0; 
			end
		join

	end
      
endmodule

