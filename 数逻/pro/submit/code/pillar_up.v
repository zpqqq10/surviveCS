`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    pillar_up  
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module pillar_up(input wire [31:0]div, 
					  input wire [9:0]pillar_up_x, 		// coordinates of top-left corner
					  input wire [8:0]pillar_y, 
					  input wire [9:0]col, 					// coordinates of current pixel
					  input wire [8:0]row, 
					  output wire [11:0]pillarup_data	// color data
    );
	
	wire [9:0]x; 
	wire [8:0]y;
	wire [14:0]address; 
	
	assign x=51+col-pillar_up_x;
	assign y=row-pillar_y; 
	assign address=x+y*52; 					// calculate the address

	pipe_up PILLARUP(.addra(address), .douta(pillarup_data), .clka(div[1])); 

endmodule
