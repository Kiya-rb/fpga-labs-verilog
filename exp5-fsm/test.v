`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:57:18 11/13/2022
// Design Name:   Q1_TrafficLight
// Module Name:   C:/Users/rabba/Uni/401-402 1/Labs/FPGA Lab/EXP5/Code/exp5/test.v
// Project Name:  exp5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q1_TrafficLight
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg sensor;

	// Outputs
	wire [2:0] HighWay_TL;
	wire [2:0] Street_TL;
	wire [6:0] number;

	// Instantiate the Unit Under Test (UUT)
	Q1_TrafficLight uut (
		.clk(clk), 
		.sensor(sensor), 
		.HighWay_TL(HighWay_TL), 
		.Street_TL(Street_TL), 
		.number(number)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sensor = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		#10 sensor = 1;
        
		// Add stimulus here

	end
	
always #20.833 clk = ~clk;
      
endmodule

