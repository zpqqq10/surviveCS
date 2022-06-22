`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:30 01/12/2021
// Design Name:   marquee
// Module Name:   D:/fundamentallogic/Top-Wallclock/martest.v
// Project Name:  Top-Wallclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: marquee
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module martest;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] led_8;
	wire [31:0] led_16;
	wire [3:0]  count; 

	// Instantiate the Unit Under Test (UUT)
	marquee uut (
		.clk(clk), 
		.led_8(led_8), 
		.led_16(led_16),
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		fork
			forever #10 clk<=~clk; 
		join
		
	end
      
endmodule

