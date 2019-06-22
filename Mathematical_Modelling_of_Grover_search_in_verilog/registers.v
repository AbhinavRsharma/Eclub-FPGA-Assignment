`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:03 06/22/2019 
// Design Name: 
// Module Name:    registers 
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
module registers (clk, rst, en, i0, i1, i2, i3, i4, i5, i6, i7, o0, o1, o2, o3, o4, o5, o6, o7
    );
	 parameter sample_size = 8;parameter complexnum_bit = 8;
	 input clk, rst, en;
	 input signed[7:0] i1,i2,i3,i4,i5,i6,i7,i0;
	 output reg signed[7:0] o1,o2,o3,o4,o5,o6,o7,o0;
	 
    integer i;
	always@(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			for (i = 0; i < sample_size; i = i + 1) 
			begin
				o0[i] <= 0;
				o1[i] <= 0;
				o2[i] <= 0;
				o3[i] <= 0;
				o4[i] <= 0;
				o5[i] <= 0;
				o6[i] <= 0;
				o7[i] <= 0;
			end
		end
		else
		begin
			i=0; 
			if(en)
			begin
				for (i = 0; i < sample_size; i = i + 1) 
				begin
					o0[i] <= i0[i];
					o1[i] <= i1[i];
					o2[i] <= i2[i];
					o3[i] <= i3[i];
					o4[i] <= i4[i];
					o5[i] <= i5[i];
					o6[i] <= i6[i];
					o7[i] <= i7[i];
				end
			end
		end
	end


endmodule
