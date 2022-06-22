`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    VGA_driver 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module VGA_driver(
	 input wire vga_clk,
    input wire [11:0] data,
    output wire [9:0] x,
    output wire [8:0] y,
    output wire hs,
    output wire vs,
    output wire [3:0] r,
    output wire [3:0] g,
    output wire [3:0] b
    );

    wire cas;
    vgac vga_drv(.d_in(data), .vga_clk(vga_clk), .clrn(1'b1), 
         .row_addr(y), .col_addr(x), .rdn(cas), 
         .hs(hs), .vs(vs), .r(r), .g(g), .b(b));

endmodule