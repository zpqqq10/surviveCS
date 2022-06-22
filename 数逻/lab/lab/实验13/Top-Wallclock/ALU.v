`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:58 11/11/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input [31:0] A, 
			  input [31:0] B, 
			  input [2:0] ALU_Ctr, 
			  output [31:0]res, 
			  output Co, 
			  output zero, 
			  output overflow
    );
	 
	 wire [31:0] Sum, Bo, And, Or, Xor, Slt, Nor, Nand; 
	 wire sub=ALU_Ctr[2]; 
	 assign Bo=B^{32{sub}}; 
	 
	 ADC32 ADD_32(.a(A),
					  .b(Bo),
					  .C0(sub),
					  .Co(Co),
					  .s(Sum));

	assign And=A&B; 
	assign Or=A|B; 
	assign Xor=A^B; 
	assign Slt={31'b0000000000000000000000000000000,~Co};
	assign Nor=~(A|B); 
	assign Nand=~(A&B); 
	
	MUX8T1_32 MUX1(.I0(And),
						.I1(Or), 
						.I2(Sum), 
						.I3(Xor), 
						.I4(Nor), 
						.I5(Nand), 
						.I6(Sum), 
						.I7(Slt), 
						.s(ALU_Ctr), 
						.o(res));

endmodule
