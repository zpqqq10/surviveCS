`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:25 11/11/2020 
// Design Name: 
// Module Name:    PIO 
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
module PIO(input clk, 
			  input rst, 
			  input EN, 
			  input [31:0] PData_in, 
			  output [7:0] LED, 
			  output reg [31:0] GPIOf0
    );

	assign LED=~GPIOf0[7:0]; 
	always @(negedge clk or posedge rst) begin
		if(rst)GPIOf0<=32'h00000000; 
		else if(EN)GPIOf0<=PData_in; 
		else GPIOf0<=GPIOf0; 
	end

endmodule
