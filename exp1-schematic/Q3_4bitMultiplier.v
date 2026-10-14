`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:35 10/07/2022 
// Design Name: 
// Module Name:    Q3_4bitMultiplier 
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
module Q3_4bitMultiplier(
						input [3:0] a,
                  input [3:0] b,
                  output reg [7:0] out);

wire [3:0] mul1,mul2,mul3,mul4;
wire [3:0] shMul2,shMul3,shMul4;
wire [3:0] sum1,sum2;


Q2_2bitMultiplier m1(
	.firstInput(a[1:0]),
	.secondInput(b[1:0]),
	.Output(mul1));

Q2_2bitMultiplier m2(
	.firstInput(a[1:0]),
	.secondInput(b[3:2]),
	.Output(mul2));

Q2_2bitMultiplier m3(
	.firstInput(a[3:2]),
	.secondInput(b[1:0]),
	.Output(mul3));

Q2_2bitMultiplier m4(
	.firstInput(a[3:2]),
	.secondInput(b[3:2]),
	.Output(mul4));
	
assign shMul2 = mul2 << 2;	
assign shMul3 = mul3 << 2;	
assign shMul4 = mul4 << 4;	

Q3_4bitFulladder A1(
	.a)

	
	

endmodule
