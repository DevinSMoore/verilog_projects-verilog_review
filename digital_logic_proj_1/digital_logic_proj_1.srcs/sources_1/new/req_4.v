`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2022 01:19:33 AM
// Design Name: 
// Module Name: req_4
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


module req_4(
    input [11:0] i_sw,
    output [9:0] o_led,
    output [2:0] o_RGB_led_A,
    output o_RGB_led_B
    );
    
assign o_led[9:0] = i_sw[9:0];
assign o_RGB_led_A[1:0] = i_sw[11:10];
    
endmodule
