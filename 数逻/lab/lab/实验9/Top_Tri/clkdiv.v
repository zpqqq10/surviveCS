`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:27:23 11/24/2020 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(input clk, 
				  input rst, 
				  input Sel_CLK,
				  input pulse, 
				  output CK, 
				  output reg [31:0]clkdiv
    );

	always@(posedge clk or posedge rst)begin
		if(rst)clkdiv<=0; 
		else clkdiv<=clkdiv+1'b1; 
	end
	assign CK=(Sel_CLK)?pulse:clkdiv[26]; 

endmodule
