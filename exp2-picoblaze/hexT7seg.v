`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:48 10/16/2022 
// Design Name: 
// Module Name:    hexT7seg 
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
module hexTo7seg(
    input [0:3] hexInput,
    output reg [0:6] out
    );
	 
always @ (hexInput) begin
		case(hexInput)
			0 : out = 7'b1111110;
			1 : out = 7'b0110000;
			2 : out = 7'b1101101;
			3 : out = 7'b1111001;
			4 : out = 7'b0110011;
			5 : out = 7'b1011011;
			6 : out = 7'b1011111;
			7 : out = 7'b1110000;
			8 : out = 7'b1111111;
			9 : out = 7'b1110011;
			10 : out = 7'b1110111;
			11 : out = 7'b0011111;
			12 : out = 7'b1001110;
			13 : out = 7'b0111101;
			14 : out = 7'b1001111;
			15 : out = 7'b1000111;
			default: out = 7'b1111111;
		endcase	
	
end

endmodule
