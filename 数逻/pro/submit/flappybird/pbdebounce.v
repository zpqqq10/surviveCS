`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    pbdebounce 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
//当收到一个短脉冲后，过大约16个clk_delay周期输出一个clk周期的短脉冲
module pbdebounce_Once(
	input wire clk,
	input wire clk_delay,
	input wire in, 
	output reg pbout
	);
 
	reg start=0, done=0;
	reg [15:0] pbshift=16'b0;

	always@(posedge clk) begin
		if(in & !start)begin
			start<=1'b1;
		end
		if(done & start)begin
			start<=1'b0;
			pbout<=1'b1;
		end else 
			pbout<=1'b0;
	end

	always@(posedge clk_delay or negedge start)begin
		if(!start)
		begin pbshift<=16'h0; done<=0; end
		else	begin
			if(pbshift==16'hFFFF)begin
				pbshift<=16'h0;
				done<=1'b1;
			end
			else begin
				pbshift<={pbshift[14:0],1'b1};
				done<=1'b0;
			end
		end 
	end
endmodule
