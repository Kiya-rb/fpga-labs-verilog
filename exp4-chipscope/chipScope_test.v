`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:10 11/07/2022
// Design Name:   exp4
// Module Name:   C:/Users/rabba/Uni/401-402 1/Labs/FPGA Lab/EXP4/codes/chipScope/chipScope_test.v
// Project Name:  chipScope
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: exp4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module chipScope_test;

	// Inputs
	reg clk;

	// Outputs
	wire [8:0] sum;
	wire [16:0] mul;

	// Instantiate the Unit Under Test (UUT)
	exp4 uut (
		.clk(clk), 
		.sum(sum), 
		.mul(mul)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #50 clk = ~clk;
      
endmodule

