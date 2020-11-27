module top(input clk, rst, output [7:0] leds);

// TODO: Test miter circuit without reset value.
reg [7:0] ctr = 8'h00;
always @(posedge clk)
	if (rst)
		ctr <= 8'h00;
	else
		ctr <= ctr + 1'b1;

assign leds = ctr;

endmodule
