`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:51 11/11/2020 
// Design Name: 
// Module Name:    Multi_8CH32 
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
module Multi_8CH32(input clk, 
						 input rst, 
						 input EN, 
						 input [2:0] Test, 
						 input [63:0] point_in, 
						 input [63:0] LES, 
						 input [31:0] data0, 
						 input [31:0] data1, 
						 input [31:0] data2, 
						 input [31:0] data3, 
						 input [31:0] data4, 
						 input [31:0] data5, 
						 input [31:0] data6, 
						 input [31:0] data7, 
						 output [7:0] point_out, 
						 output [7:0] LE_out, 
						 output [31:0] Disp_num
    );

	reg [31:0] disp_data=32'hAA5555AA;
	reg [7:0] cpu_blink=8'b11111111; 
	reg [7:0] cpu_point=8'b00000000; 
	
	MUX8T1_32 MUX1_DispData(.I0(disp_data),
									.I1(data1),
									.I2(data2),
									.I3(data3),
									.I4(data4),
									.I5(data5),
									.I6(data6),
									.I7(data7),
									.s(Test),
									.o(Disp_num)); 
									
	MUX8T1_8 MUX2_Blink(.I0(cpu_blink),
							  .I1(LES[15:8]),
							  .I2(LES[23:16]),
						  	  .I3(LES[31:24]),
							  .I4(LES[39:32]),
							  .I5(LES[47:40]),
							  .I6(LES[55:48]),
							  .I7(LES[63:56]),
							  .s(Test),
							  .o(LE_out)); 
							  
	MUX8T1_8 MUX3_Point(.I0(cpu_point),
							  .I1(point_in[15:8]),
							  .I2(point_in[23:16]),
						  	  .I3(point_in[31:24]),
							  .I4(point_in[39:32]),
							  .I5(point_in[47:40]),
							  .I6(point_in[55:48]),
							  .I7(point_in[63:56]),
							  .s(Test),
							  .o(point_out)); 
							  
	always @(posedge clk)begin
		if(EN)begin
			disp_data<=data0; 
			cpu_blink<=LES[7:0]; 
			cpu_point<=point_in[7:0]; 
		end
		else begin
			disp_data<=disp_data; 
			cpu_blink<=cpu_blink; 
			cpu_point<=cpu_point; 
		end
	end

endmodule
