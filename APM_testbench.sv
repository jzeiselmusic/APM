module APM_testbench();

	logic [31:0] A, B, Y;
	logic[4:0] top_match;
	logic[16:0] match_locs;

	APM apm(A,B,Y);

	assign top_match = Y[28:24];
	assign match_locs = Y[16:0];

	initial begin

	A = 32'b11111111111111111111111111111101; // DC is just 0
	B = {16'b0000000000000000, 16'b1111111111111110}; // LSB should be 0 and then every other should be 1

	#200;

	A = 32'b00000000000000000000000000000000; // DC is 0
	B = {16'b0000000000000000, 16'b1111111111111111}; // every output bit should be 0

	#200;

	A = 32'b01011111111111111111111111111010;  // DC is 2,15,and 0
	B = {16'b0010111100000010, 16'b0111111111111110}; // every output should be 1 except the second and the last 2

	#200;

	A = 32'b00000010000000100100001000000100; // DC is 0, 1, 2 and 3
	B = {16'b0000000100100011, 16'b0100001000000111}; // every output bit should be 0 except the first 

	#200;

	A = 32'b11111111111111101111111111111110; // DC is just 15
	B = {16'b1111111111111111, 16'b0111111111111110}; // every output should be 0 except for the first and last

	#200;

	end
endmodule

