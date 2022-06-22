`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    pillar_down 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module pillar_down(input wire [31:0]div, 
						 input wire [9:0]pillar_down_x, 		// coordinates of bottom-left corner
						 input wire [8:0]pillar_y, 
						 input wire [9:0]col, 					// coordinates of current pixel
						 input wire [8:0]row, 
						 output wire [11:0]pillardown_data	// color data
    );

	wire [9:0]x; 
	wire [8:0]y;
	wire [14:0]address; 
	
	assign x=51+col-pillar_down_x;
	assign y=320-(pillar_y-row); 
	assign address=x+y*52; 					// calculate the address

	pipe_down PILLARDOWN(.addra(address), .douta(pillardown_data), .clka(div[1])); 

endmodule
