`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:48 12/07/2020
// Design Name:   Regs_8_32
// Module Name:   D:/fundamentallogic/Exp11-REGS/reg832_test.v
// Project Name:  Exp11-REGS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Regs_8_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg832_test;

	// Inputs
	reg clk;
	reg cr;
	reg WE;
	reg [2:0] Addr_W;
	reg [2:0] Addr_A;
	reg [2:0] Addr_B;
	reg [31:0] Di;

	// Outputs
	wire [31:0] QA;
	wire [31:0] QB;

	// Instantiate the Unit Under Test (UUT)
	Regs_8_32 uut (
		.clk(clk), 
		.cr(cr), 
		.WE(WE), 
		.Addr_W(Addr_W), 
		.Addr_A(Addr_A), 
		.Addr_B(Addr_B), 
		.Di(Di), 
		.QA(QA), 
		.QB(QB)
	);

	integer i=0; 
	initial begin
		// Initialize Inputs
		clk = 0;
		cr = 1;
		WE = 0;
		Addr_W = 0;
		Addr_A = 0;
		Addr_B = 0;
		Di = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	fork
		forever #20 clk<=~clk; 
		#10; cr=0; 
		begin
			for(i=0; i<8; i=i+2)begin
				Addr_W<=i; 
				Addr_A<=i; 
				Addr_B<=i; 
				Di<=32'hAAAAAAA0+i; 
				#10; WE<=1; 
				#15; WE<=0; 
				#5; 
				
				Addr_W<=i+1; 
				Addr_A<=i+1; 
				Addr_B<=i+1;
				Di<=32'h55555551+i; 
				#20; WE<=1; 
				#15; WE<=0; 
				#15; 
			end
			
			WE=0; 
			for(i=0; i<8; i=i+1)begin
				#30; 
				Addr_W<=i; 
				Addr_A<=i; 
				Addr_B<=i; 
			end
		end
	join

	end
      
endmodule

