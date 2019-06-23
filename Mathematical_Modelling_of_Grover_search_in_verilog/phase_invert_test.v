`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:04 06/22/2019
// Design Name:   grover_phaseInvert
// Module Name:   /home/ise/Documents/grover/phase_invert_test.v
// Project Name:  grover
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: grover_phaseInvert
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module phase_invert_test;

	// Inputs
	reg [2:0] target_search;
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
	phase_invert uut (
		.target_search(target_search), 
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
		target_search = 3;
		i0 = 1;
		i1 = 2;
		i2 = 3;
		i3 = 4;
		i4 = 5;
		i5 = 6;
		i6 = 7;
		i7 = 8;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

