`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:35 12/20/2020 
// Design Name: 
// Module Name:    wallclock 
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
module wallclock(input clk, 
					  input reset, 
					  input inc, 
					  input [2:0]adj_push, 
					  output reg [15:0]Time_out, 
					  output reg [3:0]s_point, 
					  output reg [3:0]t_blink
    );

	reg adjust=0; 
	reg [1:0]d_state; 
	reg [1:0]t_state; 
	reg d_sec=1, d_min, d_hour; 
	wire [7:0]second, minute, hour; 
	wire [11:0]msecond; 
	
	ms1 millis(.clk(clk), .rst(reset), .ms1(clk_1ms)); 
	clk_1s m_msecond(.clk(clk_1ms), .reset(~reset), .ms(msecond), .clk_1s(clk_1s)); //produce second
	count_60 m_sec(.clk(clk_1s), .reset(d_sec), .six_ten(second), .count_carry(clk_1min));  //produce minute
	count_60 m_min(.clk(clk_1min), .reset(reset), .six_ten(minute), .count_carry(clk_1hour)); //produce hour
	count_24 m_hour(.clk(clk_1hour), .reset(reset), .two_four(hour), .count_carry(clk_1day)); //produce day
	

	always@(posedge adj_push[2])
		adjust<=~adjust; 
		
	always@(posedge adj_push[0])
		if(!adjust)d_state<=d_state+1; 
		else t_state<=t_state+1; 
	
	assign clk_1= (d_min & inc) | (!d_min & clk_1min); 
	assign clk_2= (d_hour & inc) | (!d_hour & clk_1hour); 
	
	always@*begin
		case(d_state)
		2'b00:begin Time_out<={minute[7:0],second[7:0]}; 
						s_point<={second[0],second[0],2'b00}; 
				end
		2'b01:begin Time_out<={hour[7:0],minute[7:0]}; 
						s_point<={2'b00,second[0],second[0]}; 
				end
		2'b10:begin Time_out<={second[3:0],msecond[11:8],msecond[7:4],msecond[3:0]}; 
						s_point<={second}; 
				end
		2'b11:begin Time_out<={second[3:0],msecond[11:8],msecond[7:4],msecond[3:0]}; 
						s_point<={4'b0000}; 
				end
		endcase
		if(!adjust)t_blink<=4'b0000; 
		else begin
			case({d_state[0],t_state})
			2'b00:begin t_blink<=4'b0011; d_sec<=~adj_push[1]; end
			2'b01:begin t_blink<=4'b1100; d_min<=adj_push[1]; end
			2'b10:begin t_blink<=4'b1100; d_hour<=adj_push[1]; end
			2'b11:begin t_blink<=4'b0011; d_min<=adj_push[1]; end
			endcase
		end
	end
	
endmodule
