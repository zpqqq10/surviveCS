`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:38 11/24/2020 
// Design Name: 
// Module Name:    Top_Trigger 
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
module Top_Trigger(input clk_100mhz, 
						 input wire RSTN, 
						 input wire [3:0]K_COL, 
						 output wire [4:0]K_ROW, 
						 input wire [15:0]SW, 
						 output wire LEDCLK, 
						 output wire LEDDT, 
						 output wire LEDCLR, 
						 output wire LEDEN, 
						 output [7:0]LED
    );

	wire [31:0]clkdiv, PD; 
	wire [15:0]SW_OK; 
	wire [3:0]BTN_OK, pulse_out; 
	wire rst, CR, CK; 
	
	assign clk=clk_100mhz; 
	
	RS_Tri M1(.C(CK), 
				 .R(SW_OK[1]), 
				 .S(SW_OK[0]), 
				 .Q(PD[0]), 
				 .Qn(PD[1]), 
				 .Y(PD[2]));
	
	D_Tri M2(.C(CK), 
				.D(SW_OK[3]), 
				.Q(PD[3]), 
				.Qn(PD[4])); 
				
	MB_DFF M3(.Cp(CK), 
				 .D(SW_OK[4]), 
				 .Rn(SW_OK[6]), 
				 .Sn(SW_OK[5]), 
				 .Q(PD[5]), 
				 .Qn(PD[6])); 
				 
	SAnti_jitter U8(.clk(clk), 
						 .RSTN(RSTN), 
						 .readn(), 
						 .Key_y(K_COL), 
						 .Key_x(K_ROW), 
						 .SW(SW), 
						 .Key_out(), 
						 .Key_ready(), 
						 .pulse_out(), 
						 .BTN_OK(BTN_OK), 
						 .SW_OK(SW_OK), 
						 .CR(), 
						 .rst(rst)); 
	
	clkdiv U9(.clk(clk), 
				 .rst(rst), 
				 .Sel_CLK(SW[2]), 
				 .pulse(BTN_OK[0]), 
				 .clkdiv(clkdiv), 
				 .CK(CK)); 
	
	SPLIO U7(.clk(clk), 
				.rst(rst), 
				.Start(clkdiv[20]), 
				.EN(1'b1), 
				.P_Data(PD), 
				.LED(LED), 
				.led_clk(LEDCLK), 
				.led_sout(LEDDT), 
				.led_clrn(LEDCLR), 
				.LED_PEN(LEDEN), 
				.GPIOf0()); 

endmodule
