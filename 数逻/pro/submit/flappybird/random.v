`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:04 01/11/2021 
// Design Name: 
// Module Name:    random 
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
module random(input clk, 
				  input [7:0]seed,
				  input load, 
				  output reg [7:0]random
    );

	always@(posedge clk)begin
		if(load)begin
			random<=seed; 
		end
		else begin
			random[0]<=random[7]; 
			random[1]<=random[0]; 
			random[2]<=random[1]; 
			random[3]<=random[2]; 
			random[4]<=random[3]^random[7]; 
			random[5]<=random[4]^random[7]; 
			random[6]<=random[5]^random[7]; 
			random[7]<=random[6]; 
		end
	end

endmodule
