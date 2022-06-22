`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:55 01/05/2021 
// Design Name: 
// Module Name:    Seg7_Dev 
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
module Seg7_Dev(input [7:0]LES, 
					 input [7:0]point, 
					 input [31:0]Hexs, 
					 input [2:0]Scan, 
					 input flash, 
					 input SW0, 
					 output [3:0]AN, 
					 output [7:0]SEGMENT
    );

	wire LE, LEo, s, p; 
	wire [7:0]I0, I1; 
	wire [3:0]Hex; 
	
	ScanSync SSC(.LES(LES), .point(point), .Hexs(Hexs), .Scan(Scan), .Hexo(Hex), 
					 .LE(LE), .p(p), .AN(AN)); 
	Seg_map SMAP(.Hexs(Hexs), .Scan(Scan), .Segg_map(I0)); 
	MC14495_ZJU MC(.D0(Hex[0]), .D1(Hex[1]), .D2(Hex[2]), .D3(Hex[3]), .LE(LEo), 
						.point(p), .a(I1[0]), .b(I1[1]), .c(I1[2]), .d(I1[3]), 
						.e(I1[4]), .f(I1[5]), .g(I1[6]), .p(I1[7])); 
						
	MUX2T1_8 MUXA(.s(s), .I0(I0), .I1(I1), .o(SEGMENT)); 
	
	AND2 ANDG(.I0(flash), .I1(LE), .O(LEo)); 
	INV INTER(.I(SW0), .O(s)); 

endmodule
