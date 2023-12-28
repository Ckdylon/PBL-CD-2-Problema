module modovscoordenadas(
  input A, B, C, D, E, F, G, H,
  output s1, s2, s3, s4, s5, s6, s7, s8 
);

  // S1 = A.B'
not not1(B1,B);
and and1(s1,A,B1);
 // s2 = A'.B
not not2(A1,A);
and and2(s2,A1,B);
 // s3 =  (A.B').(C.(F+G+H).(F'.H + F'.G + F.G'))
wire [7:0] w;
and and3(w[0],A,B1);
or or1(w[1],F,G,H);
and and4(w[2],C,w[1]);
and and5(w[3],w[0],w[2]);
not not3(F1,F);
and and6(w[4],F1,H);
and and7(w[5],F1,G);
not not4(G1,G);
and and8(w[6],F,G1);
or or2(w[7], w[4],w[5],w[6]);
and and9 (s3,w[3], w[7]); 
// S4 = (A.B').(D.(F+G+H).(F'.H + F'.G + F.G')) 
wire x;
and and10(x,w[1],D);
and and11(s4,w[0],x,w[7]);
// S5 = (A.B').(E.(F+G+H).(F'.H + F'.G + F.G'))
wire y;
and and12(y,w[1],E);
and and13(s5,w[0],y,w[7]);
//S6 = (A.B').(F.(F+G+H).(F'.H + F'.G + F.G').(C+D+E))
wire [0:1] Z;
and and14(Z[0],w[1],F);
or or3(Z[1],C,D,E);
and and15(s6,w[0],Z[0],w[7],Z[1]);
//S7 = (A.B').(G.(F+G+H).(F'.H + F'.G + F.G').(C+D+E))
wire [0:1] J;
and and16(J[0],w[1],G);
or or4(J[1],C,D,E);
and and17(s7,w[0],J[0],w[7],J[1]);
//S8 = (A.B').(H.(F+G+H).(F'.H + F'.G + F.G').(C+D+E))
wire [0:1] P;
and and18(P[0],w[1],H);
or or5(P[1],C,D,E);
and and19(s8,w[0],P[0],w[7],P[1]);
endmodule 


