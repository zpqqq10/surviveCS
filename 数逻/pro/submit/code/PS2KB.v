`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:42 01/05/2021 
// Design Name: 
// Module Name:    PS2KB 
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
module PS2KB(
				 input clk,rst,
				 input PS2C,PS2D,
				 input rdn,
				 output reg ready,
				 output reg [15:0] ascii

    );
	localparam Idle=2'b00,Rece=2'b01,Parity=2'b10,Stop=2'b11;
	reg [9:0]PS2_shift = 10'b1000000000;
	reg [1:0]state=0;
	reg [1:0]Fall_clk;
	reg [7:0]data;

	always@(posedge clk)
		Fall_clk<={Fall_clk[0],PS2C};	// check the clock
		always @(posedge clk)begin
			if(rst) begin					// reset
				PS2_shift<=10'b1000000000;
				state<=Idle;
				ready<=0;
			end else begin
				if(!rdn&&ready) ready<=0;
				else ready<=ready;
			case(state)
				Idle:begin
					PS2_shift<=10'b1000000000;
					if((Fall_clk==2'b10)&&(!PS2D))
						state<=Rece;
					else state <=Idle;
				end
				Rece:begin
					if(Fall_clk==2'b10)begin
						if(PS2_shift[0]&&PS2D) begin
							ready<={^PS2_shift[9:1]};
							data<=PS2_shift[8:1];
							state<=Idle;
						end else begin
							PS2_shift <={PS2D,PS2_shift[9:1]};
							state<=Rece;
						end
					end else state<=Rece;
				end
			endcase
		end
	end

	reg [15:0] ps2_ascii=16'h0000;
	reg judge=1'b0;
	always@(posedge clk) begin
		if(data==8'h58)begin
			judge <=!judge;
		end
		if(!ready)begin
			ascii<=16'h0;
		end
		else begin
		if(judge) begin
			case(data)				// key-> ascii
				8'h00: ps2_ascii <= 16'h0; //clear
				8'h15: ps2_ascii <= 16'h8051; //Q
				8'h1d: ps2_ascii <= 16'h8057;	//W
				8'h24: ps2_ascii <= 16'h8045;	//E
				8'h2d: ps2_ascii <= 16'h8052;	//R
				8'h2c: ps2_ascii <= 16'h8054;	//T
				8'h35: ps2_ascii <= 16'h8059;	//Y
				8'h3c: ps2_ascii <= 16'h8055;	//U
				8'h43: ps2_ascii <= 16'h8049;	//I
				8'h44: ps2_ascii <= 16'h804f;	//O
				8'h4d: ps2_ascii <= 16'h8050;	//P				  	
				8'h1c: ps2_ascii <= 16'h8041;	//A
				8'h1b: ps2_ascii <= 16'h8053;	//S
				8'h23: ps2_ascii <= 16'h8044;	//D
				8'h2b: ps2_ascii <= 16'h8046;	//F
				8'h34: ps2_ascii <= 16'h8047;	//G
				8'h33: ps2_ascii <= 16'h8048;	//H
				8'h3b: ps2_ascii <= 16'h804a;	//J
				8'h42: ps2_ascii <= 16'h804b;	//K
				8'h4b: ps2_ascii <= 16'h804c;	//L
				8'h1a: ps2_ascii <= 16'h805a;	//Z
				8'h22: ps2_ascii <= 16'h8058;	//X
				8'h21: ps2_ascii <= 16'h8043;	//C
				8'h2a: ps2_ascii <= 16'h8056;	//V
				8'h32: ps2_ascii <= 16'h8042;	//B
				8'h31: ps2_ascii <= 16'h804e;	//N
				8'h3a: ps2_ascii <= 16'h804d;	//M
				8'h16: ps2_ascii <= 16'h8021;	//!
				8'h1e: ps2_ascii <= 16'h8040;	//@
				8'h26: ps2_ascii <= 16'h8023;	//#
				8'h25: ps2_ascii <= 16'h8024;	//$
				8'h2e: ps2_ascii <= 16'h8025;	//%
				8'h36: ps2_ascii <= 16'h805e;	//^
				8'h3d: ps2_ascii <= 16'h8026;	//&
				8'h3e: ps2_ascii <= 16'h802a;	//*
				8'h46: ps2_ascii <= 16'h8028;	//(
				8'h45: ps2_ascii <= 16'h8029;	//)
				8'h4c: ps2_ascii <= 16'h803a;	//:
				8'h52: ps2_ascii <= 16'h8022;	//"
				8'h41: ps2_ascii <= 16'h803c;	//<
				8'h49: ps2_ascii <= 16'h803e;	//>
				8'h4a: ps2_ascii <= 16'h803f;	//?
				8'h5d: ps2_ascii <= 16'h807c;	//|
				8'h54: ps2_ascii <= 16'h807b;	//{
				8'h5b: ps2_ascii <= 16'h807d;	//}
				8'h4e: ps2_ascii <= 16'h805f;	//_
				8'h55: ps2_ascii <= 16'h802b;	//+
				8'h29: ps2_ascii <= 16'h8020;	//space
				8'h5A: ps2_ascii <= 16'h800d; //enter
				default: ps2_ascii <=16'h0;	
				endcase
				end
		else begin           //small letter
			case (data)		//key -> ascii
				8'h0:  ps2_ascii <= 16'h0; 	//clear
				8'h15: ps2_ascii <= 16'h8071; //q
				8'h1d: ps2_ascii <= 16'h8077;	//w
				8'h24: ps2_ascii <= 16'h8065;	//e
				8'h2d: ps2_ascii <= 16'h8072;	//r
				8'h2c: ps2_ascii <= 16'h8074;	//t
				8'h35: ps2_ascii <= 16'h8079;	//y
				8'h3c: ps2_ascii <= 16'h8075;	//u
				8'h43: ps2_ascii <= 16'h8069;	//i
				8'h44: ps2_ascii <= 16'h806f;	//o
				8'h4d: ps2_ascii <= 16'h8070;	//p				  	
				8'h1c: ps2_ascii <= 16'h8061;	//a
				8'h1b: ps2_ascii <= 16'h8073;	//s
				8'h23: ps2_ascii <= 16'h8064;	//d
				8'h2b: ps2_ascii <= 16'h8066;	//f
				8'h34: ps2_ascii <= 16'h8067;	//g
				8'h33: ps2_ascii <= 16'h8068;	//h
				8'h3b: ps2_ascii <= 16'h806a;	//j
				8'h42: ps2_ascii <= 16'h806b;	//k
				8'h4b: ps2_ascii <= 16'h806c;	//l
				8'h1a: ps2_ascii <= 16'h807a;	//z
				8'h22: ps2_ascii <= 16'h8078;	//x
				8'h21: ps2_ascii <= 16'h8063;	//c
				8'h2a: ps2_ascii <= 16'h8076;	//v
				8'h32: ps2_ascii <= 16'h8062;	//b
				8'h31: ps2_ascii <= 16'h806e;	//n
				8'h3a: ps2_ascii <= 16'h806d;	//m
				8'h16: ps2_ascii <= 16'h8031;	//1
				8'h1e: ps2_ascii <= 16'h8032;	//2
				8'h26: ps2_ascii <= 16'h8033;	//3
				8'h25: ps2_ascii <= 16'h8034;	//4
				8'h2e: ps2_ascii <= 16'h8035;	//5
				8'h36: ps2_ascii <= 16'h8036;	//6
				8'h3d: ps2_ascii <= 16'h8037;	//7
				8'h3e: ps2_ascii <= 16'h8038;	//8
				8'h46: ps2_ascii <= 16'h8039;	//9
				8'h45: ps2_ascii <= 16'h8030;	//0
				8'h4c: ps2_ascii <= 16'h803b;	//;
				8'h52: ps2_ascii <= 16'h8027;	//'
				8'h41: ps2_ascii <= 16'h802c;	//,
				8'h49: ps2_ascii <= 16'h802e;	//.
				8'h4a: ps2_ascii <= 16'h802f;	// /
				8'h5d: ps2_ascii <= 16'h805c;	//\
				8'h54: ps2_ascii <= 16'h805b;	//[
				8'h5b: ps2_ascii <= 16'h805d;	//]
				8'h4e: ps2_ascii <= 16'h802d;	//-
				8'h55: ps2_ascii <= 16'h803d;	//=
				8'h29: ps2_ascii <= 16'h8020;	//¿Õ¸ñ
				8'h5A: ps2_ascii <= 16'h800d;  //»Ø³µ
				default: ps2_ascii <=16'h0;	
				endcase
		 end
		 ascii<=(!rst)?ps2_ascii:16'h0;
	end
end

endmodule
