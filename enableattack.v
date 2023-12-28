module enableattack(
input A,B,C,D,E,F,G,
output s1,s2,s3,s4,s5,s6
);//botão é A 
not not0(A1,A);
not not1(B1,B);
not not2(C1,C);
not not3(D1,D);
not not4(E1,E);
not not5(F1,F);
not not6(G1,G);
wire [20:0] w;
//s1
and and0(w[0],A1,B,E1,G);
and and1(w[1],A1,B,E1,F);
and and2(w[2],A1,B,E,F1);
or or0(s1,w[0],w[1],w[2]);

//s2
and and3(w[3],A1,C,E1,G);
and and4(w[4],A1,C,E1,F);
and and5(w[5],A1,C,E,F1);
or or1(s2,w[3],w[4],w[5]);
//s3
and and6(w[6],A1,D,E1,G);
and and7(w[7],A1,D,E1,F);
and and8(w[8],A1,D,E,F10);
or or3(s3,w[6],w[7],w[8]);
//s4

and and9(w[9],A1,D,E,F1);
and and10(w[10],A1,C,E,F1);
and and11(w[11],A1,B,E,F1);
or or4(s4,w[9],w[10],w[11]);
//s5
and and12(w[12],A1,D,E1,F);
and and13(w[13],A1,C,E1,F);
and and14(w[14],A1,B,E1,F);
or or5(s5,w[12],w[13],w[14]);
//s6
and and15(w[15],A1,D,E1,G);
and and16(w[16],A1,D,F1,G);
and and17(w[17],A1,C,E1,G);
and and18(w[18],A1,C,F1,G);
and and19(w[19],A1,B,E1,G);
and and20(w[20],A1,B,F1,G);
or or6(s6,w[15],w[16],w[17],w[18],w[19],w[20]);
endmodule
