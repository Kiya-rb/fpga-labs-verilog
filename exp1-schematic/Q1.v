`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:11 10/07/2022 
// Design Name: 
// Module Name:    Q1_halfAdder 
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
module Q1_halfAdder(
    input firstInput,
    input secondInput,
    output sum,
    output carry
    );
	
xor x (sum,firstInput,secondInput);
and a (carry,fristInput,secondInput);

endmodule
