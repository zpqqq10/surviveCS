////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Top_HTC138_synthesis.v
// /___/   /\     Timestamp: Wed Nov 11 08:35:03 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Top_HTC138.ngc Top_HTC138_synthesis.v 
// Device	: xc7k160t-1-ffg676
// Input file	: Top_HTC138.ngc
// Output file	: D:\Wxp05-38Decoder\netgen\synthesis\Top_HTC138_synthesis.v
// # of Modules	: 1
// Design Name	: Top_HTC138
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Top_HTC138 (
  clk_100mhz, A, B, C, G, G_2A, G_2B, ledclk, ledsout, ledclrn, LEDEN, Y
);
  input clk_100mhz;
  input A;
  input B;
  input C;
  input G;
  input G_2A;
  input G_2B;
  output ledclk;
  output ledsout;
  output ledclrn;
  output LEDEN;
  output [7 : 0] Y;
  wire clk_100mhz_BUFGP_0;
  wire A_IBUF_1;
  wire B_IBUF_2;
  wire C_IBUF_3;
  wire G_IBUF_4;
  wire G_2A_IBUF_5;
  wire G_2B_IBUF_6;
  wire ledclk_OBUF_8;
  wire ledclrn_OBUF_9;
  wire ledsout_OBUF_10;
  wire LEDEN_OBUF_11;
  wire ny0;
  wire ny1;
  wire ny2;
  wire ny3;
  wire ny4;
  wire ny5;
  wire ny6;
  wire ny7;
  wire Y_7_OBUF_20;
  wire Y_6_OBUF_21;
  wire Y_5_OBUF_22;
  wire Y_4_OBUF_23;
  wire Y_3_OBUF_24;
  wire Y_2_OBUF_25;
  wire Y_1_OBUF_26;
  wire Y_0_OBUF_27;
  wire N0;
  wire rst;
  wire \M5/XLXN_13 ;
  wire \M5/XLXN_12 ;
  wire \M5/XLXN_18 ;
  wire \M5/XLXN_11 ;
  wire \M5/XLXN_10 ;
  wire \M5/XLXN_9 ;
  wire \M5/XLXN_8 ;
  wire \M5/XLXN_7 ;
  wire \M5/XLXN_6 ;
  wire \M5/XLXN_5 ;
  wire \M5/XLXN_4 ;
  wire \M5/M1/XLXN_12 ;
  wire \M5/M1/XLXN_21 ;
  wire \M5/M1/XLXN_4 ;
  wire \M5/M1/XLXN_16 ;
  wire \M5/M1/XLXN_18 ;
  wire \M5/M1/XLXN_14 ;
  wire \M5/M1/XLXN_2 ;
  wire \U9/Mcount_clkdiv_cy<1>_rt_129 ;
  wire \U9/Mcount_clkdiv_cy<2>_rt_130 ;
  wire \U9/Mcount_clkdiv_cy<3>_rt_131 ;
  wire \U9/Mcount_clkdiv_cy<4>_rt_132 ;
  wire \U9/Mcount_clkdiv_cy<5>_rt_133 ;
  wire \U9/Mcount_clkdiv_cy<6>_rt_134 ;
  wire \U9/Mcount_clkdiv_cy<7>_rt_135 ;
  wire \U9/Mcount_clkdiv_cy<8>_rt_136 ;
  wire \U9/Mcount_clkdiv_cy<9>_rt_137 ;
  wire \U9/Mcount_clkdiv_cy<10>_rt_138 ;
  wire \U9/Mcount_clkdiv_cy<11>_rt_139 ;
  wire \U9/Mcount_clkdiv_cy<12>_rt_140 ;
  wire \U9/Mcount_clkdiv_cy<13>_rt_141 ;
  wire \U9/Mcount_clkdiv_cy<14>_rt_142 ;
  wire \U9/Mcount_clkdiv_cy<15>_rt_143 ;
  wire \U9/Mcount_clkdiv_cy<16>_rt_144 ;
  wire \U9/Mcount_clkdiv_cy<17>_rt_145 ;
  wire \U9/Mcount_clkdiv_cy<18>_rt_146 ;
  wire \U9/Mcount_clkdiv_cy<19>_rt_147 ;
  wire [20 : 0] \U9/clkdiv ;
  wire [20 : 0] Result;
  wire [0 : 0] \U9/Mcount_clkdiv_lut ;
  wire [19 : 0] \U9/Mcount_clkdiv_cy ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(rst)
  );
  FD   \U9/clkdiv_0  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[0]),
    .Q(\U9/clkdiv [0])
  );
  FD   \U9/clkdiv_1  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[1]),
    .Q(\U9/clkdiv [1])
  );
  FD   \U9/clkdiv_2  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[2]),
    .Q(\U9/clkdiv [2])
  );
  FD   \U9/clkdiv_3  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[3]),
    .Q(\U9/clkdiv [3])
  );
  FD   \U9/clkdiv_4  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[4]),
    .Q(\U9/clkdiv [4])
  );
  FD   \U9/clkdiv_5  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[5]),
    .Q(\U9/clkdiv [5])
  );
  FD   \U9/clkdiv_6  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[6]),
    .Q(\U9/clkdiv [6])
  );
  FD   \U9/clkdiv_7  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[7]),
    .Q(\U9/clkdiv [7])
  );
  FD   \U9/clkdiv_8  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[8]),
    .Q(\U9/clkdiv [8])
  );
  FD   \U9/clkdiv_9  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[9]),
    .Q(\U9/clkdiv [9])
  );
  FD   \U9/clkdiv_10  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[10]),
    .Q(\U9/clkdiv [10])
  );
  FD   \U9/clkdiv_11  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[11]),
    .Q(\U9/clkdiv [11])
  );
  FD   \U9/clkdiv_12  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[12]),
    .Q(\U9/clkdiv [12])
  );
  FD   \U9/clkdiv_13  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[13]),
    .Q(\U9/clkdiv [13])
  );
  FD   \U9/clkdiv_14  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[14]),
    .Q(\U9/clkdiv [14])
  );
  FD   \U9/clkdiv_15  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[15]),
    .Q(\U9/clkdiv [15])
  );
  FD   \U9/clkdiv_16  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[16]),
    .Q(\U9/clkdiv [16])
  );
  FD   \U9/clkdiv_17  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[17]),
    .Q(\U9/clkdiv [17])
  );
  FD   \U9/clkdiv_18  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[18]),
    .Q(\U9/clkdiv [18])
  );
  FD   \U9/clkdiv_19  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[19]),
    .Q(\U9/clkdiv [19])
  );
  FD   \U9/clkdiv_20  (
    .C(clk_100mhz_BUFGP_0),
    .D(Result[20]),
    .Q(\U9/clkdiv [20])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<0>  (
    .CI(rst),
    .DI(N0),
    .S(\U9/Mcount_clkdiv_lut [0]),
    .O(\U9/Mcount_clkdiv_cy [0])
  );
  XORCY   \U9/Mcount_clkdiv_xor<0>  (
    .CI(rst),
    .LI(\U9/Mcount_clkdiv_lut [0]),
    .O(Result[0])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<1>  (
    .CI(\U9/Mcount_clkdiv_cy [0]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<1>_rt_129 ),
    .O(\U9/Mcount_clkdiv_cy [1])
  );
  XORCY   \U9/Mcount_clkdiv_xor<1>  (
    .CI(\U9/Mcount_clkdiv_cy [0]),
    .LI(\U9/Mcount_clkdiv_cy<1>_rt_129 ),
    .O(Result[1])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<2>  (
    .CI(\U9/Mcount_clkdiv_cy [1]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<2>_rt_130 ),
    .O(\U9/Mcount_clkdiv_cy [2])
  );
  XORCY   \U9/Mcount_clkdiv_xor<2>  (
    .CI(\U9/Mcount_clkdiv_cy [1]),
    .LI(\U9/Mcount_clkdiv_cy<2>_rt_130 ),
    .O(Result[2])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<3>  (
    .CI(\U9/Mcount_clkdiv_cy [2]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<3>_rt_131 ),
    .O(\U9/Mcount_clkdiv_cy [3])
  );
  XORCY   \U9/Mcount_clkdiv_xor<3>  (
    .CI(\U9/Mcount_clkdiv_cy [2]),
    .LI(\U9/Mcount_clkdiv_cy<3>_rt_131 ),
    .O(Result[3])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<4>  (
    .CI(\U9/Mcount_clkdiv_cy [3]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<4>_rt_132 ),
    .O(\U9/Mcount_clkdiv_cy [4])
  );
  XORCY   \U9/Mcount_clkdiv_xor<4>  (
    .CI(\U9/Mcount_clkdiv_cy [3]),
    .LI(\U9/Mcount_clkdiv_cy<4>_rt_132 ),
    .O(Result[4])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<5>  (
    .CI(\U9/Mcount_clkdiv_cy [4]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<5>_rt_133 ),
    .O(\U9/Mcount_clkdiv_cy [5])
  );
  XORCY   \U9/Mcount_clkdiv_xor<5>  (
    .CI(\U9/Mcount_clkdiv_cy [4]),
    .LI(\U9/Mcount_clkdiv_cy<5>_rt_133 ),
    .O(Result[5])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<6>  (
    .CI(\U9/Mcount_clkdiv_cy [5]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<6>_rt_134 ),
    .O(\U9/Mcount_clkdiv_cy [6])
  );
  XORCY   \U9/Mcount_clkdiv_xor<6>  (
    .CI(\U9/Mcount_clkdiv_cy [5]),
    .LI(\U9/Mcount_clkdiv_cy<6>_rt_134 ),
    .O(Result[6])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<7>  (
    .CI(\U9/Mcount_clkdiv_cy [6]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<7>_rt_135 ),
    .O(\U9/Mcount_clkdiv_cy [7])
  );
  XORCY   \U9/Mcount_clkdiv_xor<7>  (
    .CI(\U9/Mcount_clkdiv_cy [6]),
    .LI(\U9/Mcount_clkdiv_cy<7>_rt_135 ),
    .O(Result[7])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<8>  (
    .CI(\U9/Mcount_clkdiv_cy [7]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<8>_rt_136 ),
    .O(\U9/Mcount_clkdiv_cy [8])
  );
  XORCY   \U9/Mcount_clkdiv_xor<8>  (
    .CI(\U9/Mcount_clkdiv_cy [7]),
    .LI(\U9/Mcount_clkdiv_cy<8>_rt_136 ),
    .O(Result[8])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<9>  (
    .CI(\U9/Mcount_clkdiv_cy [8]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<9>_rt_137 ),
    .O(\U9/Mcount_clkdiv_cy [9])
  );
  XORCY   \U9/Mcount_clkdiv_xor<9>  (
    .CI(\U9/Mcount_clkdiv_cy [8]),
    .LI(\U9/Mcount_clkdiv_cy<9>_rt_137 ),
    .O(Result[9])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<10>  (
    .CI(\U9/Mcount_clkdiv_cy [9]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<10>_rt_138 ),
    .O(\U9/Mcount_clkdiv_cy [10])
  );
  XORCY   \U9/Mcount_clkdiv_xor<10>  (
    .CI(\U9/Mcount_clkdiv_cy [9]),
    .LI(\U9/Mcount_clkdiv_cy<10>_rt_138 ),
    .O(Result[10])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<11>  (
    .CI(\U9/Mcount_clkdiv_cy [10]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<11>_rt_139 ),
    .O(\U9/Mcount_clkdiv_cy [11])
  );
  XORCY   \U9/Mcount_clkdiv_xor<11>  (
    .CI(\U9/Mcount_clkdiv_cy [10]),
    .LI(\U9/Mcount_clkdiv_cy<11>_rt_139 ),
    .O(Result[11])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<12>  (
    .CI(\U9/Mcount_clkdiv_cy [11]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<12>_rt_140 ),
    .O(\U9/Mcount_clkdiv_cy [12])
  );
  XORCY   \U9/Mcount_clkdiv_xor<12>  (
    .CI(\U9/Mcount_clkdiv_cy [11]),
    .LI(\U9/Mcount_clkdiv_cy<12>_rt_140 ),
    .O(Result[12])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<13>  (
    .CI(\U9/Mcount_clkdiv_cy [12]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<13>_rt_141 ),
    .O(\U9/Mcount_clkdiv_cy [13])
  );
  XORCY   \U9/Mcount_clkdiv_xor<13>  (
    .CI(\U9/Mcount_clkdiv_cy [12]),
    .LI(\U9/Mcount_clkdiv_cy<13>_rt_141 ),
    .O(Result[13])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<14>  (
    .CI(\U9/Mcount_clkdiv_cy [13]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<14>_rt_142 ),
    .O(\U9/Mcount_clkdiv_cy [14])
  );
  XORCY   \U9/Mcount_clkdiv_xor<14>  (
    .CI(\U9/Mcount_clkdiv_cy [13]),
    .LI(\U9/Mcount_clkdiv_cy<14>_rt_142 ),
    .O(Result[14])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<15>  (
    .CI(\U9/Mcount_clkdiv_cy [14]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<15>_rt_143 ),
    .O(\U9/Mcount_clkdiv_cy [15])
  );
  XORCY   \U9/Mcount_clkdiv_xor<15>  (
    .CI(\U9/Mcount_clkdiv_cy [14]),
    .LI(\U9/Mcount_clkdiv_cy<15>_rt_143 ),
    .O(Result[15])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<16>  (
    .CI(\U9/Mcount_clkdiv_cy [15]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<16>_rt_144 ),
    .O(\U9/Mcount_clkdiv_cy [16])
  );
  XORCY   \U9/Mcount_clkdiv_xor<16>  (
    .CI(\U9/Mcount_clkdiv_cy [15]),
    .LI(\U9/Mcount_clkdiv_cy<16>_rt_144 ),
    .O(Result[16])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<17>  (
    .CI(\U9/Mcount_clkdiv_cy [16]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<17>_rt_145 ),
    .O(\U9/Mcount_clkdiv_cy [17])
  );
  XORCY   \U9/Mcount_clkdiv_xor<17>  (
    .CI(\U9/Mcount_clkdiv_cy [16]),
    .LI(\U9/Mcount_clkdiv_cy<17>_rt_145 ),
    .O(Result[17])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<18>  (
    .CI(\U9/Mcount_clkdiv_cy [17]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<18>_rt_146 ),
    .O(\U9/Mcount_clkdiv_cy [18])
  );
  XORCY   \U9/Mcount_clkdiv_xor<18>  (
    .CI(\U9/Mcount_clkdiv_cy [17]),
    .LI(\U9/Mcount_clkdiv_cy<18>_rt_146 ),
    .O(Result[18])
  );
  MUXCY   \U9/Mcount_clkdiv_cy<19>  (
    .CI(\U9/Mcount_clkdiv_cy [18]),
    .DI(rst),
    .S(\U9/Mcount_clkdiv_cy<19>_rt_147 ),
    .O(\U9/Mcount_clkdiv_cy [19])
  );
  XORCY   \U9/Mcount_clkdiv_xor<19>  (
    .CI(\U9/Mcount_clkdiv_cy [18]),
    .LI(\U9/Mcount_clkdiv_cy<19>_rt_147 ),
    .O(Result[19])
  );
  XORCY   \U9/Mcount_clkdiv_xor<20>  (
    .CI(\U9/Mcount_clkdiv_cy [19]),
    .LI(\U9/clkdiv [20]),
    .O(Result[20])
  );
  NAND2   \M5/XLXI_9  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_11 ),
    .O(ny7)
  );
  NAND2   \M5/XLXI_8  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_10 ),
    .O(ny6)
  );
  NAND2   \M5/XLXI_7  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_9 ),
    .O(ny5)
  );
  NAND2   \M5/XLXI_6  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_8 ),
    .O(ny4)
  );
  NAND2   \M5/XLXI_5  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_7 ),
    .O(ny3)
  );
  NAND2   \M5/XLXI_4  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_6 ),
    .O(ny2)
  );
  NAND2   \M5/XLXI_3  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_5 ),
    .O(ny1)
  );
  NAND2   \M5/XLXI_2  (
    .I0(\M5/XLXN_18 ),
    .I1(\M5/XLXN_4 ),
    .O(ny0)
  );
  INV   \M5/XLXI_12  (
    .I(G_2B_IBUF_6),
    .O(\M5/XLXN_13 )
  );
  INV   \M5/XLXI_11  (
    .I(G_2A_IBUF_5),
    .O(\M5/XLXN_12 )
  );
  AND3   \M5/XLXI_10  (
    .I0(G_IBUF_4),
    .I1(\M5/XLXN_13 ),
    .I2(\M5/XLXN_12 ),
    .O(\M5/XLXN_18 )
  );
  AND2   \M5/M1/XLXI_16  (
    .I0(\M5/M1/XLXN_21 ),
    .I1(\M5/M1/XLXN_12 ),
    .O(\M5/XLXN_4 )
  );
  AND2   \M5/M1/XLXI_10  (
    .I0(\M5/M1/XLXN_21 ),
    .I1(\M5/M1/XLXN_16 ),
    .O(\M5/XLXN_6 )
  );
  AND2   \M5/M1/XLXI_11  (
    .I0(\M5/M1/XLXN_21 ),
    .I1(\M5/M1/XLXN_18 ),
    .O(\M5/XLXN_7 )
  );
  AND2   \M5/M1/XLXI_9  (
    .I0(\M5/M1/XLXN_21 ),
    .I1(\M5/M1/XLXN_14 ),
    .O(\M5/XLXN_5 )
  );
  AND2   \M5/M1/XLXI_3  (
    .I0(\M5/M1/XLXN_4 ),
    .I1(\M5/M1/XLXN_2 ),
    .O(\M5/M1/XLXN_12 )
  );
  AND2   \M5/M1/XLXI_15  (
    .I0(C_IBUF_3),
    .I1(\M5/M1/XLXN_18 ),
    .O(\M5/XLXN_11 )
  );
  AND2   \M5/M1/XLXI_14  (
    .I0(C_IBUF_3),
    .I1(\M5/M1/XLXN_16 ),
    .O(\M5/XLXN_10 )
  );
  AND2   \M5/M1/XLXI_13  (
    .I0(C_IBUF_3),
    .I1(\M5/M1/XLXN_14 ),
    .O(\M5/XLXN_9 )
  );
  AND2   \M5/M1/XLXI_12  (
    .I0(C_IBUF_3),
    .I1(\M5/M1/XLXN_12 ),
    .O(\M5/XLXN_8 )
  );
  INV   \M5/M1/XLXI_8  (
    .I(C_IBUF_3),
    .O(\M5/M1/XLXN_21 )
  );
  INV   \M5/M1/XLXI_7  (
    .I(B_IBUF_2),
    .O(\M5/M1/XLXN_4 )
  );
  AND2   \M5/M1/XLXI_5  (
    .I0(B_IBUF_2),
    .I1(\M5/M1/XLXN_2 ),
    .O(\M5/M1/XLXN_16 )
  );
  AND2   \M5/M1/XLXI_6  (
    .I0(B_IBUF_2),
    .I1(A_IBUF_1),
    .O(\M5/M1/XLXN_18 )
  );
  AND2   \M5/M1/XLXI_4  (
    .I0(\M5/M1/XLXN_4 ),
    .I1(A_IBUF_1),
    .O(\M5/M1/XLXN_14 )
  );
  INV   \M5/M1/XLXI_1  (
    .I(A_IBUF_1),
    .O(\M5/M1/XLXN_2 )
  );
  IBUF   A_IBUF (
    .I(A),
    .O(A_IBUF_1)
  );
  IBUF   B_IBUF (
    .I(B),
    .O(B_IBUF_2)
  );
  IBUF   C_IBUF (
    .I(C),
    .O(C_IBUF_3)
  );
  IBUF   G_IBUF (
    .I(G),
    .O(G_IBUF_4)
  );
  IBUF   G_2A_IBUF (
    .I(G_2A),
    .O(G_2A_IBUF_5)
  );
  IBUF   G_2B_IBUF (
    .I(G_2B),
    .O(G_2B_IBUF_6)
  );
  OBUF   Y_7_OBUF (
    .I(Y_7_OBUF_20),
    .O(Y[7])
  );
  OBUF   Y_6_OBUF (
    .I(Y_6_OBUF_21),
    .O(Y[6])
  );
  OBUF   Y_5_OBUF (
    .I(Y_5_OBUF_22),
    .O(Y[5])
  );
  OBUF   Y_4_OBUF (
    .I(Y_4_OBUF_23),
    .O(Y[4])
  );
  OBUF   Y_3_OBUF (
    .I(Y_3_OBUF_24),
    .O(Y[3])
  );
  OBUF   Y_2_OBUF (
    .I(Y_2_OBUF_25),
    .O(Y[2])
  );
  OBUF   Y_1_OBUF (
    .I(Y_1_OBUF_26),
    .O(Y[1])
  );
  OBUF   Y_0_OBUF (
    .I(Y_0_OBUF_27),
    .O(Y[0])
  );
  OBUF   ledclk_OBUF (
    .I(ledclk_OBUF_8),
    .O(ledclk)
  );
  OBUF   ledsout_OBUF (
    .I(ledsout_OBUF_10),
    .O(ledsout)
  );
  OBUF   ledclrn_OBUF (
    .I(ledclrn_OBUF_9),
    .O(ledclrn)
  );
  OBUF   LEDEN_OBUF (
    .I(LEDEN_OBUF_11),
    .O(LEDEN)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<1>_rt  (
    .I0(\U9/clkdiv [1]),
    .O(\U9/Mcount_clkdiv_cy<1>_rt_129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<2>_rt  (
    .I0(\U9/clkdiv [2]),
    .O(\U9/Mcount_clkdiv_cy<2>_rt_130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<3>_rt  (
    .I0(\U9/clkdiv [3]),
    .O(\U9/Mcount_clkdiv_cy<3>_rt_131 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<4>_rt  (
    .I0(\U9/clkdiv [4]),
    .O(\U9/Mcount_clkdiv_cy<4>_rt_132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<5>_rt  (
    .I0(\U9/clkdiv [5]),
    .O(\U9/Mcount_clkdiv_cy<5>_rt_133 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<6>_rt  (
    .I0(\U9/clkdiv [6]),
    .O(\U9/Mcount_clkdiv_cy<6>_rt_134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<7>_rt  (
    .I0(\U9/clkdiv [7]),
    .O(\U9/Mcount_clkdiv_cy<7>_rt_135 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<8>_rt  (
    .I0(\U9/clkdiv [8]),
    .O(\U9/Mcount_clkdiv_cy<8>_rt_136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<9>_rt  (
    .I0(\U9/clkdiv [9]),
    .O(\U9/Mcount_clkdiv_cy<9>_rt_137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<10>_rt  (
    .I0(\U9/clkdiv [10]),
    .O(\U9/Mcount_clkdiv_cy<10>_rt_138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<11>_rt  (
    .I0(\U9/clkdiv [11]),
    .O(\U9/Mcount_clkdiv_cy<11>_rt_139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<12>_rt  (
    .I0(\U9/clkdiv [12]),
    .O(\U9/Mcount_clkdiv_cy<12>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<13>_rt  (
    .I0(\U9/clkdiv [13]),
    .O(\U9/Mcount_clkdiv_cy<13>_rt_141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<14>_rt  (
    .I0(\U9/clkdiv [14]),
    .O(\U9/Mcount_clkdiv_cy<14>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<15>_rt  (
    .I0(\U9/clkdiv [15]),
    .O(\U9/Mcount_clkdiv_cy<15>_rt_143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<16>_rt  (
    .I0(\U9/clkdiv [16]),
    .O(\U9/Mcount_clkdiv_cy<16>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<17>_rt  (
    .I0(\U9/clkdiv [17]),
    .O(\U9/Mcount_clkdiv_cy<17>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<18>_rt  (
    .I0(\U9/clkdiv [18]),
    .O(\U9/Mcount_clkdiv_cy<18>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U9/Mcount_clkdiv_cy<19>_rt  (
    .I0(\U9/clkdiv [19]),
    .O(\U9/Mcount_clkdiv_cy<19>_rt_147 )
  );
  BUFGP   clk_100mhz_BUFGP (
    .I(clk_100mhz),
    .O(clk_100mhz_BUFGP_0)
  );
  INV   \U9/Mcount_clkdiv_lut<0>_INV_0  (
    .I(\U9/clkdiv [0]),
    .O(\U9/Mcount_clkdiv_lut [0])
  );
  INV   \Y<7>1_INV_0  (
    .I(ny7),
    .O(Y_7_OBUF_20)
  );
  INV   \Y<6>1_INV_0  (
    .I(ny6),
    .O(Y_6_OBUF_21)
  );
  INV   \Y<5>1_INV_0  (
    .I(ny5),
    .O(Y_5_OBUF_22)
  );
  INV   \Y<4>1_INV_0  (
    .I(ny4),
    .O(Y_4_OBUF_23)
  );
  INV   \Y<3>1_INV_0  (
    .I(ny3),
    .O(Y_3_OBUF_24)
  );
  INV   \Y<2>1_INV_0  (
    .I(ny2),
    .O(Y_2_OBUF_25)
  );
  INV   \Y<1>1_INV_0  (
    .I(ny1),
    .O(Y_1_OBUF_26)
  );
  INV   \Y<0>1_INV_0  (
    .I(ny0),
    .O(Y_0_OBUF_27)
  );
  LEDP2S   U7 (
    .clk(clk_100mhz_BUFGP_0),
    .rst(rst),
    .Start(\U9/clkdiv [20]),
    .sclk(ledclk_OBUF_8),
    .sclrn(ledclrn_OBUF_9),
    .sout(ledsout_OBUF_10),
    .EN(LEDEN_OBUF_11),
    .PData({N0, N0, N0, N0, N0, N0, N0, N0, Y_7_OBUF_20, Y_6_OBUF_21, Y_5_OBUF_22, Y_4_OBUF_23, Y_3_OBUF_24, Y_2_OBUF_25, Y_1_OBUF_26, Y_0_OBUF_27})
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

