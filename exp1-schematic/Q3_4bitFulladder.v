`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:30 10/07/2022 
// Design Name: 
// Module Name:    Q3_4bitFulladder 
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
module Q3_4bitFulladder(  input [3:0] a,
                  input [3:0] b,
                  input c_in,
                  output reg c_out,
                  output reg [3:0] sum);

	always @ (a or b or c_in) begin
  	{c_out, sum} = a + b + c_in;
  end
endmodule
