`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:47 12/15/2020 
// Design Name: 
// Module Name:    P2S 
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
module P2S(input wire clk, 
			  input wire rst, 
			  input wire Start, 
			  input wire [DATA_BITS-1:0]PData, 
			  output wire s_clk, 
			  output wire s_clrn, 
			  output wire sout, 
			  output reg EN
    ); // parallel to serial

	parameter DATA_BITS=16, DATA_COUNT_BITS=4, DIR=0; 
	
	wire S1, S0, SL, SR; 
	wire [DATA_BITS:0]D,Q; 
	reg [1:0]Go=00, S=00; 
	
	assign {SR, SL}=2'b11; 
	assign {S1, S0}=DIR ? {S[0], S[1]}:S; 
	assign D = DIR ? {1'b0, PData} : {PData, 1'b0}; 
	wire finish = DIR ? &Q[DATA_BITS:1] : &Q[DATA_BITS-1:0]; 
	assign sout = DIR ? Q[0] : Q[DATA_BITS]; 

	SHIFT64 #(.DATA_BITS(DATA_BITS)) // pass parameter
			  PTOS(.clk(clk), .SR(SR), .SL(SL), .S1(S1), .S0(S0), .D(D), .Q(Q)); 
			  
	always @(posedge clk)
		Go <= {Go[0], Start}; 
	assign shift=(Go==2'b01) ? 1:0; 
	
	always @(posedge clk or posedge rst)begin
		if(rst)begin
			EN=1; 
			S=2'b11; 
		end
		else begin
			if(shift)begin
				EN=0; 
				S=2'b11; 
			end
			else begin
				if(!shift)begin
					EN=0; 
					S=2'b10; 
				end
				else begin
					EN=1; 
					S=2'b00; 
				end
			end
		end
	end
	
	assign s_clk=finish | clk; 
	assign s_clrn=1; 
	
endmodule
