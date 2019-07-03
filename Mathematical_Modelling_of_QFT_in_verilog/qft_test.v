`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:43:32 07/03/2019
// Design Name:   qft
// Module Name:   /home/ise/Documents/qftsc/qft_test.v
// Project Name:  qftsc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: qft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module qft_test;

	// Inputs
	reg clk;
	reg [7:0] in_r0;
	reg [7:0] in_r1;
	reg [7:0] in_r2;
	reg [7:0] in_r3;
	reg [7:0] in_i0;
	reg [7:0] in_i1;
	reg [7:0] in_i2;
	reg [7:0] in_i3;
	reg [12:0] out_r0;
	reg [12:0] out_r1;
	reg [12:0] out_r2;
	reg [12:0] out_r3;
	reg [12:0] out_i0;
	reg [12:0] out_i1;
	reg [12:0] out_i2;
	reg [12:0] out_i3;

	// Instantiate the Unit Under Test (UUT)
	qft uut (
		.clk(clk), 
		.in_r0(in_r0), 
		.in_r1(in_r1), 
		.in_r2(in_r2), 
		.in_r3(in_r3), 
		.in_i0(in_i0), 
		.in_i1(in_i1), 
		.in_i2(in_i2), 
		.in_i3(in_i3), 
		.out_r0(out_r0), 
		.out_r1(out_r1), 
		.out_r2(out_r2), 
		.out_r3(out_r3), 
		.out_i0(out_i0), 
		.out_i1(out_i1), 
		.out_i2(out_i2), 
		.out_i3(out_i3)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		in_r0 = 2;
		in_r1 = 4;
		in_r2 = 6;
		in_r3 = 8;
		in_i0 = 0;
		in_i1 = 0;
		in_i2 = 0;
		in_i3 = 0;
		out_r0 = 0;
		out_r1 = 0;
		out_r2 = 0;
		out_r3 = 0;
		out_i0 = 0;
		out_i1 = 0;
		out_i2 = 0;
		out_i3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

