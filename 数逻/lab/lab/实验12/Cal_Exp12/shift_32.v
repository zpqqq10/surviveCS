`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:06:19 12/14/2020 
// Design Name: 
// Module Name:    shift_32 
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
module shift_32(input clk, 
					 input clear, 
					 input S1,S0,SL,SR, 
					 input [31:0]PData, 
					 output [31:0]Q
    );

	wire CR=~clear; 
	DM74LS194 SH0(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(SL), .SR(Q[4]), 
					  .D(PData[0]), .C(PData[1]), .B(PData[2]), .A(PData[3]), 
					  .QD(Q[0]), .QC(Q[1]), .QB(Q[2]), .QA(Q[3])); 
					  
	DM74LS194 SH1(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[3]), .SR(Q[8]), 
					  .D(PData[4]), .C(PData[5]), .B(PData[6]), .A(PData[7]), 
					  .QD(Q[4]), .QC(Q[5]), .QB(Q[6]), .QA(Q[7])); 
					  
	DM74LS194 SH2(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[7]), .SR(Q[12]), 
					  .D(PData[8]), .C(PData[9]), .B(PData[10]), .A(PData[11]), 
					  .QD(Q[8]), .QC(Q[9]), .QB(Q[10]), .QA(Q[11])); 
					  
	DM74LS194 SH3(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[11]), .SR(Q[16]), 
					  .D(PData[12]), .C(PData[13]), .B(PData[14]), .A(PData[15]), 
					  .QD(Q[12]), .QC(Q[13]), .QB(Q[14]), .QA(Q[15])); 
					  
	DM74LS194 SH4(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[15]), .SR(Q[20]), 
					  .D(PData[16]), .C(PData[17]), .B(PData[18]), .A(PData[19]), 
					  .QD(Q[16]), .QC(Q[17]), .QB(Q[18]), .QA(Q[19])); 
					  
	DM74LS194 SH5(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[19]), .SR(Q[24]), 
					  .D(PData[20]), .C(PData[21]), .B(PData[22]), .A(PData[23]), 
					  .QD(Q[20]), .QC(Q[21]), .QB(Q[22]), .QA(Q[23])); 
					  
	DM74LS194 SH6(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[23]), .SR(Q[28]), 
					  .D(PData[24]), .C(PData[25]), .B(PData[26]), .A(PData[27]), 
					  .QD(Q[24]), .QC(Q[25]), .QB(Q[26]), .QA(Q[27])); 
					  
	DM74LS194 SH7(.clk(clk), .CR(CR), .S1(S1), .S0(S0), .SL(Q[27]), .SR(SR), 
					  .D(PData[28]), .C(PData[29]), .B(PData[30]), .A(PData[31]), 
					  .QD(Q[28]), .QC(Q[29]), .QB(Q[30]), .QA(Q[31])); 
			

endmodule
