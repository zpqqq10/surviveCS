`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:35 12/07/2020 
// Design Name: 
// Module Name:    Reg32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg32(input clk, 
				 input [31:0]D, 
				 input clear, 
				 input Load, 
				 output [31:0]Q
    );
	
	wire [31:0]Qbar; 
	wire [31:0]Di; 
	
	assign Di=Load?D:Q; 
	BUFG cc(clk1, clk); 	
	
	Regs_8bit R0(.clk(clk1), .D(Di[7:0]), .clear(clear), .Q(Q[7:0])); 
	Regs_8bit R1(.clk(clk1), .D(Di[15:8]), .clear(clear), .Q(Q[15:8])); 
	Regs_8bit R2(.clk(clk1), .D(Di[23:16]), .clear(clear), .Q(Q[23:16])); 
	Regs_8bit R3(.clk(clk1), .D(Di[31:24]), .clear(clear), .Q(Q[31:24])); 
	

endmodule
