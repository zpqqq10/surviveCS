`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:22 10/27/2020 
// Design Name: 
// Module Name:    Hex2Seg 
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
module Hex2Seg(input [3:0]Hex, 
					input LE, 
					input point, 
					input flash, 
					output [7:0]Segment
    );

	wire en=LE&flash; 
	MC14495_ZJU MSEG(.D3(Hex[3]),.D2(Hex[2]),.D1(Hex[1]),.D0(Hex[0]),.LE(en),.point(point),.a(a),.b(b),
						  .c(c),.d(d),.e(e),.f(f),.g(g),.p(p));
	assign Segment={a, b, c, d, e, f, g, p}; 

endmodule
