`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:01 10/24/2022 
// Design Name: 
// Module Name:    clk_devider 
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
module clk_devider(
    input clk,
    output reg clk_out_t,
	 output reg clk_out_r
	 //output reg firstbitFlag = 0
    );
	 
	 
	 reg [0:12] counter_t = 1249;
	 reg [0:12] counter_r = 0;
	 
	 
	always @ (posedge clk) begin
		if (counter_t == 2499)begin
			clk_out_t <= ~clk_out_t; 
			counter_t <= 0;
		end
		counter_t <= counter_t + 1;
	end 
	
		always @ (posedge clk) begin
		if (counter_r == 2499)begin
			clk_out_r <= ~clk_out_r; 
			counter_r <= 0;
		end
		counter_r <= counter_r + 1;
	end 


endmodule
