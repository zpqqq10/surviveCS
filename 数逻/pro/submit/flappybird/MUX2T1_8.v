`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:55 11/11/2020 
// Design Name: 
// Module Name:    MUX2T1_8 
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
module MUX2T1_8(input [7:0] I0, 
					 input [7:0] I1, 
					 input s, 
					 output reg [7:0] o
    );
	 
	 always @* begin 
		case(s)
			0:o<=I0; 
			1:o<=I1; 
		endcase
	 end

endmodule
