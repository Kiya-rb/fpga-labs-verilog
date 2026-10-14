`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:11 10/24/2022 
// Design Name: 
// Module Name:    uart 
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
module UART(
    input clk,
    //input [7:0] in,
	 input start_op,
    output TX,
    input RX,
    output [7:0] out
    );
	 
	 reg [7:0] eachData = 8'b00001111;
	 
	 //reg [7:0] data [7:0];
	 //reg [2:0] counter=0;
	 
//	 always @ (posedge clk_out_t) begin 
//		if(counter == 0)
//	 
//	 end
	 
	uart_receiver M1(
    .clk(clk_out_r),
    .RX(RX),
    .Data_OUT(out)
    );
	 
	uart_transmitter M2(
    .clk(clk_out_t),
    .data_in(eachData),
    .start(start_op),
    .TX(TX)
    );
	 
	clk_devider clkDevider (
    .clk(clk), 
    .clk_out_t(clk_out_t), 
    .clk_out_r(clk_out_r)
    );



endmodule
