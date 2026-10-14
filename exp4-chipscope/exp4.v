`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:47 11/07/2022 
// Design Name: 
// Module Name:    exp4 
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
module exp4(
    input clk,
    output reg [7:0] sum,
    output reg [16:0] mul
    );
	 
	 
wire [7:0] in1,in2;
reg [10:0] counter = 0;
reg [8:0] addra; 

always @ (posedge clk) begin
	addra <= counter;
	sum <= in1 + in2;
	mul <= in1 * in2;
	counter <= counter + 1;
	
	if(counter == 511)begin
		counter <= 0;
	end
		
end 

	 
rom myrom1 (
  .clka(clk), // input clka
  .addra(addra), // input [8 : 0] addra
  .douta(in1) // output [7 : 0] douta
);

rom2 myrom2 (
  .clka(clk), // input clka
  .addra(addra), // input [8 : 0] addra
  .douta(in2) // output [7 : 0] douta
);


endmodule
