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

localparam dec_0 = 8'b11000000;
localparam dec_1 = 8'b11111001;
localparam dec_2 = 8'b10100100;
localparam dec_3 = 8'b10110000;
localparam dec_4 = 8'b10011001;
localparam dec_5 = 8'b10010010;
localparam dec_6 = 8'b10000010;
localparam dec_7 = 8'b11111000;
localparam dec_8 = 8'b10000000;
localparam dec_9 = 8'b10011000;
localparam dec_A = 8'b10001000;
localparam dec_b = 8'b10000011;
localparam dec_C = 8'b11000110;
localparam dec_d = 8'b10100001;
localparam dec_E = 8'b10000110;
localparam dec_F = 8'b10001110;
localparam no_dec = 8'b11111111;

localparam no_dig = 4'b1111;
localparam dig_0 = 4'b1110;
localparam dig_1 = 4'b1101;
localparam dig_2 = 4'b1011;
localparam dig_3 = 4'b0111;

module req_5(
    input [3:0] i_num,
    input [3:0] i_dig,
    output [3:0] o_seg_an,
    output [7:0] o_seg_cat
);

reg [3:0] dig_sel;
reg [7:0] num_sel;

always @(i_num, i_dig) 
begin
    case (i_num)
        4'b0000 : begin
            num_sel <= dec_0;
        end
        4'b0001 : begin
            num_sel <= dec_1;
        end
        4'b0010 : begin
            num_sel <= dec_2;
        end
        4'b0011 : begin
            num_sel <= dec_3;
        end
        4'b0100 : begin
            num_sel <= dec_4;
        end
        4'b0101 : begin
            num_sel <= dec_5;
        end
        4'b0110 : begin
            num_sel <= dec_6;
        end
        4'b0111 : begin
            num_sel <= dec_7;
        end
        4'b1000 : begin
            num_sel <= dec_8;
        end
        4'b1001 : begin
            num_sel <= dec_9;
        end
        4'b1010 : begin
            num_sel <= dec_A;
        end
        4'b1011 : begin
            num_sel <= dec_b;
        end
        4'b1100 : begin
            num_sel <= dec_C;
        end
        4'b1101 : begin
            num_sel <= dec_d;
        end
        4'b1110 : begin
            num_sel <= dec_E;
        end
        4'b1111 : begin
            num_sel <= dec_F;
        end
        default: num_sel <= no_dec;
    endcase

    case (i_dig)
        4'b0001 : dig_sel <= dig_0;
        4'b0010 : dig_sel <= dig_1;
        4'b0011 : dig_sel <= dig_0 & dig_1;
        4'b0100 : dig_sel <= dig_2;
        4'b0101 : dig_sel <= dig_0 & dig_2;
        4'b0110 : dig_sel <= dig_1 & dig_2;
        4'b0111 : dig_sel <= dig_0 & dig_1 & dig_2;
        4'b1000 : dig_sel <= dig_3;
        4'b1001 : dig_sel <= dig_0 & dig_3;
        4'b1010 : dig_sel <= dig_1 & dig_3;
        4'b1011 : dig_sel <= dig_0 & dig_1 & dig_3;
        4'b1100 : dig_sel <= dig_2 & dig_3;
        4'b1101 : dig_sel <= dig_0 & dig_2 & dig_3;
        4'b1110 : dig_sel <= dig_1 & dig_2 & dig_3;
        4'b1111 : dig_sel <= dig_0 & dig_1 & dig_2 & dig_3;
        default: dig_sel <= no_dig;

    endcase

end

assign o_seg_an = dig_sel;
assign o_seg_cat = num_sel;

endmodule