`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:01 10/20/2020 
// Design Name: 
// Module Name:    Top_HTC138 
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
module Top_HTC138(input clk_100mhz, 

						input A,B,C,G,G_2A,G_2B,
						output wire ledclk,
						output wire ledsout,
						output wire ledclrn,
						output wire LEDEN,
						output [7:0] Y
						);

	wire [31:0]Div,PD;
	wire ny0,ny1,ny2,ny3,ny4,ny5,ny6,ny7;
	assign clk=clk_100mhz;
	
	HCT138_sch M5(A,B,C,G,G_2A,G_2B,ny0,ny1,ny2,ny3,ny4,ny5,ny6,ny7);
	assign Y=~{ny7,ny6,ny5,ny4,ny3,ny2,ny1,ny0};
	
	clkdiv U9(.clk(clk),.clkdiv(Div)); 
				
	LEDP2S #(.DATA_BITS(16),.DATA_COUNT_BITS(4),.DIR(0))
				U7(.clk(clk), 
					.rst(rst), 
					.Start(Div[20]),
					.PData({8'hFF,Y}),
					.sclk(ledclk),
					.sclrn(ledclrn),
					.sout(ledsout),
					.EN(LEDEN)
					);

endmodule
