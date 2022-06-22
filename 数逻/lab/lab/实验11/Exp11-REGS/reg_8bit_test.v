`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:30 12/07/2020
// Design Name:   Regs_8bit
// Module Name:   D:/fundamentallogic/Exp11-REGS/reg_8bit_test.v
// Project Name:  Exp11-REGS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Regs_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_8bit_test;

	// Inputs
	reg clk;
	reg [7:0] D;
	reg clear;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	Regs_8bit uut (
		.clk(clk), 
		.D(D), 
		.clear(clear), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		D = 0;
		clear = 0;

	fork
		forever #20 clk<=~clk; 
		begin
		D=8'hA5; 
		#50; clear=1; 
		#40; clear=0; 
		end
	join

	end
      
endmodule

