`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    sp2_ver 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module ps2_keyboard_driver(clk,clk_delay,rst_n,ps2k_clk,ps2k_data,data_out);
 
input clk;		//50M时钟信号
input clk_delay; //防抖动延迟时钟
input rst_n;	//复位信号
input ps2k_clk;	//PS2接口时钟信号
input ps2k_data;		//PS2接口数据信号
output [15:0] data_out;
//------------------------------------------
reg ps2k_clk_r0,ps2k_clk_r1,ps2k_clk_r2;	//ps2k_clk状态寄存器
//wire pos_ps2k_clk; 	// ps2k_clk上升沿标志位
wire neg_ps2k_clk;	// ps2k_clk下降沿标志位
//设备发送向主机的数据在下降沿有效，首先检测PS2k_clk的下降沿
//利用上面逻辑赋值语句可以提取得下降沿，neg_ps2k_clk为高电平时表示数据可以被采集

always @ (posedge clk or negedge rst_n) begin //判断连续低电平
	if(!rst_n) begin
			ps2k_clk_r0 <= 1'b0;
			ps2k_clk_r1 <= 1'b0;
			ps2k_clk_r2 <= 1'b0;
		end
	else begin								//锁存状态，进行滤波
			ps2k_clk_r0 <= ps2k_clk;
			ps2k_clk_r1 <= ps2k_clk_r0;
			ps2k_clk_r2 <= ps2k_clk_r1;
		end
end
 
assign neg_ps2k_clk = ~ps2k_clk_r1 & ps2k_clk_r2;	//下降沿
 
//-----------------数据采集-------------------------
reg[7:0] ps2_byte_r=0;		//PC接收来自PS2的一个字节数据存储器
reg[7:0] temp_data=0;	   //当前接收数据寄存器
reg[3:0] num=0;				//计数寄存器
 
always @ (posedge clk or negedge rst_n) begin 
	if(!rst_n) begin
			num <= 4'd0;
			temp_data <= 8'd0;
		end
	else if(neg_ps2k_clk) begin	//检测到ps2k_clk的下降沿
			case (num)
				4'b0000:	num <= 4'b0001;
				4'b0001:	begin
							num <= 4'b0011;
							temp_data[0] <= ps2k_data;	//bit0
						end
				4'b0011:	begin
							num <= 4'b0010;
							temp_data[1] <= ps2k_data;	//bit1
						end
				4'b0010:	begin
							num <= 4'b0110;
							temp_data[2] <= ps2k_data;	//bit2
						end
				4'b0110:	begin
							num <= 4'b0111;
							temp_data[3] <= ps2k_data;	//bit3
						end
				4'b0111:	begin
							num <= 4'b1111;
							temp_data[4] <= ps2k_data;	//bit4
						end
				4'b1111:	begin
							num <= 4'b1110;
							temp_data[5] <= ps2k_data;	//bit5
						end
				4'b1110:	begin
							num <= 4'b1100;
							temp_data[6] <= ps2k_data;	//bit6
						end
				4'b1100:	begin
							num <= 4'b1000;
							temp_data[7] <= ps2k_data;	//bit7
						end
				4'b1000:	begin
							num <= 4'b1010;	//奇偶校验位，不做处理
						end
				4'b1010: begin
							num <= 4'b0000;	// num清零
						end
				default: ;
				endcase
		end	
end

reg key_f0=1'b0;		   //松键标志位，置1表示接收到数据8'hf0，再接收到下一个数据后清零
reg judge=1'b0;   //判断大写锁定键位是否按下
reg record=1'b0, done=1'b0;
//+++++++++++++++数据处理开始++++++++++++++++=============
always @ (posedge clk or negedge rst_n) begin	//接收数据的相应处理，这里只对1byte的键值进行处理
	if(!rst_n) begin
			key_f0 <= 1'b0;
		end
	else  if(record & !done) begin  record<=1'b0; done<=1'b1; end
	else  if(num==4'd10) ///一帧数据是否采集完。
			begin	//刚传送完一个字节数据
				if(!done)
					if(temp_data == 8'hf0) begin 
						key_f0 <= 1'b1;//判断该接收数据是否为断码
					end
					else begin
						if(!key_f0)              //说明有键按下
						begin
							 if(temp_data==8'h58) begin
								   judge <= !judge;//大写锁定值改变
									done<=1'b1;
							  end
							  else begin
									ps2_byte_r <= temp_data;//锁存当前键值
									record<=1'b1;
							  end
						end
						else begin
							if(neg_ps2k_clk) key_f0 <= 1'b0;
						end
					end
			end
	else done<=0;
end

wire ret;
pbdebounce_Once Once(
					.clk(clk),
					.clk_delay(clk_delay),
					.in(record),
					.pbout(ret)
					);
	
reg[15:0] ps2_asci=16'h0;	//接收数据的相应ASCII码
always @ (clk) begin
if(judge) begin         //如果大写锁定开启，转换为大写字母
	case (ps2_byte_r)		//键值通码转换为ASCII码
	   8'h00: ps2_asci <= 16'h0; //清零位
		8'h15: ps2_asci <= 16'h8051; //Q
		8'h1d: ps2_asci <= 16'h8057;	//W
		8'h24: ps2_asci <= 16'h8045;	//E
		8'h2d: ps2_asci <= 16'h8052;	//R
		8'h2c: ps2_asci <= 16'h8054;	//T
		8'h35: ps2_asci <= 16'h8059;	//Y
		8'h3c: ps2_asci <= 16'h8055;	//U
		8'h43: ps2_asci <= 16'h8049;	//I
		8'h44: ps2_asci <= 16'h804f;	//O
		8'h4d: ps2_asci <= 16'h8050;	//P				  	
		8'h1c: ps2_asci <= 16'h8041;	//A
		8'h1b: ps2_asci <= 16'h8053;	//S
		8'h23: ps2_asci <= 16'h8044;	//D
		8'h2b: ps2_asci <= 16'h8046;	//F
		8'h34: ps2_asci <= 16'h8047;	//G
		8'h33: ps2_asci <= 16'h8048;	//H
		8'h3b: ps2_asci <= 16'h804a;	//J
		8'h42: ps2_asci <= 16'h804b;	//K
		8'h4b: ps2_asci <= 16'h804c;	//L
		8'h1a: ps2_asci <= 16'h805a;	//Z
		8'h22: ps2_asci <= 16'h8058;	//X
		8'h21: ps2_asci <= 16'h8043;	//C
		8'h2a: ps2_asci <= 16'h8056;	//V
		8'h32: ps2_asci <= 16'h8042;	//B
		8'h31: ps2_asci <= 16'h804e;	//N
		8'h3a: ps2_asci <= 16'h804d;	//M
		8'h16: ps2_asci <= 16'h8021;	//!
		8'h1e: ps2_asci <= 16'h8040;	//@
		8'h26: ps2_asci <= 16'h8023;	//#
		8'h25: ps2_asci <= 16'h8024;	//$
		8'h2e: ps2_asci <= 16'h8025;	//%
		8'h36: ps2_asci <= 16'h805e;	//^
		8'h3d: ps2_asci <= 16'h8026;	//&
		8'h3e: ps2_asci <= 16'h802a;	//*
		8'h46: ps2_asci <= 16'h8028;	//(
		8'h45: ps2_asci <= 16'h8029;	//)
		8'h4c: ps2_asci <= 16'h803a;	//:
		8'h52: ps2_asci <= 16'h8022;	//"
		8'h41: ps2_asci <= 16'h803c;	//<
		8'h49: ps2_asci <= 16'h803e;	//>
		8'h4a: ps2_asci <= 16'h803f;	//?
		8'h5d: ps2_asci <= 16'h807c;	//|
		8'h54: ps2_asci <= 16'h807b;	//{
		8'h5b: ps2_asci <= 16'h807d;	//}
		8'h4e: ps2_asci <= 16'h805f;	//_
		8'h55: ps2_asci <= 16'h802b;	//+
		8'h29: ps2_asci <= 16'h8020;	//空格
		8'h5A: ps2_asci <= 16'h800d;  //回车
		default: ps2_asci <=16'h0;	
		endcase
		//judge<=1'b0;
	end
	else begin           //使用小写字母
	case (ps2_byte_r)		//键值通码转换为ASCII码
	   8'h0:  ps2_asci <= 16'h0; //清零位
		8'h15: ps2_asci <= 16'h8071; //q
		8'h1d: ps2_asci <= 16'h8077;	//w
		8'h24: ps2_asci <= 16'h8065;	//e
		8'h2d: ps2_asci <= 16'h8072;	//r
		8'h2c: ps2_asci <= 16'h8074;	//t
		8'h35: ps2_asci <= 16'h8079;	//y
		8'h3c: ps2_asci <= 16'h8075;	//u
		8'h43: ps2_asci <= 16'h8069;	//i
		8'h44: ps2_asci <= 16'h806f;	//o
		8'h4d: ps2_asci <= 16'h8070;	//p				  	
		8'h1c: ps2_asci <= 16'h8061;	//a
		8'h1b: ps2_asci <= 16'h8073;	//s
		8'h23: ps2_asci <= 16'h8064;	//d
		8'h2b: ps2_asci <= 16'h8066;	//f
		8'h34: ps2_asci <= 16'h8067;	//g
		8'h33: ps2_asci <= 16'h8068;	//h
		8'h3b: ps2_asci <= 16'h806a;	//j
		8'h42: ps2_asci <= 16'h806b;	//k
		8'h4b: ps2_asci <= 16'h806c;	//l
		8'h1a: ps2_asci <= 16'h807a;	//z
		8'h22: ps2_asci <= 16'h8078;	//x
		8'h21: ps2_asci <= 16'h8063;	//c
		8'h2a: ps2_asci <= 16'h8076;	//v
		8'h32: ps2_asci <= 16'h8062;	//b
		8'h31: ps2_asci <= 16'h806e;	//n
		8'h3a: ps2_asci <= 16'h806d;	//m
		8'h16: ps2_asci <= 16'h8031;	//1
		8'h1e: ps2_asci <= 16'h8032;	//2
		8'h26: ps2_asci <= 16'h8033;	//3
		8'h25: ps2_asci <= 16'h8034;	//4
		8'h2e: ps2_asci <= 16'h8035;	//5
		8'h36: ps2_asci <= 16'h8036;	//6
		8'h3d: ps2_asci <= 16'h8037;	//7
		8'h3e: ps2_asci <= 16'h8038;	//8
		8'h46: ps2_asci <= 16'h8039;	//9
		8'h45: ps2_asci <= 16'h8030;	//0
		8'h4c: ps2_asci <= 16'h803b;	//;
		8'h52: ps2_asci <= 16'h8027;	//'
		8'h41: ps2_asci <= 16'h802c;	//,
		8'h49: ps2_asci <= 16'h802e;	//.
		8'h4a: ps2_asci <= 16'h802f;	// /
		8'h5d: ps2_asci <= 16'h805c;	//\
		8'h54: ps2_asci <= 16'h805b;	//[
		8'h5b: ps2_asci <= 16'h805d;	//]
		8'h4e: ps2_asci <= 16'h802d;	//-
		8'h55: ps2_asci <= 16'h803d;	//=
		8'h29: ps2_asci <= 16'h8020;	//空格
		8'h5A: ps2_asci <= 16'h800d;  //回车
		default: ps2_asci <=16'h0;	
		endcase
	 end
end
assign data_out = ret?ps2_asci:16'h0;	 
endmodule
