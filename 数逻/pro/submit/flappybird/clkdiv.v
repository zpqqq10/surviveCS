`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    clkdiv  
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module clkdiv(input clk,
				  input rst, 
				output reg[31:0]clkdiv
    );

	always @ (posedge clk or posedge rst) begin
		if(rst)clkdiv<=0; 
		else clkdiv <= clkdiv + 1'b1; 
	end

endmodule
