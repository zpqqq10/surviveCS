`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:57:20 12/19/2020 
// Design Name: 
// Module Name:    clk_1s 
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
module clk_1s(input clk, 
				  input reset, 
				  output reg [11:0]mms, 
				  output reg clk_1s
    );
	
	always@(posedge clk)begin
		if(!reset)begin
			mms<=0; 
		end
		else begin
			if(mms==12'b100110011001)begin
				mms<=0; 
				clk_1s<=1; 
			end
			else if(mms[7:0]==8'b10011001)begin
				mms[7:0]<=0; 
				mms[11:8]<=mms[11:8]+1; 
			end
			else if(mms[3:0]==4'b1001)begin
				mms[3:0]<=0; 
				mms[7:4]<=mms[7:4]+1; 
			end
			else begin
				mms[3:0]<=mms[3:0]+1; 
				clk_1s<=0; 
			end
		end
	end
	
endmodule
