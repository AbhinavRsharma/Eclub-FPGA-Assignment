`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:19:16 06/22/2019
// Design Name:   registers
// Module Name:   /home/ise/Documents/grover/registers_test.v
// Project Name:  grover
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registers_test;

	// Inputs
	reg clk;
	reg rst;
	reg en;
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
	registers uut (
		.clk(clk), 
		.rst(rst), 
		.en(en), 
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
		clk = 0;
		rst = 0;
		en = 0;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 1;
		
		#100;
		
		rst = 0;
		#100;
		
		i0 = 8'd1;
		i1 = 8'd2;
		i2 = 8'd3;
		i3 = 8'd4;
		i4 = 8'd5;
		i5 = 8'd6;
		i6 = 8'd7;
		i7 = 8'd8;
		
		
		clk = 1;
		
        
		// Add stimulus here

	end
      
endmodule

