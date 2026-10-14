`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:34 10/24/2022 
// Design Name: 
// Module Name:    UART 
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
    input [7:0] in,
	 input start_op,
    output TX,
    input RX,
    output [7:0] out
    );
	 
	uart_receiver M1(
    .clk(clk_out_r),
    .RX(RX),
    .Data_OUT(out)
    );
	 
	uart_transmitter M2(
    .clk(clk_out_t),
    .data_in(in),
    .start(start_op),
    .TX(TX)
    );
	 
	clk_devider instance_name (
    .clk(clk), 
    .clk_out_t(clk_out_t), 
    .clk_out_r(clk_out_r)
    );



endmodule
