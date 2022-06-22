`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:57 11/11/2020 
// Design Name: 
// Module Name:    MUX2T1_64 
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
module MUX2T1_64(input sel, 
					  input [63:0] a, 
					  input [63:0] b, 
					  output reg [63:0] o
    );

	always @* begin
		case(sel)
			1'b0:o<=a; 
			1'b1:o<=b; 
		endcase
	end

endmodule
