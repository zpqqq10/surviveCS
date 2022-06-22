// Verilog test fixture created from schematic D:\fundamentallogic\FSM\Counter_4bit.sch - Mon Nov 30 23:20:07 2020

`timescale 1ns / 1ps

module Counter_4bit_Counter_4bit_sch_tb();

// Inputs
   reg clk;

// Output
   wire Qa;
   wire Qb;
   wire Qc;
   wire Qd;
   wire Rc;

// Bidirs

// Instantiate the UUT
   Counter_4bit UUT (
		.clk(clk), 
		.Qa(Qa), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.Rc(Rc)
   );
// Initialize Inputs
   initial begin
		clk = 0;
		forever #10 clk<=~clk; 
   end
endmodule
