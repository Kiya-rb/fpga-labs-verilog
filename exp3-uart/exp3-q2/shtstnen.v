`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:47 10/24/2022 
// Design Name: 
// Module Name:    shtstnen 
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
module uart_receiver(
    input clk,
    input RX,
    output reg [7:0] Data_OUT=8'HFF
    );
	 
	 reg [9:0] sr=10'HFFF;
	 
	 always @(posedge clk) begin
		sr[9:0] <= {RX,sr[9:1]};
		if (sr[9]==1 && sr[0]==0) begin
			Data_OUT <= sr[8:1];
			sr[9:0] <= {RX,9'HFFF};
			end
		else
			sr[9:0] <= {RX,sr[9:1]};
		end
endmodule
