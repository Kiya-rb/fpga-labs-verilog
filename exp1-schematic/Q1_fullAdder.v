`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:51:02 10/07/2022 
// Design Name: 
// Module Name:    Q1_fullAdder 
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
module Q1_fullAdder(
    input firstInput,
    input secondInput,
    input carryIn,
    output sum,
    output carryOut
    );

wire w1,w2,w3;

xor x1 (w1,firstInput,secondInput);
xor x2 (sum,carryIn,w1);
and a1 (w2,w1,carryIn);
and a2 (w3,firstInput,secondInput);
or o (carryOut,w2,w3);

endmodule
