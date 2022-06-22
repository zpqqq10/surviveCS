`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:22 01/05/2021 
// Design Name: 
// Module Name:    Top_frame 
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
module Top_frame(input clk,
					  input RSTN, 
					  input [3:0]K_COL, 
					  input PS2C, 
					  input PS2D, 
					  output [4:0]K_ROW, 
					  input [15:0]SW, 
					  output CR, 
					  output [3:0]AN,
					  output [7:0]SEGMENT, 
					  output [7:0]LED, 
					  output RDY, 
					  output readn, 
					  output SEGCLR, 
					  output SEGEN, 
					  output SEGDT, 
					  output SEGCLK, 
					  output LEDCLK, 
					  output LEDDT, 
					  output LEDCLR, 
					  output LEDEN, 
					  output wire hs, 
					  output wire vs,
					  output wire [3:0]R, G, B
    );

	wire rst; 
	wire [31:0]Div, Ai, Bi, Disp_num, score, maxscore; 
	wire [4:0]Key_out; 
	wire [3:0]Pulse, BTN_OK; 
	wire [15:0]SW_OK; 
	wire [7:0]blink, point_out, LE_out;
	clkdiv M1(.clk(clk), .rst(rst), .clkdiv(Div)); 
	
	SAnti_jitter M2(.RSTN(RSTN), .clk(clk), .Key_y(K_COL), .Key_x(K_ROW), .SW(SW), 
						 .readn(readn), .CR(CR), .Key_out(Key_out), .Key_ready(RDY), 
						 .pulse_out(Pulse), .BTN_OK(BTN_OK), .SW_OK(SW_OK), .rst(rst)); 
						 
	Display M3(.flash(Div[25]), .Hexs(Disp_num), .point(point_out), .LES(LE_out), 
				  .SW0(SW_OK[0]), .Start(Div[10]), .rst(rst), .clk(clk), .seg_clrn(SEGCLR),
				  .SEG_PEN(SEGEN), .seg_sout(SEGDT), .seg_clk(SEGCLK)); 
	
	wire [4:0]SW_M4; 
	assign SW_M4={SW_OK[7:5], SW_OK[15], SW_OK[0]}; 
	SEnter_2_32 M4(.clk(clk), .Din(Key_out), .D_ready(RDY), .BTN(BTN_OK[2:0]), 
						.Ctrl(SW_M4), .readn(readn), .Ai(Ai), .Bi(Bi), .blink(blink)); 
						
	wire [63:0]M5point, M5les; 
	assign M5point={Div[31:0], Div[31:0]};
	assign M5les={48'h000000000000, blink[7:0], blink[7:0]}; 
	Multi_8CH32 M5(.clk(clk), .rst(rst), .EN(1'b1), .Test(SW_OK[7:5]), .point_in(M5point), 
						.LES(M5les), .data0(score), .data1(maxscore), .data2(Ai), .data3(Bi), 
						.point_out(point_out), .LE_out(LE_out), .Disp_num(Disp_num)); 
	
	wire [31:0]LEDdata; 
	GPIO M6(.clk(clk), .rst(rst), .Start(Div[20]), .EN(1'b1), .P_Data(LEDdata), .led_clk(LEDCLK), 
			  .led_sout(LEDDT), .led_clrn(LEDCLR), .LED_PEN(LEDEN)); 
			  
	wire [2:0]M7_sc; 
	assign M7_sc={SW_OK[1], Div[19:18]}; 
	Seg7_Dev M7(.Scan(M7_sc), .Hexs(Disp_num), .point(point_out), .LES(LE_out), .SW0(SW_OK[0]), 
					.flash(Div[25]), .AN(AN), .SEGMENT(SEGMENT)); 
					
	PIO M8(.clk(clk), .rst(1'b0), .EN(1'b1), .PData_in(LEDdata), .LED(LED)); 
	
	Top M9(.DIV(Div), .rst(rst), .SW(SW_OK), .BTN_OK(BTN_OK), .Key(Key_out), .hs(hs), .vs(vs), .R(R), .G(G), .B(B), 
			 .PS2C(PS2C), .PS2D(PS2D), .score(score), .maxscore(maxscore), .LED(LEDdata)); 
endmodule
