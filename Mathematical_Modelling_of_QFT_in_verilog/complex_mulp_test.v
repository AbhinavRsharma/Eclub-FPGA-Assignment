`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:33:49 07/04/2019
// Design Name:   complex_mulp
// Module Name:   /home/ise/Documents/qftsc/complex_mulp_test.v
// Project Name:  qftsc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: complex_mulp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module complex_mulp_test;

	// Inputs
	reg [7:0] in_r;
	reg [7:0] in_i;
	reg [11:0] cos_2p_by;
	reg [11:0] sin_2p_by;

	// Outputs
	wire [12:0] out_r;
	wire [12:0] out_i;
	// Instantiate the Unit Under Test (UUT)
	complex_mulp uut (
		in_r, 
		in_i, 
		cos_2p_by, 
		sin_2p_by, 
		out_r, 
		out_i
	);

	initial begin
		// Initialize Inputs
		
		#100;
       
		in_r = 5;
		in_i = 3;
		cos_2p_by = 12'b001000000000;
		sin_2p_by = 12'b110000000000;
		// Add stimulus here
		#100;
	end
      
endmodule

