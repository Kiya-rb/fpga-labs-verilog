`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:12:41 10/07/2022 
// Design Name: 
// Module Name:    Q2_2bitMultiplier 
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
module Q2_2bitMultiplier(
    input [0:1] firstInput,
    input [0:1] secondInput,
    output [0:3] Output
    );

wire w1,w2,w3,w4;

and a1 (Output[0],firstInput[0],secondInput[0]);
and a2 (w1,firstInput[0],secondInput[1]);
and a3 (w2,firstInput[1],secondInput[0]);
and a4 (w3,firstInput[1],secondInput[1]);

Q1_halfAdder h1(
	.firstInput(w1),
	.secondInput(w2),
	.sum(Output[1]),
	.carry(w4));
	
Q1_halfAdder h2(
	.firstInput(w3),
	.secondInput(w4),
	.sum(Output[2]),
	.carry(Output[3]));

endmodule
