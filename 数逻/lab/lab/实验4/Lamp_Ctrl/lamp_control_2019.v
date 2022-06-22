`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:58 09/30/2019 
// Design Name: 
// Module Name:    lamp_control_2019 
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
module lamp_control_2019(input wire clk, 
	input wire S1, 
	input wire S2, 
	input wire S3,
	output wire F
	);

	parameter C_NUM = 28;
	parameter C_MAX = 28'hFFF_FFFF;

	reg [C_NUM-1:0] count;
	wire [C_NUM-1:0] c_next;
	
	initial begin	//≥ı ºªØ
   	count = C_MAX;
	end
	
	assign w=S1^S2^S3; 
	
	assign F = ((count < C_MAX) ? 1'b1 : 1'b0);

	always@(posedge clk)
	begin
		if(w == 1'b1)
			count = 0;
		else if(count < C_MAX)
			count = c_next;
	end
	
	assign c_next = count + 1'b1;
endmodule
