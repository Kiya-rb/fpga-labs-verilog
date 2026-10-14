`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:27 11/13/2022 
// Design Name: 
// Module Name:    Bcd_2_7seg 
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
module Bcd_2_7seg(
    input [3:0] in,
    output [6:0] out
    );
	 
	wire [6:0] preOut ;
	assign preOut =(in==4'b0000) ? 7'b1111110 : (in==4'b0001) ? 7'b0110000 : (in==4'b0010) ? 7'b1101101 : (in==4'b0011) ? 7'b1111001 :
			     (in==4'b0100) ? 7'b0110011 : (in==4'b0101) ? 7'b1011011 : (in==4'b0110) ? 7'b1011111 : (in==4'b0111) ? 7'b1110000 :
				  (in==4'b1000) ? 7'b1111111 : (in==4'b1001) ? 7'b1110011 : (in==4'b1010) ? 7'b1110111 : (in==4'b1011) ? 7'b0011111 :
				  (in==4'b1100) ? 7'b1001110 : (in==4'b1101) ? 7'b0111101 : (in==4'b1110) ? 7'b1001111 : 7'b1000111;
	assign out = ~preOut;

endmodule
