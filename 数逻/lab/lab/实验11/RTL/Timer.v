`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:35 12/08/2020 
// Design Name: 
// Module Name:    Timer 
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
module Timer(input clk, 
				 input Up, 
				 input Load, 
				 input Start, 
				 input [31:0]Timing_const, 
				 output reg [31:0]cnt, 
				 output reg Alarm
    );
	 
	reg [1:0]go; 
	
	always@(posedge clk or posedge Start)begin
		if(Start)begin
			go<=2'b01; 
			Alarm<=0; 
			cnt<=Timing_const; 
		end
		else begin
			if(Load)cnt<=Timing_const; 
			else begin
				if(go==2'b01)begin
					Alarm<=0; 
					if(Up)cnt<=cnt+1; 
					else cnt<=cnt-1; 
				end
				if((~Up&(~|cnt))|(Up&(&cnt)))begin
					Alarm<=1; 
					go<=0; 
				end
			end
		end
	end

endmodule
