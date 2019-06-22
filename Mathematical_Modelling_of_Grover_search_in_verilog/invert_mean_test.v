`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:37:09 06/22/2019
// Design Name:   grover_invertMean
// Module Name:   /home/ise/Documents/grover/invert_mean_test.v
// Project Name:  grover
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: grover_invertMean
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module invert_mean_test;

	// Inputs
	reg [7:0] i0;
	reg [7:0] i1;
	reg [7:0] i2;
	reg [7:0] i3;
	reg [7:0] i4;
	reg [7:0] i5;
	reg [7:0] i6;
	reg [7:0] i7;

	// Outputs
	wire [7:0] o0;
	wire [7:0] o1;
	wire [7:0] o2;
	wire [7:0] o3;
	wire [7:0] o4;
	wire [7:0] o5;
	wire [7:0] o6;
	wire [7:0] o7;

	// Instantiate the Unit Under Test (UUT)
	invert_mean uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.o0(o0), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4), 
		.o5(o5), 
		.o6(o6), 
		.o7(o7)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 1;
		i2 = 2;
		i3 = 3;
		i4 = 4;
		i5 = 5;
		i6 = 6;
		i7 = 7;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

