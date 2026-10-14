`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:41 10/24/2022 
// Design Name: 
// Module Name:    clock_devider 
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
module clock_devider(
    input clk,
    output clk_out
    );
	 
reg [0:11] counter = 0;

always @ (posedge clk) begin
	if (counter == 2499)begin
		clk_out <= ~clk_out; 
		counter <= 0;
	end
	counter = counter + 1;
end 

endmodule
