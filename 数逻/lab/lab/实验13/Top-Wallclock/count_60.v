`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:00 12/20/2020 
// Design Name: 
// Module Name:    count_60 
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
module count_60(input clk, 
					 input reset, 
					 output reg [7:0]six_ten, 
					 output reg count_carry
    );

	always@(posedge clk)begin
		if(reset || six_ten==8'b01011001)begin
			count_carry<=1; 
			six_ten<=0; 
		end
		else if(six_ten[3:0]==4'b1001) begin 
			six_ten[7:4]<=six_ten[7:4]+1; 
			six_ten[3:0]<=0; 
		end
		else begin
			six_ten[3:0]<=six_ten[3:0]+1;
			count_carry<=0;
		end
	end

endmodule
