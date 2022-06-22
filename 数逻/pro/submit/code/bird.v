`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Module Name:    bird  
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module bird_state(input wire [31:0]div, 
				input wire playing, 
				output wire [9:0]x, 
				output wire [8:0]y, 
				output reg bird_state, 
				output reg [1:0]bird_animation
    );

	localparam BIRD_INI=1'b0; // 2 states -> bird_state
	localparam BIRD_PLAY=1'b1; 
	
	localparam BIRD_UP=2'b00; // 4 animations -> bird_animation
	localparam BIRD_HOR_D=2'b01; 
	localparam BIRD_DOWN=2'b10; 
	localparam BIRD_HOR_U=2'b11; 
	
	reg next_state; 
	
	initial begin				  // initialization
		bird_state=BIRD_INI; 
		next_state=BIRD_INI; 
		bird_animation=BIRD_HOR_D; 
	end
	
	// animation switch
	always @(posedge div[22])begin
		case(bird_state)
			BIRD_INI: begin
				bird_animation<=BIRD_HOR_D;
			end
			BIRD_PLAY: begin
				case(bird_animation)
					BIRD_UP: begin
						bird_animation<=BIRD_HOR_D;
					end
					BIRD_HOR_D: begin
						bird_animation<=BIRD_DOWN; 
					end
					BIRD_DOWN: begin
						bird_animation<=BIRD_HOR_U;
					end
					BIRD_HOR_U: begin
						bird_animation<=BIRD_UP; 
					end
				endcase
			end
		endcase
	end
	
	always@(*)begin
		next_state<=bird_state; 
		case(bird_state)
			BIRD_INI: begin
				if(playing)next_state<=BIRD_PLAY; 
				else next_state<=BIRD_INI; 
			end
			BIRD_PLAY: begin
				if(!playing)next_state<=BIRD_INI; 
				else next_state<=BIRD_PLAY; 
			end
		endcase
	end
	
endmodule
