`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    bird_con  
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module bird_con(input wire [31:0]div, 
					 input wire playing, 
					 input wire fly,  
					 input wire [9:0]col, 				// coordinates of current pixel
					 input wire [8:0]row, 
					 output reg [9:0]bird_x, 			// coordinates of top-left corner
					 output reg [8:0]bird_y,  
					 output reg [11:0]bird_data
    );

	localparam gravity=3;  	  // the speed to fall

	localparam BIRD_INI_X=35; // the top-left corner
	localparam BIRD_INI_Y=192; 
	
	localparam BIRD_INI=1'b0; // 2 states -> bird_state
	localparam BIRD_PLAY=1'b1; 
	
	wire [9:0]x; 
	wire [8:0]y; 
	wire [11:0]address; 
	wire [11:0]bird_data_up; 
	wire [11:0]bird_data_hor; 
	wire [11:0]bird_data_down; 
	
	assign x=col-bird_x; 
	assign y=row-bird_y; 
	assign address=x+y*48; 	  // calculate the address
	
	bird_up	  ANIUP(.addra(address), .douta(bird_data_up), .clka(div[1])); 
	bird_hor   ANIHOR(.addra(address), .douta(bird_data_hor), .clka(div[1])); 
	bird_down  ANIDOWN(.addra(address), .douta(bird_data_down), .clka(div[1])); 
	
	reg [3:0]flyct=0; 
	always@(posedge div[20])begin			// control the position of the bird
		if(playing==1'b0)begin
			bird_x<=BIRD_INI_X; 
			bird_y<=BIRD_INI_Y; 
			flyct<=0;
		end
		else if((fly && flyct!=7) || (flyct!=0 && flyct!=7))begin
			bird_y<=bird_y-7; 
			flyct<=flyct+1; 
		end
		else begin
			bird_y<=bird_y+gravity;
			flyct<=0;
		end
	end
	
	always@(posedge div[1])begin			// change the animation and so make the bird flying
		if(div[25:24]==2'b11)begin
			bird_data<=bird_data_up; 
		end
		else if(div[25:24]==2'b01)begin
			bird_data<=bird_data_down;
		end
		else if(div[24]==1'b0)begin
			bird_data<=bird_data_hor;
		end
	end
	
endmodule
