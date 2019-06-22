`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:38 06/22/2019 
// Design Name: 
// Module Name:    phase_invert 
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
module grover_phaseInvert (target_search, i0, i1, i2, i3, i4, i5, i6, i7, o0, o1, o2, o3, o4, o5, o6, o7
    );
	 parameter num_bit = 3;parameter fixedpoint_bit = 24;parameter num_sample = 2**num_bit;
	 input [2:0] target_search;
	 input signed[7:0] i1,i2,i3,i4,i5,i6,i7,i0;
	 output reg signed[7:0] o1,o2,o3,o4,o5,o6,o7,o0;
	 integer i;
	 always @*
     begin
		 i=0;
		 if(i == target_search)
		 begin
			o0 = -i0;
		 end
		 else
		 begin
			o0 = i0;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o1 = -i1;
		 end
		 else
		 begin
			o1 = i1;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o2 = -i2;
		 end
		 else
		 begin
			o2 = i2;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o3 = -i3;
		 end
		 else
		 begin
			o3 = i3;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o4 = -i4;
		 end
		 else
		 begin
			o4 = i4;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o5 = -i5;
		 end
		 else
		 begin
			o5 = i5;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o6 = -i6;
		 end
		 else
		 begin
			o6 = i6;
		 end
		  i = i+1;
		 if(i == target_search)
		 begin
			o7 = -i7;
		 end
		 else
		 begin
			o7 = i7;
		 end
		  i = i+1;
     end

endmodule
