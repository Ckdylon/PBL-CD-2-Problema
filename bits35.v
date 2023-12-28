module bits35( //mudar para express~oes naordem nova 
	input A,B,C,D,E,F,
	output [34:0] S
);

not not0(A1,A);
not not1(B1,B);
not not2(C1,C);
not not3(D1,D);
not not4(E1,E);
not not5(F1,F);

//PRIMEIRO
and and0(S[34], A1,B1,C,D1,E1,F);
and and1(S[33], A1,B,C1,D1,E1,F);
and and2(S[32], A1,B,C,D1,E1,F);
and and3(S[31], A,B1,C1,D1,E1,F);
and and4(S[30], A,1'b0);
and and5(S[29], A,B,C1,D1,E1,F);
and and6(S[28], A,B,C,D1,E1,F);


//SEGUNDO
and and7(S[27], A1,B1,C,D1,E,F1);
and and8(S[26], A1,B,C1,D1,E,F1);
and and9(S[25], A1,B,C,D1,E,F1);
and and10(S[24], A,B1,C1,D1,E,F1);
and and11(S[23], A,1'b0);
and and12(S[22], A,B,C1,D1,E,F1);
and and13(S[21], A,B,C,D1,E,F1);


//TERCEIRO
and and14(S[20], A,1'b0);
and and15(S[19], A1,B,C1,D1,E,F);
and and16(S[18], A,1'b0);
and and17(S[17], A,B1,C1,D1,E,F);
and and18(S[16], A,1'b0);
and and19(S[15], A,B,C1,D1,E,F);
and and20(S[14], A,B,C,D1,E,F);


//QUARTO
and and21(S[13], A1,B1,C,D,E1,F1);
and and22(S[12], A1,B,C1,D,E1,F1);
and and23(S[11], A1,B,C,D,E1,F1);
and and24(S[10], A,B1,C1,D,E1,F1);
and and25(S[9], A,1'b0);
and and26(S[8], A,B,C1,D,E1,F1);
and and27(S[7], A,B,C,D,E1,F1);


//QUINTO
and and28(S[6], A1,B1,C,D,E1,F);
and and29(S[5], A1,B,C1,D,E1,F);
and and30(S[4], A1,B,C,D,E1,F);
and and31(S[3], A,B1,C1,D,E1,F);
and and32(S[2], A,B1,C,D,E1,F);
and and33(S[1], A,B,C1,D,E1,F);
and and34(S[0], A,B,C,D,E1,F);
endmodule 
