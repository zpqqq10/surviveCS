`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:44 11/03/2020 
// Design Name: 
// Module Name:    InputT32 
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
module InputT32(input clk,
					 input [3:0]BTN,
					 input [4:0]Dctr, 
					 output reg [31:0]Ai=32'h87654321, 
					 output reg [31:0]Bi=32'h12345678, 
					 output reg [2:0]state=3'b100,
					 output reg [7:0]blink=00000000
    );
	 
	reg [1:0]get_01, get_23; 
	
	assign push01=BTN[0] | BTN[1]; 
	assign push23=BTN[2] | BTN[3]; 
	
	always@(posedge clk)begin
		get_01 <= {get_01[0],push01}; 
		get_23 <= {get_23[0],push23}; 
	end
	
	always@(posedge clk)begin
		if(Dctr[4:2]<=3'b001 & get_01==2'b01)
			if(BTN[0])state<=state+1; 
			else state<=state-1;
		else state<=state; 
	end
	
	assign HexUP16=0; 
	always@(posedge clk)begin
		if(Dctr[4:2]<3'b010)
			case({HexUP16,state[1:0]})
				3'b000: blink<=8'b00000001; 
				3'b001: blink<=8'b00000010; 
				3'b010: blink<=8'b00000100; 
				3'b011: blink<=8'b00001000; 
				3'b100: blink<=8'b00010000; 
				3'b101: blink<=8'b00100000; 
				3'b110: blink<=8'b01000000; 
				3'b111: blink<=8'b10000000; 
			endcase
		else blink<=8'b00000000; 
	end
	
	always@(posedge clk)begin
		if(Dctr[4:2]==3'b000 && get_23==2'b01)begin
			case({HexUP16,state[1:0]})
				3'b000: if(BTN[2])Ai[3:0]<=Ai[3:0]+1; 
						  else Ai[3:0]<=Ai[3:0]-1; 
				3'b001: if(BTN[2])Ai[7:4]<=Ai[7:4]+1; 
						  else Ai[7:4]<=Ai[7:4]-1; 
				3'b010: if(BTN[2])Ai[11:8]<=Ai[11:8]+1; 
						  else Ai[11:8]<=Ai[11:8]-1;
				3'b011: if(BTN[2])Ai[15:12]<=Ai[15:12]+1; 
						  else Ai[15:12]<=Ai[15:12]-1;
				3'b100: if(BTN[2])Ai[19:16]<=Ai[19:16]+1; 
						  else Ai[19:16]<=Ai[19:16]-1;
				3'b101: if(BTN[2])Ai[23:20]<=Ai[23:20]+1; 
						  else Ai[23:20]<=Ai[23:20]-1;
				3'b110: if(BTN[2])Ai[27:24]<=Ai[27:24]+1; 
						  else Ai[27:24]<=Ai[27:24]-1;
				3'b111: if(BTN[2])Ai[31:28]<=Ai[31:28]+1; 
						  else Ai[31:28]<=Ai[31:28]-1;
			endcase
		end
		else if(Dctr[4:2]==3'b001 && get_23==2'b01)begin
			case({HexUP16,state[1:0]})
				3'b000: if(BTN[2])Bi[3:0]<=Bi[3:0]+1; 
						  else Bi[3:0]<=Bi[3:0]-1; 
				3'b001: if(BTN[2])Bi[7:4]<=Bi[7:4]+1; 
						  else Bi[7:4]<=Bi[7:4]-1; 
				3'b010: if(BTN[2])Bi[11:8]<=Bi[11:8]+1; 
						  else Bi[11:8]<=Bi[11:8]-1;
				3'b011: if(BTN[2])Bi[15:12]<=Bi[15:12]+1; 
						  else Bi[15:12]<=Bi[15:12]-1;
				3'b100: if(BTN[2])Bi[19:16]<=Bi[19:16]+1; 
						  else Bi[19:16]<=Bi[19:16]-1;
				3'b101: if(BTN[2])Bi[23:20]<=Bi[23:20]+1; 
						  else Bi[23:20]<=Bi[23:20]-1;
				3'b110: if(BTN[2])Bi[27:24]<=Bi[27:24]+1; 
						  else Bi[27:24]<=Bi[27:24]-1;
				3'b111: if(BTN[2])Bi[31:28]<=Bi[31:28]+1; 
						  else Bi[31:28]<=Bi[31:28]-1;
			endcase
		end
	end

endmodule
