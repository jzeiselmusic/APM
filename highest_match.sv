module highest_match(
		input logic [16:0] equals,
		output logic [7:0] highest);

	always_comb 
		if (equals[16]) highest <= 8'b00010000;
		else if (equals[15]) highest <= 8'b00001111;
		else if (equals[14]) highest <= 8'b00001110;
		else if (equals[13]) highest <= 8'b00001101;
		else if (equals[12]) highest <= 8'b00001100;
		else if (equals[11]) highest <= 8'b00001011;
		else if (equals[10]) highest <= 8'b00001010;
		else if (equals[9]) highest <= 8'b00001001;
		else if (equals[8]) highest <= 8'b00001000;
		else if (equals[7]) highest <= 8'b00000111;
		else if (equals[6]) highest <= 8'b00000110;
		else if (equals[5]) highest <= 8'b00000101;
		else if (equals[4]) highest <= 8'b00000100;
		else if (equals[3]) highest <= 8'b00000011;
		else if (equals[2]) highest <= 8'b00000010;
		else if (equals[1]) highest <= 8'b00000001;
		else if (equals[0]) highest <= 8'b00000000;
		else highest <= 8'b11111111;
endmodule


		
