module rpg(//MAIS UM MODULO DE VERIFICAÇÃO ANTES DELE 
input A,B,C,D,
output S1,S2
);
not not0(A1,A);
not not1(B1,B);
not not2(C1,C);
not not3(D1,D);

//S1
and and0(S1, A1,B1,C1,D1);

//S2
wire T1,T2,T3;
and and1(T1,A1,D);
and and2(T2,A1,C);
and and3(T3, A1,B);

or or0(S2,T1,T2,T3);

endmodule 