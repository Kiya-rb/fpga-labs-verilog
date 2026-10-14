`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:05 10/24/2022 
// Design Name: 
// Module Name:    uart_t 
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
module uart_transmitter(
	 input clk,
    input [7:0] data_in,
    input start,
    output reg TX=1
    );
	 

	 
	 
	 reg [8:0] sr=9'hFFF;
	 
	always @(posedge clk) begin
		if (start) begin
			sr <= {data_in,1'b0};
			end
		else begin
			TX <= sr[0];
			sr <= {1'b1,sr[8:1]};
			end
		end
		
	


endmodule