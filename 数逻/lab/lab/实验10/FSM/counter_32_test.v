`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:32:58 11/30/2020
// Design Name:   counter_32_rev
// Module Name:   D:/fundamentallogic/FSM/counter_32_test.v
// Project Name:  FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_32_rev
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_32_test;

	// Inputs
	reg clk;
	reg s;
	reg Load;
	reg [31:0] PData;

	// Outputs
	wire [31:0] cnt;
	wire Rc;

	// Instantiate the Unit Under Test (UUT)
	counter_32_rev uut (
		.clk(clk), 
		.s(s), 
		.Load(Load), 
		.PData(PData), 
		.cnt(cnt), 
		.Rc(Rc)
	);

	integer i; 
	initial begin
		// Initialize Inputs
		clk = 0;
		s = 1;
		Load = 1;
		PData = 32'hFFFFFFFF;
		#10; 
		
		clk=1; 
		#10; 
		
		PData=0; 
		Load=0; 
		#30; 

		for(i=0; i<30; i=i+1)begin
			clk=~clk; 
			#10; 
		end
		
		#50; 
		Load=0; 
		clk=0; 
		s=0; 
		
		for(i=0; i<30; i=i+1)begin
			clk=~clk; 
			#10; 
		end
        
		clk=0; 
		PData=0; 
		#10; 
		Load=1; 
		#10; 
		Load=0;
		#10; 
		clk=1; 		 

	end
      
endmodule

