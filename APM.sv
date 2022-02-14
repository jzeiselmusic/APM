module APM(
		input logic [31:0] A,
		input logic [31:0] B,
		output logic [31:0] Y);

	logic [16:0] equal;
	logic [7:0] highest_level;

	matching m0(A,B,equal);
	highest_match hm0(equal,highest_level);

	assign Y = {highest_level, 7'b0000000, equal};

endmodule


