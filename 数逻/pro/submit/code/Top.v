`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Top 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module Top(input wire [31:0]DIV, 
			  input wire rst, 
			  input wire [15:0]SW, 
			  input wire [3:0]BTN_OK, 
			  input wire [4:0]Key, 
			  input PS2C, 
			  input PS2D, 
			  output wire hs, 
			  output wire vs,
			  output wire [3:0]R, G, B, 
			  output reg [31:0]score, 			// current score
			  output reg [31:0]maxscore, 		// max score
			  output reg [31:0]LED
    );
	
////////////////////////// definition ///////////////////////////////////////////////	
	wire [8:0]row; 			// y coordinate of current pixel-row
	wire [9:0]col; 			// x coordinate of current pixel-col
	reg [11:0]vgadata; 		// input of vga
	wire clk; 					// division of clock signal
	reg welcome; 				// welcome==1 welcome page
	reg playing; 				// playing==1 game playing
	reg over; 					// over==1 game over
	reg scorer; 				// signal whether a score can be obtained
	reg [3:0]speed; 			// the speed of the pipes, also signals the level
	wire keyC, keyD, keyE;  // each button
	
	assign keyC=BTN_OK[0] && (Key==8); 
	assign keyD=BTN_OK[1] && (Key==9); 
	assign keyE=BTN_OK[2] && (Key==10); 
   
	// bottom-left corner
	reg signed [11:0]p0_x, p1_x, p2_x, p3_x, p4_x, p5_x, p6_x, p7_x; 
	reg [8:0]p0_dy, p1_dy, p2_dy, p3_dy, p4_dy, p5_dy, p6_dy, p7_dy; 
	// top-left corner
	reg [8:0]p0_uy, p1_uy, p2_uy, p3_uy, p4_uy, p5_uy, p6_uy, p7_uy;  

	// the speed grows as the game going longer
	always@(posedge DIV[27] or negedge playing)begin
		if(playing!=1)begin
			speed<=4; 
		end
		else if(speed!=8)begin
			speed<=speed+1; 
		end
	end
/////////////////////////////////////////////////////////////////////////////////////

///////////////////////// initialization ////////////////////////////////////////////	
	initial begin
		welcome=1; 
		over=0;
		playing=0; 
		score=10'b0000000000; 
		maxscore=10'b0000000000; 
		scorer=0; 
		LED=32'hFFFFFFFF; 
	end
/////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////// VGA /////////////////////////////////////////////////
	assign clk=DIV[0]; 

	wire cas;
   vgac VGA_DRI(.d_in(vgadata), .vga_clk(DIV[1]), .clrn(SW[15]), 
         .row_addr(row), .col_addr(col), .rdn(cas), 
         .hs(hs), .vs(vs), .r(R), .g(G), .b(B));
								
/////////////////////////////////////////////////////////////////////////////////////

/////////////////////////// welcome page ////////////////////////////////////////////	
	localparam TITLE_X=231, TITLE_Y=182, BUTTON_PLAY_X=262, BUTTON_PLAY_Y=260; 
	localparam NAME_X=223, NAME_Y=440; 

	wire [11:0]bg_data; 
	wire [11:0]button_play_data; 
	wire [11:0]title_data; 
	wire [18:0]bg_addr; 
	wire [12:0]button_play_addr; 
	wire [13:0]title_addr; 
	wire [11:0]name_data; 
	wire [12:0]name_addr; 
	assign bg_addr=col+row*640; 
	assign button_play_addr=(col-BUTTON_PLAY_X)+(row-BUTTON_PLAY_Y)*116; 
	assign title_addr=(col-TITLE_X)+(row-TITLE_Y)*178; 
	assign name_addr=(col-NAME_X)+(row-NAME_Y)*194; 
	
	background BG(.addra(bg_addr), .douta(bg_data), .clka(DIV[1]));
	button_play BUTTON(.addra(button_play_addr), .douta(button_play_data), .clka(DIV[1])); 
	title TITLE(.addra(title_addr), .douta(title_data), .clka(DIV[1])); 
	name  NAME(.addra(name_addr), .douta(name_data), .clka(DIV[1])); 
/////////////////////////////////////////////////////////////////////////////////////

///////////////////////////// ps2 keyboard //////////////////////////////////////////
	wire keyready; 
	reg kenter, kspace; 
	reg clr=0; 
	wire [15:0]ascii; 
	reg  [15:0]keyascii; 
	ps2_keyboard_driver PS2(.clk(DIV[0]), .clk_delay(DIV[5]), .rst_n(1'b1), .ps2k_clk(PS2C), .ps2k_data(PS2D), .data_out(ascii)); 
	
	// read the input of keyboard
	always@(posedge DIV[0])begin
		if(ascii[15])begin
			keyascii<=ascii; 
		end
		if(clr)begin
			keyascii<=0; 
		end
	end
	
	always@(posedge DIV[20])begin
		clr<=0; 
		if(keyascii[15])begin
			clr<=1; 
			if(keyascii==16'h8020)begin
				kspace<=1; 
			end
			else if(keyascii==16'h800D)begin
				kenter<=1; 
			end
		end
		else begin
			kspace<=0; 
			kenter<=0; 
		end
	end
	
/////////////////////////////////////////////////////////////////////////////////////

/////////////////////////// game over ///////////////////////////////////////////////
	localparam GAMEOVER_X=218, GAMEOVER_Y=176, TEXT_READY_X=222, TEXT_READY_Y=260;

	wire [11:0]game_over_data;
	wire [11:0]text_ready_data; 
	wire [13:0]game_over_addr; 
	wire [13:0]text_ready_addr; 
	assign game_over_addr=(col-GAMEOVER_X)+(row-GAMEOVER_Y)*204;
	assign text_ready_addr=(col-TEXT_READY_X)+(row-TEXT_READY_Y)*196;
	
	text_game_over GAMEOVER(.addra(game_over_addr), .douta(game_over_data), .clka(DIV[1]));
	text_ready READY(.addra(text_ready_addr), .douta(text_ready_data), .clka(DIV[1])); 
/////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////// bird ////////////////////////////////////////////////
	// top-left corner
	wire [9:0]bird_x; 
	wire [8:0]bird_y; 
	wire [11:0]bird_data; 
	wire flyup; 							// make the bird fly
	assign flyup=kspace || keyD; 
	
	bird_con BIRD(.div(DIV), .playing(playing), .fly(flyup), 
					  .col(col), .row(row), .bird_x(bird_x), .bird_y(bird_y), .bird_data(bird_data)); 

/////////////////////////////////////////////////////////////////////////////////////

////////////////////////////// pillar ///////////////////////////////////////////////
	localparam BREADTH=150; 	// the distance between a pair of pipes
	wire [11:0]p0d_data, p1d_data, p2d_data, p3d_data, p4d_data, p5d_data, p6d_data, p7d_data; 
	wire [11:0]p0u_data, p1u_data, p2u_data, p3u_data, p4u_data, p5u_data, p6u_data, p7u_data; 
	
	pillar_down PILLARDOWN0(.div(DIV), .pillar_down_x(p0_x[9:0]), .pillar_y(p0_dy), .col(col), .row(row), .pillardown_data(p0d_data)); 
	pillar_up   PILLARUP0(.div(DIV), .pillar_up_x(p0_x[9:0]), .pillar_y(p0_uy), .col(col), .row(row), .pillarup_data(p0u_data)); 
	pillar_down PILLARDOWN1(.div(DIV), .pillar_down_x(p1_x[9:0]), .pillar_y(p1_dy), .col(col), .row(row), .pillardown_data(p1d_data)); 
	pillar_up   PILLARUP1(.div(DIV), .pillar_up_x(p1_x[9:0]), .pillar_y(p1_uy), .col(col), .row(row), .pillarup_data(p1u_data)); 
	pillar_down PILLARDOWN2(.div(DIV), .pillar_down_x(p2_x[9:0]), .pillar_y(p2_dy), .col(col), .row(row), .pillardown_data(p2d_data)); 
	pillar_up   PILLARUP2(.div(DIV), .pillar_up_x(p2_x[9:0]), .pillar_y(p2_uy), .col(col), .row(row), .pillarup_data(p2u_data)); 
	pillar_down PILLARDOWN3(.div(DIV), .pillar_down_x(p3_x[9:0]), .pillar_y(p3_dy), .col(col), .row(row), .pillardown_data(p3d_data)); 
	pillar_up   PILLARUP3(.div(DIV), .pillar_up_x(p3_x[9:0]), .pillar_y(p3_uy), .col(col), .row(row), .pillarup_data(p3u_data)); 
	pillar_down PILLARDOWN4(.div(DIV), .pillar_down_x(p4_x[9:0]), .pillar_y(p4_dy), .col(col), .row(row), .pillardown_data(p4d_data)); 
	pillar_up   PILLARUP4(.div(DIV), .pillar_up_x(p4_x[9:0]), .pillar_y(p4_uy), .col(col), .row(row), .pillarup_data(p4u_data)); 
	pillar_down PILLARDOWN5(.div(DIV), .pillar_down_x(p5_x[9:0]), .pillar_y(p5_dy), .col(col), .row(row), .pillardown_data(p5d_data)); 
	pillar_up   PILLARUP5(.div(DIV), .pillar_up_x(p5_x[9:0]), .pillar_y(p5_uy), .col(col), .row(row), .pillarup_data(p5u_data)); 
	pillar_down PILLARDOWN6(.div(DIV), .pillar_down_x(p6_x[9:0]), .pillar_y(p6_dy), .col(col), .row(row), .pillardown_data(p6d_data)); 
	pillar_up   PILLARUP6(.div(DIV), .pillar_up_x(p6_x[9:0]), .pillar_y(p6_uy), .col(col), .row(row), .pillarup_data(p6u_data)); 
	pillar_down PILLARDOWN7(.div(DIV), .pillar_down_x(p7_x[9:0]), .pillar_y(p7_dy), .col(col), .row(row), .pillardown_data(p7d_data)); 
	pillar_up   PILLARUP7(.div(DIV), .pillar_up_x(p7_x[9:0]), .pillar_y(p7_uy), .col(col), .row(row), .pillarup_data(p7u_data)); 
	
	// the movement of the pipes(pillars)
	always@(posedge DIV[20])begin
		if(p0_x>=-52)begin
			p0_x<=p0_x-speed;
			if(p0_x>=639 && score>0)begin
				if(DIV[5])begin
					p0_dy<=184-DIV[19:15];
					p0_uy<=330-DIV[17:15];
				end
				else begin
					p0_dy<=184+DIV[19:15];
					p0_uy<=330+DIV[17:15];			
				end
			end
		end
		else begin
			p0_x<=p7_x+90;
		end
		
		if(p1_x>=-52)begin
			p1_x<=p1_x-speed; 
			if(p1_x>=639)begin
				if(DIV[17])begin
					p1_dy<=154-DIV[20:16];
					p1_uy<=300-DIV[17:15];
				end
				else begin
					p1_dy<=204+DIV[20:16];
					p1_uy<=360+DIV[17:15];
				end
				
			end
		end
		else begin
			p1_x<=p0_x+90;
		end
		
		if(p2_x>=-52)begin
			p2_x<=p2_x-speed; 
			if(p2_x>=639)begin
				if(DIV[6])begin
					p2_dy<=226-DIV[4:0];
					p2_uy<=380-DIV[15:13];
				end
				else begin
					p2_dy<=194+DIV[4:0];
					p2_uy<=330+DIV[15:13];
				end
			end
		end
		else begin
			p2_x<=p1_x+90;
		end
		
		if(p3_x>=-52)begin
			p3_x<=p3_x-speed; 
			if(p3_x>=639)begin
				if(DIV[4])begin
					p3_dy<=134-DIV[20:16];
					p3_uy<=280-DIV[17:15];
				end
				else begin
					p3_dy<=120+DIV[20:16];
					p3_uy<=280+DIV[17:15];
				end 
				
			end
		end
		else begin
			p3_x<=p2_x+90; 
		end
		
		if(p4_x>=-52)begin
			p4_x<=p4_x-speed; 
			if(p4_x>=639)begin
				if(DIV[5])begin
					p4_dy<=240-DIV[19:15];
					p4_uy<=400-DIV[3:0];
				end
				else begin
					p4_dy<=199+DIV[19:15];
					p4_uy<=325+DIV[3:0];
				end 
				
			end
		end
		else begin
			p4_x<=p3_x+90;
		end
		
		if(p5_x>=-52)begin
			p5_x<=p5_x-speed; 
			if(p5_x>=639)begin
				if(DIV[5])begin
					p5_dy<=174-DIV[14:10];
					p5_uy<=329-DIV[4:1];
				end
				else begin
					p5_dy<=194+DIV[14:10];
					p5_uy<=320+DIV[4:1];
				end 
				
			end
		end
		else begin
			p5_x<=p4_x+90; 
		end
		
		if(p6_x>=-52)begin
			p6_x<=p6_x-speed; 
			if(p6_x>=639)begin
				if(DIV[17])begin
					p6_dy<=210-DIV[7:3];
					p6_uy<=340-DIV[17:15];
				end
				else begin
					p6_dy<=194+DIV[7:3];
					p6_uy<=366+DIV[17:15];
				end 
				
			end
		end
		else begin
			p6_x<=p5_x+90;
		end
		
		if(p7_x>=-52)begin
			p7_x<=p7_x-speed; 
			if(p7_x>=639)begin
				if(DIV[5])begin
					p7_dy<=234-DIV[9:5];
					p7_uy<=380-DIV[8:5];
				end
				else begin
					p7_dy<=224+DIV[9:5];
					p7_uy<=400+DIV[8:5];
				end 
				
			end
		end
		else begin
			p7_x<=p6_x+90;
		end
		
		// initialize the position when a game is not going
		if(playing!=1)begin
			p0_x<=640; p0_dy<=184; p0_uy<=184+BREADTH;
			p1_x<=730; 
			p2_x<=820; 
			p3_x<=910;
			p4_x<=1000; 
			p5_x<=1090; 
			p6_x<=1180; 
			p7_x<=1270;	
			
		end
	end

/////////////////////////////////////////////////////////////////////////////////////	

////////////////////////////// switch ///////////////////////////////////////////////
	wire ishit, inbetween;		// whether the bird hits the pipe or the boundary & whether the bird is between a pair of pipes 
	assign ishit= (bird_y ==0) || (bird_y+36>=479 && bird_data!=12'h000) ||
					  (bird_x+41>=p0_x && bird_x<=p0_x+44 && bird_y+12<=p0_dy) ||
					  (bird_x+41>=p1_x && bird_x<=p1_x+44 && bird_y+12<=p1_dy) ||
					  (bird_x+41>=p2_x && bird_x<=p2_x+44 && bird_y+12<=p2_dy) ||
					  (bird_x+41>=p3_x && bird_x<=p3_x+44 && bird_y+12<=p3_dy) ||
					  (bird_x+41>=p4_x && bird_x<=p4_x+44 && bird_y+12<=p4_dy) ||
					  (bird_x+41>=p5_x && bird_x<=p5_x+44 && bird_y+12<=p5_dy) ||
					  (bird_x+41>=p6_x && bird_x<=p6_x+44 && bird_y+12<=p6_dy) ||
					  (bird_x+41>=p7_x && bird_x<=p7_x+44 && bird_y+12<=p7_dy) ||
					  (bird_x+41>=p0_x && bird_x<=p0_x+44 && bird_y+36>=p0_uy) ||
					  (bird_x+41>=p1_x && bird_x<=p1_x+44 && bird_y+36>=p1_uy) ||
					  (bird_x+41>=p2_x && bird_x<=p2_x+44 && bird_y+36>=p2_uy) ||
					  (bird_x+41>=p3_x && bird_x<=p3_x+44 && bird_y+36>=p3_uy) ||
					  (bird_x+41>=p4_x && bird_x<=p4_x+44 && bird_y+36>=p4_uy) ||
					  (bird_x+41>=p5_x && bird_x<=p5_x+44 && bird_y+36>=p5_uy) ||
					  (bird_x+41>=p6_x && bird_x<=p6_x+44 && bird_y+36>=p6_uy) ||
					  (bird_x+41>=p7_x && bird_x<=p7_x+44 && bird_y+36>=p7_uy) ; 
	assign inbetween= (bird_x+41>=p0_x && bird_x<=p0_x+44) || 
							(bird_x+41>=p1_x && bird_x<=p1_x+44) || 
							(bird_x+41>=p2_x && bird_x<=p2_x+44) || 
							(bird_x+41>=p3_x && bird_x<=p3_x+44) || 
							(bird_x+41>=p4_x && bird_x<=p4_x+44) || 
							(bird_x+41>=p5_x && bird_x<=p5_x+44) || 
							(bird_x+41>=p6_x && bird_x<=p6_x+44) ||
							(bird_x+41>=p7_x && bird_x<=p7_x+44) ;

	//wellcome - playing - over  & count the score
	reg [17:0]ledct=0; 
	always@(posedge DIV[10])begin
		if(ledct!=0 && ledct[17]!=1)begin
			ledct<=ledct+1; 
		end
		else begin
			LED[15:0]<=16'hFFFF;
			ledct<=0; 
		end
	
		if(welcome==1 && (kenter || keyC))begin			// welcome -> playing
			welcome<=0; 
			over<=0;
			playing<=1; 
		end
		else if(over==1 && (kenter || keyE))begin		// over -> welcome
			welcome<=1; 
			over<=0;
			playing<=0;
		end
		else if(playing==1 && ishit)begin		// playing -> over 
			welcome<=0; 
			over<=1;
			playing<=0;
			LED[15:0]<=16'h0000; 
			ledct<=ledct+1; 
			if(score>maxscore)begin
				maxscore<=score;  
				score<=0;
			end
			else begin
				maxscore<=maxscore; 
				score<=0; 
			end
		end
		else if(playing==1)begin
			if(inbetween)begin
				scorer<=1; 
			end
			else if(scorer==1 && !inbetween)begin
				if(score[27:0]==28'h9999999)begin
					score[31:28]<=score[31:28]+1; 
					score[27:0]<=0; 
				end
				else if(score[23:0]==24'h999999)begin
					score[27:24]<=score[27:24]+1; 
					score[23:0]<=0; 
				end
				else if(score[19:0]==20'h99999)begin
					score[23:20]<=score[23:20]+1; 
					score[19:0]<=0; 
				end
				else if(score[15:0]==16'h9999)begin
					score[19:16]<=score[19:16]+1; 
					score[15:0]<=0; 
				end
				else if(score[11:0]==12'h999)begin
					score[15:12]<=score[15:12]+1; 
					score[11:0]<=0; 
				end
				else if(score[7:0]==8'h99)begin
					score[11:8]<=score[11:8]+1; 
					score[7:0]<=0; 
				end
				else if(score[3:0]==4'h9)begin
					score[7:4]<=score[7:4]+1; 
					score[3:0]<=0; 
				end
				else begin
					score[3:0]<=score[3:0]+1; 
				end
				scorer<=0; 
			end
		end
	end

/////////////////////////////////////////////////////////////////////////////////////

//////////////////////////// display ////////////////////////////////////////////////
	localparam PILLAR_WIDTH=51; 
	wire BIRD_DIS; 
	wire P0D_DIS, P1D_DIS, P2D_DIS, P3D_DIS, P4D_DIS, P5D_DIS, P6D_DIS, P7D_DIS; 
	wire P0U_DIS, P1U_DIS, P2U_DIS, P3U_DIS, P4U_DIS, P5U_DIS, P6U_DIS, P7U_DIS; 
	wire BUTTON_DIS, TITLE_DIS, NAME_DIS; 
	wire GAMEOVER_DIS, READY_DIS; 
	
	assign BIRD_DIS=(col>bird_x)&&(col<=bird_x+48)&&(row>=bird_y)&&(row<=bird_y+47)&&(bird_data!=12'h000); 	
	assign BUTTON_DIS=(col>=BUTTON_PLAY_X)&&(col<=BUTTON_PLAY_X+115)&&(row>=BUTTON_PLAY_Y)&&(row<=BUTTON_PLAY_Y+69)&&(button_play_data!=12'h000); 
	assign TITLE_DIS=(col>=TITLE_X)&&(col<=TITLE_X+177)&&(row>=TITLE_Y)&&(row<=TITLE_Y+47)&&(title_data!=12'h000);
	assign NAME_DIS=(col>=NAME_X)&&(col<=NAME_X+193)&&(row>=NAME_Y)&&(row<=NAME_Y+29)&&(name_data!=12'h000);
	assign GAMEOVER_DIS=(col>=GAMEOVER_X)&&(col<=GAMEOVER_X+203)&&(row>=GAMEOVER_Y)&&(row<=GAMEOVER_Y+53)&&(game_over_data!=12'h000); 
	assign READY_DIS=(col>=TEXT_READY_X)&&(col<=TEXT_READY_X+195)&&(row>=TEXT_READY_Y)&&(row<=TEXT_READY_Y+61)&&(text_ready_data!=12'h000); 

	assign P0D_DIS= p0_x>=-51 && p0_x<=649 && col>=p0_x[9:0] && col<=p0_x[9:0]+PILLAR_WIDTH && row<=p0_dy && p0d_data!=12'h000; 
	assign P1D_DIS= p1_x>=-51 && p1_x<=649 && col>=p1_x[9:0] && col<=p1_x[9:0]+PILLAR_WIDTH && row<=p1_dy && p1d_data!=12'h000; 
	assign P2D_DIS= p2_x>=-51 && p2_x<=649 && col>=p2_x[9:0] && col<=p2_x[9:0]+PILLAR_WIDTH && row<=p2_dy && p2d_data!=12'h000;
	assign P3D_DIS= p3_x>=-51 && p3_x<=649 && col>=p3_x[9:0] && col<=p3_x[9:0]+PILLAR_WIDTH && row<=p3_dy && p3d_data!=12'h000; 
	assign P4D_DIS= p4_x>=-51 && p4_x<=649 && col>=p4_x[9:0] && col<=p4_x[9:0]+PILLAR_WIDTH && row<=p4_dy && p4d_data!=12'h000;
	assign P5D_DIS= p5_x>=-51 && p5_x<=649 && col>=p5_x[9:0] && col<=p5_x[9:0]+PILLAR_WIDTH && row<=p5_dy && p5d_data!=12'h000; 
	assign P6D_DIS= p6_x>=-51 && p6_x<=649 && col>=p6_x[9:0] && col<=p6_x[9:0]+PILLAR_WIDTH && row<=p6_dy && p6d_data!=12'h000;
	assign P7D_DIS= p7_x>=-51 && p7_x<=649 && col>=p7_x[9:0] && col<=p7_x[9:0]+PILLAR_WIDTH && row<=p7_dy && p7d_data!=12'h000;	
	
	assign P0U_DIS= p0_x>=-51 && p0_x<=649 && col>=p0_x[9:0] && col<=p0_x[9:0]+PILLAR_WIDTH && row>=p0_uy && p0u_data!=12'h000; 
	assign P1U_DIS= p1_x>=-51 && p1_x<=649 && col>=p1_x[9:0] && col<=p1_x[9:0]+PILLAR_WIDTH && row>=p1_uy && p1u_data!=12'h000; 
	assign P2U_DIS= p2_x>=-51 && p2_x<=649 && col>=p2_x[9:0] && col<=p2_x[9:0]+PILLAR_WIDTH && row>=p2_uy && p2u_data!=12'h000;
	assign P3U_DIS= p3_x>=-51 && p3_x<=649 && col>=p3_x[9:0] && col<=p3_x[9:0]+PILLAR_WIDTH && row>=p3_uy && p3u_data!=12'h000; 
	assign P4U_DIS= p4_x>=-51 && p4_x<=649 && col>=p4_x[9:0] && col<=p4_x[9:0]+PILLAR_WIDTH && row>=p4_uy && p4u_data!=12'h000;
	assign P5U_DIS= p5_x>=-51 && p5_x<=649 && col>=p5_x[9:0] && col<=p5_x[9:0]+PILLAR_WIDTH && row>=p5_uy && p5u_data!=12'h000; 
	assign P6U_DIS= p6_x>=-51 && p6_x<=649 && col>=p6_x[9:0] && col<=p6_x[9:0]+PILLAR_WIDTH && row>=p6_uy && p6u_data!=12'h000;
	assign P7U_DIS= p7_x>=-51 && p7_x<=649 && col>=p7_x[9:0] && col<=p7_x[9:0]+PILLAR_WIDTH && row>=p7_uy && p7u_data!=12'h000;

	always@(posedge DIV[1])begin
		if(welcome)begin
			case(1'b1)
				TITLE_DIS: 	vgadata<=title_data; 
				BUTTON_DIS: vgadata<=button_play_data;
				NAME_DIS:   vgadata<=name_data; 
				default: 	begin
								vgadata[11:8]<=bg_data[11:8]/4; 
								vgadata[7:4]<=bg_data[7:4]/4; 
								vgadata[3:0]<=bg_data[3:0]/4; 
								end
			endcase
		end
		else if(over)begin
			case(1'b1)
				GAMEOVER_DIS:	vgadata<=game_over_data; 
				READY_DIS: 		vgadata<=text_ready_data; 
				default: 		begin
									vgadata[11:8]<=bg_data[11:8]/4; 
									vgadata[7:4]<=bg_data[7:4]/4; 
									vgadata[3:0]<=bg_data[3:0]/4; 
									end
			endcase
		end
		else begin
			case(1'b1)
				BIRD_DIS:	vgadata<=bird_data;
				P0D_DIS: 	vgadata<=p0d_data;  
				P0U_DIS: 	vgadata<=p0u_data; 
				P1D_DIS: 	vgadata<=p1d_data;  
				P1U_DIS: 	vgadata<=p1u_data; 
				P2D_DIS: 	vgadata<=p2d_data;  
				P2U_DIS: 	vgadata<=p2u_data; 
				P3D_DIS: 	vgadata<=p3d_data;  
				P3U_DIS: 	vgadata<=p3u_data; 
				P4D_DIS: 	vgadata<=p4d_data;  
				P4U_DIS: 	vgadata<=p4u_data; 
				P5D_DIS: 	vgadata<=p5d_data;  
				P5U_DIS: 	vgadata<=p5u_data;
				P6D_DIS: 	vgadata<=p6d_data;  
				P6U_DIS: 	vgadata<=p6u_data;
				P7D_DIS: 	vgadata<=p7d_data;  
				P7U_DIS: 	vgadata<=p7u_data;
				default:		vgadata<=bg_data; 
			endcase
		end
	end
/////////////////////////////////////////////////////////////////////////////////////
	
endmodule
