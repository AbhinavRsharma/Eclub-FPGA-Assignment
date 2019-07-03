`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:10 07/03/2019 
// Design Name: 
// Module Name:    complex_mulp 
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
module complex_mulp(in_r, in_i, cos_2p_by, sin_2p_by, out_r, out_i 
    );
input wire signed [7:0] in_r;// 1 sign bit, 7 integer bits  
input wire signed [7:0] in_i;
output wire signed [12:0] out_r;// 1 sign bit, 11 integer bits
output wire signed [12:0] out_i;

//// Matrix elements
input wire signed [11:0] sin_2p_by;// 1 sign bit, 1 integer bits, 10 fractional bits
input wire signed [11:0] cos_2p_by;

reg signed [17:0] in_r_temp, in_i_temp; 
reg signed [17:0] cos, sin;
wire signed [35:0] out_r_temp1, out_i_temp1, out_r_temp2, out_i_temp2;
wire signed [36:0] out_r_temp, out_i_temp;

initial begin
	in_r_temp <= {in_r,10'd0};
	in_i_temp <= {in_i,10'd0};
	cos <= {cos_2p_by[11],6'd0,cos_2p_by[10:0]};
	sin <= {sin_2p_by[11],6'd0,sin_2p_by[10:0]};
end

assign out_r_temp1 = cos*in_r_temp;
assign out_r_temp2 = -sin*in_i_temp;

assign out_i_temp1 = cos*in_i_temp;
assign out_i_temp2 = sin*in_r_temp;

assign out_r_temp = out_r_temp1+out_r_temp2;
assign out_i_temp = out_i_temp1+out_i_temp2;

assign out_r = {out_r_temp[36],out_r_temp[24:14]};
assign out_r = {out_r_temp[36],out_r_temp[24:14]};

endmodule
