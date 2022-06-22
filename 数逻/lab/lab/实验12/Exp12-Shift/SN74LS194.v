`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:25 12/15/2020 
// Design Name: 
// Module Name:    SN74LS194 
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
module SN74LS194(input S1, S0, SR, SL, clk, CR, A, B, C, D,
					  output QA, 
					  output QB, 
					  output QC, 
					  output QD
    );

	INV INV0(.I(S0), .O(nS0)),
		 INV1(.I(S1), .O(nS1)); 
		 
	MB_DFF ShiftA(.Cp(clk), .D(DA), .Rn(CR), .Sn(1'b1), .Q(QA), .Qn()), 
			 ShiftB(.Cp(clk), .D(DB), .Rn(CR), .Sn(1'b1), .Q(QB), .Qn()),
			 ShiftC(.Cp(clk), .D(DC), .Rn(CR), .Sn(1'b1), .Q(QC), .Qn()), 
			 ShiftD(.Cp(clk), .D(DD), .Rn(CR), .Sn(1'b1), .Q(QD), .Qn());
			 
	OR4 ORA(.I0(HDA), .I1(RDA), .I2(LDA), .I3(PDA), .O(DA)), 
		 ORB(.I0(HDB), .I1(RDB), .I2(LDB), .I3(PDB), .O(DB)),
		 ORC(.I0(HDC), .I1(RDC), .I2(LDCC), .I3(PDC), .O(DC)), 
		 ORD(.I0(HDD), .I1(RDD), .I2(LDD), .I3(PDD), .O(DD)); 
		 
	AND3 HoldA(.I0(nS1), .I1(nS0), .I2(QA), .O(HDA)), 
		  HoldB(.I0(nS1), .I1(nS0), .I2(QB), .O(HDB)), 
		  HoldC(.I0(nS1), .I1(nS0), .I2(QC), .O(HDC)), 
		  HoldD(.I0(nS1), .I1(nS0), .I2(QD), .O(HDD)); 
		  
	AND3 RightA(.I0(nS1), .I1(S0), .I2(SR), .O(RDA)), 
		  RightB(.I0(nS1), .I1(S0), .I2(QA), .O(RDB)), 
		  RightC(.I0(nS1), .I1(S0), .I2(QB), .O(RDC)), 
		  RightD(.I0(nS1), .I1(S0), .I2(QC), .O(RDD)); 
		  
	AND3 LeftA(.I0(S1), .I1(nS0), .I2(QB), .O(LDA)),
		  LeftB(.I0(S1), .I1(nS0), .I2(QC), .O(LDB)),
		  LeftC(.I0(S1), .I1(nS0), .I2(QD), .O(LDCC)),
		  LeftD(.I0(S1), .I1(nS0), .I2(SL), .O(LDD));
		  
	AND3 PaA(.I0(S1), .I1(S0), .I2(A), .O(PDA)),
		  PaB(.I0(S1), .I1(S0), .I2(B), .O(PDB)),
		  PaC(.I0(S1), .I1(S0), .I2(C), .O(PDC)),
		  PaD(.I0(S1), .I1(S0), .I2(D), .O(PDD)); 

endmodule
