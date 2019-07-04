`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:54 07/03/2019 
// Design Name: 
// Module Name:    qft 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module qft( clk, in_r0, in_r1, in_r2, in_r3, in_i0, in_i1, in_i2, in_i3,
			   out_r0, out_r1, out_r2, out_r3, out_i0, out_i1, out_i2, out_i3
	 
	 );
input clk;
input wire signed [7:0] in_r0, in_r1, in_r2, in_r3;// 1 sign bit, 7 integer bits  
input wire signed [7:0] in_i0, in_i1, in_i2, in_i3;
input wire signed [12:0] out_r0, out_r1, out_r2, out_r3;
input wire signed [12:0] out_i0, out_i1, out_i2, out_i3;// 1 sign bit, 7 integer bits, 5 fractional bits

//// Matrix elements
wire signed [11:0] sin_2p_by1 [0:3];// 1 sign bit, 1 integer bits, 10 fractional bits
wire signed [11:0] cos_2p_by1 [0:3];

wire signed [11:0] sin_2p_by2 [0:3];
wire signed [11:0] cos_2p_by2 [0:3];

wire signed [11:0] sin_2p_by3 [0:3];
wire signed [11:0] cos_2p_by3 [0:3];

wire signed [11:0] sin_2p_by4 [0:3];
wire signed [11:0] cos_2p_by4 [0:3];

//// calculating Matrix elements

assign cos_2p_by1[0] = 12'b010000000000;
assign sin_2p_by1[0] = 12'b000000000000;
assign cos_2p_by1[1] = 12'b010000000000;
assign sin_2p_by1[1] = 12'b000000000000;
assign cos_2p_by1[2] = 12'b010000000000;
assign sin_2p_by1[2] = 12'b000000000000;
assign cos_2p_by1[3] = 12'b010000000000;
assign sin_2p_by1[3] = 12'b000000000000;

assign cos_2p_by2[0] = 12'b010000000000;
assign sin_2p_by2[0] = 12'b000000000000;
assign cos_2p_by2[1] = 12'b110000000000;
assign sin_2p_by2[1] = 12'b000000000000;
assign cos_2p_by2[2] = 12'b010000000000;
assign sin_2p_by2[2] = 12'b000000000000;
assign cos_2p_by2[3] = 12'b110000000000;
assign sin_2p_by2[3] = 12'b000000000000;

assign cos_2p_by3[0] = 12'b010000000000;
assign sin_2p_by3[0] = 12'b000000000000;
assign cos_2p_by3[1] = 12'b101101110110;
assign sin_2p_by3[1] = 12'b001000000000;
assign cos_2p_by3[2] = 12'b101101110110;
assign sin_2p_by3[2] = 12'b101000000000;
assign cos_2p_by3[3] = 12'b010000000000;
assign sin_2p_by3[3] = 12'b000000000000;

assign cos_2p_by4[0] = 12'b010000000000;
assign sin_2p_by4[0] = 12'b000000000000;
assign cos_2p_by4[1] = 12'b000000000000;
assign sin_2p_by4[1] = 12'b010000000000;
assign cos_2p_by4[2] = 12'b110000000000;
assign sin_2p_by4[2] = 12'b000000000000;
assign cos_2p_by4[3] = 12'b000000000000;
assign sin_2p_by4[3] = 12'b110000000000;

calc_stt_vector c1(in_r0, in_r1, in_r2, in_r3, in_i0, in_i1, in_i2, in_i3, out_r0, out_i0,
	cos_2p_by1[0], sin_2p_by1[0], cos_2p_by1[1], sin_2p_by1[1], cos_2p_by1[2], sin_2p_by1[2], cos_2p_by1[3], sin_2p_by1[3]);
	
calc_stt_vector c2(in_r0, in_r1, in_r2, in_r3, in_i0, in_i1, in_i2, in_i3, out_r1, out_i1,
	cos_2p_by2[0], sin_2p_by2[0], cos_2p_by2[1], sin_2p_by2[1], cos_2p_by2[2], sin_2p_by2[2], cos_2p_by2[3], sin_2p_by2[3]);
	
calc_stt_vector c3(in_r0, in_r1, in_r2, in_r3, in_i0, in_i1, in_i2, in_i3, out_r2, out_i2,
	cos_2p_by3[0], sin_2p_by3[0], cos_2p_by3[1], sin_2p_by3[1], cos_2p_by3[2], sin_2p_by3[2], cos_2p_by3[3], sin_2p_by3[3]);
	
calc_stt_vector c4(in_r0, in_r1, in_r2, in_r3, in_i0, in_i1, in_i2, in_i3, out_r3, out_i3,
	cos_2p_by4[0], sin_2p_by4[0], cos_2p_by4[1], sin_2p_by4[1], cos_2p_by4[2], sin_2p_by4[2], cos_2p_by4[3], sin_2p_by4[3]);



endmodule
