`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:07 11/11/2020 
// Design Name: 
// Module Name:    GPIO 
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
module GPIO(input clk, 
				input rst, 
				input Start, 
				input EN, 
				input [31:0] P_Data, 
				output led_clk,
				output led_sout, 
				output led_clrn, 
				output LED_PEN, 
				output reg [31:0] GPIOf0
    );

	wire [15:0] LED; 
	assign LED=~{GPIOf0[0],GPIOf0[1],GPIOf0[2],GPIOf0[3],
					 GPIOf0[4],GPIOf0[5],GPIOf0[6],GPIOf0[7],
					 GPIOf0[8],GPIOf0[9],GPIOf0[10],GPIOf0[11],
					 GPIOf0[12],GPIOf0[13],GPIOf0[14],GPIOf0[15]}; 

	always @(negedge clk or posedge rst)
		if(rst) GPIOf0<=32'h00000000; 
		else if(EN) GPIOf0<=P_Data; 
		else GPIOf0<=GPIOf0; 
		
	LED_P2S #(.DATA_BITS(16),.DATA_COUNT_BITS(4))
	LED_P2S(clk,rst,Start,LED,led_clk,led_clrn,led_sout,LED_PEN);
	
endmodule
