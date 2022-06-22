`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:23 01/12/2021 
// Design Name: 
// Module Name:    marquee 
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
module marquee(input clk,
					output reg [31:0] led_8,
					output reg [31:0] led_16, 
					output reg [3:0]count
    );
	 
	 reg [1:0] state=2'b00;
	 initial begin
		led_8[31:0] = 32'h000000FE;
		led_16[31:0] = 32'h0000FFFE;
		count=0; 
	 end
	 always@(posedge clk)begin
		case(state)
			2'b00:begin
				if(count==15) begin
					led_8[7:0]<=8'b00000001;
					led_16[15:0]<=16'b0000000000000001;
					state<=2'b01;
					count<=0;
				end
				else begin
					led_8[0]<=led_8[7];
					led_8[1]<=led_8[0];
					led_8[2]<=led_8[1];
					led_8[3]<=led_8[2];
					led_8[4]<=led_8[3];
					led_8[5]<=led_8[4];
					led_8[6]<=led_8[5];
					led_8[7]<=led_8[6];
					led_16[0]<=led_16[15];
					led_16[1]<=led_16[0];
					led_16[2]<=led_16[1];
					led_16[3]<=led_16[2];
					led_16[4]<=led_16[3];
					led_16[5]<=led_16[4];
					led_16[6]<=led_16[5];
					led_16[7]<=led_16[6];
					led_16[8]<=led_16[7];
					led_16[9]<=led_16[8];
					led_16[10]<=led_16[9];
					led_16[11]<=led_16[10];
					led_16[12]<=led_16[11];
					led_16[13]<=led_16[12];
					led_16[14]<=led_16[13];
					led_16[15]<=led_16[14];
					count<=count+1;
				end
			end
			2'b01:begin
				if(count==15) begin
					led_8[7:0]<=8'b00001100;
					led_16[15:0]<=16'b00000000110000000;
					state<=2'b10;
					count<=0;
				end
				else begin
					led_8[0]<=led_8[7];
				led_8[1]<=led_8[0];
				led_8[2]<=led_8[1];
				led_8[3]<=led_8[2];
				led_8[4]<=led_8[3];
				led_8[5]<=led_8[4];
				led_8[6]<=led_8[5];
				led_8[7]<=led_8[6];
				led_16[0]<=led_16[15];
				led_16[1]<=led_16[0];
				led_16[2]<=led_16[1];
				led_16[3]<=led_16[2];
				led_16[4]<=led_16[3];
				led_16[5]<=led_16[4];
				led_16[6]<=led_16[5];
				led_16[7]<=led_16[6];
				led_16[8]<=led_16[7];
				led_16[9]<=led_16[8];
				led_16[10]<=led_16[9];
				led_16[11]<=led_16[10];
				led_16[12]<=led_16[11];
				led_16[13]<=led_16[12];
				led_16[14]<=led_16[13];
				led_16[15]<=led_16[14];
				count<=count+1;
				end
			end
			2'b10:begin
				if(count==7)begin
					led_8[7:0]<=8'b11100111;
					led_16[15:0]<=16'b1111111001111111;
					count<=count+1; 
				end
				else if(count==15) begin
					led_8[7:0]<=8'hFE;
					led_16[15:0]<=16'hFFFE;					
					state<=2'b00;
					count<=0;
				end
				else begin
					count<=count+1;
				led_8[0]<=led_8[1];
				led_8[1]<=led_8[2];
				led_8[2]<=led_8[3];
				led_8[3]<=led_8[0];
				led_8[4]<=led_8[7];
				led_8[5]<=led_8[4];
				led_8[6]<=led_8[5];
				led_8[7]<=led_8[6];
				led_16[0]<=led_16[1];
				led_16[1]<=led_16[2];
				led_16[2]<=led_16[3];
				led_16[3]<=led_16[4];
				led_16[4]<=led_16[5];
				led_16[5]<=led_16[6];
				led_16[6]<=led_16[7];
				led_16[7]<=led_16[0];
				led_16[8]<=led_16[15];
				led_16[9]<=led_16[8];
				led_16[10]<=led_16[9];
				led_16[11]<=led_16[10];
				led_16[12]<=led_16[11];
				led_16[13]<=led_16[12];
				led_16[14]<=led_16[13];
				led_16[15]<=led_16[14];
				end
			end
			2'b11:begin
			end
		endcase
	 end


endmodule
