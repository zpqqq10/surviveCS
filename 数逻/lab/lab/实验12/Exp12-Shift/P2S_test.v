`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:57:45 12/15/2020
// Design Name:   P2S
// Module Name:   D:/fundamentallogic/Exp12-Shift/P2S_test.v
// Project Name:  Exp12-Shift
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: P2S
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module P2S_test;

	// Inputs
	reg clk;
	reg rst;
	reg Start;
	reg [15:0] PData;

	// Outputs
	wire s_clk;
	wire s_clrn;
	wire sout;
	wire EN;

	// Instantiate the Unit Under Test (UUT)
	P2S uut (
		.clk(clk), 
		.rst(rst), 
		.Start(Start), 
		.PData(PData), 
		.s_clk(s_clk), 
		.s_clrn(s_clrn), 
		.sout(sout), 
		.EN(EN)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		Start = 0;
		PData = 0;

		#50; 
		rst=0;
		PData=64'hAAAAAAAAAAAAAAAA; 
		fork
			forever #20 clk<=~clk; 
			begin
				#50; Start=1; 
				#100; Start=0; PData=64'h5555555555555555; 
				#600; Start=1; 
				#100; Start=0; 
			end
		join
	end
      
endmodule

