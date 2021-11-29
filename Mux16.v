module Mux16 (

	input [15:0] in,
	input [3:0] sel,
	output out
);

	assign out = in[(sel[3]*8)+(sel[2]*4)+(sel[1] * 2) + sel[0]];
endmodule 