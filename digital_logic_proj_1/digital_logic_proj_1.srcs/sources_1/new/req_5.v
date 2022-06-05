`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2022 01:19:33 AM
// Design Name: 
// Module Name: req_5
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module req_5(
    input [11:8] i_sw,
    input [3:0] i_sw,
    output [3:0] o_seg_an,
    output [6:0] o_seg_cat
);

case (i_sw)
    4'b0000 : begin
        assign o_anode_sel[]
    end
    4'b0001 : begin

    end
    4'b0010 : begin
    
    end
    4'b0011 : begin
    
    end
    4'b0100 : begin
    
    end
    4'b0101 : begin

    end
    4'b0110 : begin

    end
    4'b0111 : begin
    
    end
    4'b1000 : begin

    end
    4'b1001 : begin

    end
    default: 
endcase


endmodule