`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:24:10 06/22/2019
// Design Name:   grover
// Module Name:   /home/ise/Documents/grover/grover_test.v
// Project Name:  grover
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: grover
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module grover_test;

	// Inputs
	reg clk;
	reg rst;
	reg start;
	reg [2:0] target_search;

	// Outputs
	wire [7:0] o0;
	wire [7:0] o1;
	wire [7:0] o2;
	wire [7:0] o3;
	wire [7:0] o4;
	wire [7:0] o5;
	wire [7:0] o6;
	wire [7:0] o7;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	grover uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.target_search(target_search), 
		.o0(o0), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4), 
		.o5(o5), 
		.o6(o6), 
		.o7(o7), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		start = 1;
		target_search = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		
        
		// Add stimulus here

	end
      
endmodule
