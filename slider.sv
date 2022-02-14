module slider(
		input logic[15:0] A,
		input logic[31:0] B,
		output logic equal);

	logic [15:0] dec_out1,dec_out2,dec_out3,dec_out4;

	decoder16bit decoder1(B[19:16], dec_out1);
	decoder16bit decoder2(B[23:20], dec_out2);
	decoder16bit decoder3(B[27:24], dec_out3);
	decoder16bit decoder4(B[31:28], dec_out4);

	logic wire0,wire1,wire2,wire3,wire4,wire5,wire6,wire7,
		wire8,wire9,wire10,wire11,wire12,wire13,wire14,wire15;

	assign wire0 = ~(A[0] ^ B[0]);
	assign wire1 = ~(A[1] ^ B[1]);
	assign wire2 = ~(A[2] ^ B[2]);
	assign wire3 = ~(A[3] ^ B[3]);
	assign wire4 = ~(A[4] ^ B[4]);
	assign wire5 = ~(A[5] ^ B[5]);
	assign wire6 = ~(A[6] ^ B[6]);
	assign wire7 = ~(A[7] ^ B[7]);
	assign wire8 = ~(A[8] ^ B[8]);
	assign wire9 = ~(A[9] ^ B[9]);
	assign wire10 = ~(A[10] ^ B[10]);
	assign wire11 = ~(A[11] ^ B[11]);
	assign wire12 = ~(A[12] ^ B[12]);
	assign wire13 = ~(A[13] ^ B[13]);
	assign wire14 = ~(A[14] ^ B[14]);
	assign wire15 = ~(A[15] ^ B[15]);

	assign equal = (wire0|dec_out1[0]|dec_out2[0]|dec_out3[0]|dec_out4[0])
		&(wire1|dec_out1[1]|dec_out2[1]|dec_out3[1]|dec_out4[1])
		&(wire2|dec_out1[2]|dec_out2[2]|dec_out3[2]|dec_out4[2])
		&(wire3|dec_out1[3]|dec_out2[3]|dec_out3[3]|dec_out4[3])
		&(wire4|dec_out1[4]|dec_out2[4]|dec_out3[4]|dec_out4[4])
		&(wire5|dec_out1[5]|dec_out2[5]|dec_out3[5]|dec_out4[5])
		&(wire6|dec_out1[6]|dec_out2[6]|dec_out3[6]|dec_out4[6])
		&(wire7|dec_out1[7]|dec_out2[7]|dec_out3[7]|dec_out4[7])
		&(wire8|dec_out1[8]|dec_out2[8]|dec_out3[8]|dec_out4[8])
		&(wire9|dec_out1[9]|dec_out2[9]|dec_out3[9]|dec_out4[9])
		&(wire10|dec_out1[10]|dec_out2[10]|dec_out3[10]|dec_out4[10])
		&(wire11|dec_out1[11]|dec_out2[11]|dec_out3[11]|dec_out4[11])
		&(wire12|dec_out1[12]|dec_out2[12]|dec_out3[12]|dec_out4[12])
		&(wire13|dec_out1[13]|dec_out2[13]|dec_out3[13]|dec_out4[13])
		&(wire14|dec_out1[14]|dec_out2[14]|dec_out3[14]|dec_out4[14])
		&(wire15|dec_out1[15]|dec_out2[15]|dec_out3[15]|dec_out4[15]);

endmodule





