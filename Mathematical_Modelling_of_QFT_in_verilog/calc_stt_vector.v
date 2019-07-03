`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:09 07/03/2019 
// Design Name: 
// Module Name:    calc_stt_vector 
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
module calc_stt_vector(in_r0, in_r1, in_r2, in_r3, in_i0, in_i1, in_i2, in_i3, out_r, out_i,
	cos_2p_by_0, sin_2p_by_0 , cos_2p_by_1 , sin_2p_by_1 , cos_2p_by_2 , sin_2p_by_2 , cos_2p_by_3 , sin_2p_by_3);

input wire signed [7:0] in_r0, in_r1, in_r2, in_r3;// 1 sign bit, 7 integer bits  
input wire signed [7:0] in_i0, in_i1, in_i2, in_i3;
output wire signed [12:0] out_r;// 1 sign bit, 11 integer bits
output wire signed [12:0] out_i;

//// Matrix elements
input wire signed [11:0] sin_2p_by_0, sin_2p_by_1, sin_2p_by_2, sin_2p_by_3;// 1 sign bit, 1 integer bits, 10 fractional bits
input wire signed [11:0] cos_2p_by_0, cos_2p_by_1, cos_2p_by_2, cos_2p_by_3;

wire signed [12:0] out_r0, out_r1, out_r2, out_r3;
wire signed [12:0] out_i0, out_i1, out_i2, out_i3;// 1 sign bit, 11 integer bits

complex_mulp m1(in_r0, in_i0, cos_2p_by_0, sin_2p_by_0, out_r0, out_i0);
complex_mulp m2(in_r1, in_i1, cos_2p_by_1, sin_2p_by_1, out_r1, out_i1);
complex_mulp m3(in_r2, in_i2, cos_2p_by_2, sin_2p_by_2, out_r2, out_i2);
complex_mulp m4(in_r3, in_i3, cos_2p_by_3, sin_2p_by_3, out_r3, out_i3);

assign out_r = (out_r0 + out_r1 + out_r2 + out_r3)/2;
assign out_i = (out_i0 + out_i1 + out_i2 + out_i3)/2;


endmodule
