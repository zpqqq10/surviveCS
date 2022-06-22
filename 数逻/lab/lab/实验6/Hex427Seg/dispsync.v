`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:31 10/27/2020 
// Design Name: 
// Module Name:    dispsync 
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
module dispsync(input [15:0]Hexs, 
					 input [1:0]Scan, 
					 input [3:0]point, 
					 input [3:0]LES, 
					 output reg [3:0]Hex, 
					 output reg p,
					 output reg LE, 
					 output reg [3:0]AN
					 );

	always @* begin
		case(Scan)
			2'b00:begin Hex<=Hexs[3:0];   AN<=4'b1110; p=point[0]; LE=LES[0]; end
			2'b01:begin Hex<=Hexs[7:4];   AN<=4'b1101; p=point[1]; LE=LES[1]; end
			2'b10:begin Hex<=Hexs[11:8];  AN<=4'b1011; p=point[2]; LE=LES[2]; end
			2'b11:begin Hex<=Hexs[15:12]; AN<=4'b0111; p=point[3]; LE=LES[3]; end
		endcase
	end

endmodule
