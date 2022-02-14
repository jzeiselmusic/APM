module matching(
		input logic [31:0] A,
		input logic [31:0] B,
		output logic [16:0] match);

	slider s0(A[15:0],B[31:0],match[0]);
	slider s1(A[16:1],B[31:0],match[1]);
	slider s2(A[17:2],B[31:0],match[2]);
	slider s3(A[18:3],B[31:0],match[3]);
	slider s4(A[19:4],B[31:0],match[4]);
	slider s5(A[20:5],B[31:0],match[5]);
	slider s6(A[21:6],B[31:0],match[6]);
	slider s7(A[22:7],B[31:0],match[7]);
	slider s8(A[23:8],B[31:0],match[8]);
	slider s9(A[24:9],B[31:0],match[9]);
	slider s10(A[25:10],B[31:0],match[10]);
	slider s11(A[26:11],B[31:0],match[11]);
	slider s12(A[27:12],B[31:0],match[12]);
	slider s13(A[28:13],B[31:0],match[13]);
	slider s14(A[29:14],B[31:0],match[14]);
	slider s15(A[30:15],B[31:0],match[15]);
	slider s16(A[31:16],B[31:0],match[16]);

endmodule



