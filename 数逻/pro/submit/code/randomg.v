`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Module Name:    randomg 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module randomg(
    input wire clk,
    output reg [31:0] rand
    );
    
    
    always @ (posedge clk) begin 
        rand <= {$random}%4000000000;
    end

endmodule
