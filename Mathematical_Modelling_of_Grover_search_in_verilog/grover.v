`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:58 06/22/2019 
// Design Name: 
// Module Name:    grover 
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
module grover (clk, rst, start, target_search, o0, o1, o2, o3, o4, o5, o6, o7, done
	);
	parameter num_bit = 3; parameter fixedpoint_bit = 8; parameter num_sample = (2**num_bit); parameter sqrt_num_sample = 2**(num_bit/2.0);
	parameter equalProb = 2**((fixedpoint_bit-2)-(num_bit/2.0)); parameter PI = 3.14159265; parameter num_ite = (PI/4.0) * sqrt_num_sample -0.5;
	
	input clk, rst, start;
	input [(num_bit-1):0] target_search;
	output wire signed [7:0] o1, o2, o3, o4, o5, o6, o7, o0; 
	output reg done;
	
	integer i;	genvar x; 
	reg [1:0] state, next_state;
	reg signed [(fixedpoint_bit-1):0] regIn [0:(num_sample-1)];
	wire signed [(fixedpoint_bit-1):0] regOut [0:(num_sample-1)];
	wire signed [(fixedpoint_bit-1):0] grover_phaseInvert_out [0:(num_sample-1)];
	wire signed [(fixedpoint_bit-1):0] grover_invertMean_out [0:(num_sample-1)];
	reg [(num_bit-1):0] ite_counter; 
	reg [1:0] sel_regIn;

	//Convert fraction number to integer
	function integer getNumIte(logic [31:0] in);
	begin
		getNumIte = in;
	end
	endfunction
	
	//Initialization for equal probability
	wire signed [(fixedpoint_bit-1):0] grover_equalProb [0:(num_sample-1)];
	generate
	for (x = 0; x < num_sample; x = x + 1)
	begin:init_equalProb
		assign grover_equalProb [x] = equalProb;
	end:init_equalProb
	endgenerate

	//Shared registers for storage
	registers regGrover (clk, rst, 1'b1, regIn[0], regIn[1], regIn[2], regIn[3], regIn[4], regIn[5], regIn[6], regIn[7],
		regOut[0], regOut[1], regOut[2], regOut[3], regOut[4], regOut[5], regOut[6], regOut[7]);
	defparam regGrover.sample_size = num_sample; defparam regGrover.complexnum_bit = fixedpoint_bit;
	
	//Grover Operator: Phase Inversion
	phase_invert groverOp1 (target_search, regOut[0], regOut[1], regOut[2], regOut[3], regOut[4], regOut[5], regOut[6], regOut[7],
		grover_phaseInvert_out[0],grover_phaseInvert_out[1],grover_phaseInvert_out[2],grover_phaseInvert_out[3],grover_phaseInvert_out[4],
		grover_phaseInvert_out[5],grover_phaseInvert_out[6],grover_phaseInvert_out[7]);
	defparam groverOp1.num_bit = num_bit; defparam groverOp1.fixedpoint_bit = fixedpoint_bit; defparam groverOp1.num_sample = num_sample;
	
	//Grover Operator: Inversion About Mean
	invert_mean groverOp2 (regOut[0], regOut[1], regOut[2], regOut[3], regOut[4], regOut[5], regOut[6], regOut[7],
		grover_invertMean_out[0],grover_invertMean_out[1],grover_invertMean_out[2],grover_invertMean_out[3],grover_invertMean_out[4],
		grover_invertMean_out[5],grover_invertMean_out[6],grover_invertMean_out[7]);
	defparam groverOp2.num_bit = num_bit; defparam groverOp2.fixedpoint_bit = fixedpoint_bit; defparam groverOp2.num_sample = num_sample;
	
		assign o0 = regOut[0];
		assign o1 = regOut[1];
		assign o2 = regOut[2];
		assign o3 = regOut[3];
		assign o4 = regOut[4];
		assign o5 = regOut[5];
		assign o6 = regOut[6];
		assign o7 = regOut[7];
	
	//Iteration counter for FSM control
	always @(posedge clk or posedge rst)
	begin
		if(rst)begin
			ite_counter = 'd0;
		end
		else begin
			case (state)
				0: ite_counter = 'd0;
				1: ite_counter = ite_counter;
				2: ite_counter = ite_counter + 'd1;
				3: ite_counter = ite_counter;
				default: ite_counter = ite_counter; 
			endcase
		end
	end
	
	//Multiplexer for shared registers inputs
	always @*
	begin 
		case (sel_regIn)
			0:	begin regIn = grover_equalProb; end
			1: begin regIn = grover_phaseInvert_out; end
			2: begin regIn = grover_invertMean_out; end
			3: begin regIn = regOut; end
			default:	begin regIn = regOut; end
		endcase
	end
	
	//FSM for the serial control
	//For change of state
	always @(posedge clk or posedge rst)
	begin
		if(rst)begin
			state <= 'd0;
		end
		else begin
			state <= next_state;
		end
	end
	
	//For control in each state
	always @*
	begin
		case (state)
			0: begin done = 1'd0; sel_regIn = 2'd0; if(start) next_state = 2'd1; else next_state = 2'd0;  end
			1: begin done = 1'd0; sel_regIn = 2'd1; next_state = 2'd2;  end
			2: begin done = 1'd0; sel_regIn = 2'd2; if(ite_counter==(getNumIte(num_ite)-1)) next_state = 2'd3; else next_state = 2'd1; ; end
			3: begin done = 1'd1; sel_regIn = 2'd3; next_state = 2'd3;  end
			default: begin done = 1'd0; sel_regIn = 2'd3; next_state = 2'd0;  end
		endcase
	end
 
endmodule
