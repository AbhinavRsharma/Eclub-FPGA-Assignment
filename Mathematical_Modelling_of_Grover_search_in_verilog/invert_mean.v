`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:52 06/22/2019 
// Design Name: 
// Module Name:    invert_mean 
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
module invert_mean (i0, i1, i2, i3, i4, i5, i6, i7, o0, o1, o2, o3, o4, o5, o6, o7
    );
	 parameter num_bit = 3;parameter fixedpoint_bit = 8;parameter num_sample = 2**num_bit;
	 input signed [7:0] i1,i2,i3,i4,i5,i6,i7,i0;
	 output reg signed [7:0] o1,o2,o3,o4,o5,o6,o7,o0;
	 reg [7:0] invertMean [0:7];
	 integer j,k;
	 reg signed [10:0] sum;		
    wire signed [8:0] twoMean;
	 
	 always @*
     begin
		j=0;
		sum = i0;
		j = j+1;
		sum = sum + i1;
		j = j+1;
		sum = sum + i2;
		j = j+1;
		sum = sum + i3;
		j = j+1;
		sum = sum + i4;
		j = j+1;
		sum = sum + i5;
		j = j+1;
		sum = sum + i6;
		j = j+1;
		sum = sum + i7;
    end

    assign twoMean = sum[10:2];	
    reg signed [8:0] temp;

    always @*
    begin
	    temp = twoMean - i0;
	    o0 = temp[7:0];	
	    temp = twoMean - i1;
	    o1 = temp[7:0];	
	    temp = twoMean - i2;
	    o2 = temp[7:0];	
	    temp = twoMean - i3;
	    o3 = temp[7:0];	
	    temp = twoMean - i4;
	    o4 = temp[7:0];	
	    temp = twoMean - i5;
	    o5 = temp[7:0];	
	    temp = twoMean - i6;
	    o6 = temp[7:0];	
	    temp = twoMean - i7;
	    o7 = temp[7:0];	   
    end

endmodule
