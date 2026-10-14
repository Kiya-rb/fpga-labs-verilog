`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:16 11/13/2022 
// Design Name: 
// Module Name:    Q1_TrafficLight 
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
module Q1_TrafficLight(
	 input clk,
    input sensor,
    output reg [2:0] HighWay_TL=3'b100,  //green yellow red
    output reg [2:0] Street_TL=3'b001,
	 output [6:0] number,
	 output en_7seg_HW,
	 output en_7seg_S
    );
	 
	reg [24:0] counter=25'h0000000; 
//	reg [1:0] counter=2'b00;
	reg [1:0] state=2'b00;
	reg [1:0] next_state=2'b00;
	reg [3:0] timer=4'h0;				
	
	localparam [1:0]
		HWG=2'b00,
		Y1=2'b01,
		Y2=2'b10,
		SG=2'b11;
		
	always @(posedge clk) begin
		
		counter <= counter + 1'b1;
		
		if (counter==25'h16e35ff) begin // h16e35ff = 23,999,999
			timer <= timer + 1'b1;
			counter <= 25'h0000000;
			end
			
		/*if (counter==2'b11) begin 
			timer <= timer + 1'b1;
			counter <= 25'h0000000;
			end*/
			
		if (!sensor && timer==15)
			timer <= 4'h0;
			
		case (state)
			HWG: if (timer==15 && sensor) begin
						next_state <= Y1;
						timer <= 4'h0;
						counter <= 25'h0000000;
						end
						
			Y1  : if (timer==2) begin
						next_state <= SG;
						timer <= 4'h0;
						counter <= 25'h0000000;
						end
						
			Y2  : if (timer==2) begin
						next_state <= HWG;
						timer <= 4'h0;
						counter <= 25'h0000000;
						end
						
			SG : if (timer==5 || !sensor) begin
						next_state <= Y2;
						timer <= 4'h0;
						counter <= 25'h0000000;
						end
			endcase
		end
		
	always @(posedge clk)
		state <= next_state;
		
	always @(posedge clk) begin
		case (state)
			HWG: begin
					HighWay_TL <= 3'b100;
					Street_TL  <= 3'b001;
					Bcd_input <= 4'b1111-timer;
					end
					
			SG : begin
					HighWay_TL <= 3'b001;
					Street_TL  <= 3'b100;
					Bcd_input <= 4'b0101-timer;
					end
					
			default: begin
					HighWay_TL <= 3'b010;
					Street_TL  <= 3'b010;
					Bcd_input <= 4'b0010-timer;
					end
			endcase
		end
			
	
	reg [3:0] Bcd_input;
	
	 Bcd_2_7seg m1 (
    .in(Bcd_input), 
    .out(number)
    );
	 
	assign en_7seg_HW=1'b0; 		
	assign en_7seg_S=1'b0;			
	 
endmodule
