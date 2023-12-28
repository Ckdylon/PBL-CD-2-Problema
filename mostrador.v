module mostrador(
	input a, b, c, d, e, f, g, h,
    output SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);
	wire T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17;	

	not not0(a1,a);
	not not1(b1,b);
	not not2(c1,c);
	not not3(d1,d);
	not not4(e1,e);
	not not5(f1,f);
	not not6(g1,g);
	not not7(h1,h);
	//SEGF
	and and0(T1, f1,h);
	and and1(T2, a,b);
	or or0(SEGF, T1,T2,g);
	//SEGG
	and and2(T3, a1,b1,d1,e1,f1,g1);
	and and3(T4, c1,d,e);
	and and4(T5, a,b);
	or or1(SEGG, T3,T4,T5);
	//SEGE
	and and5(T6, a,b);
	or or2(SEGE, h,f,T6);
	//SEGD
	and and6(T7, f1,g1,h);
	and and7(T8, f,h1);
	and and8(T9, c1,d1,e);
	and and9(T10, c,d,e1);
	or or3(SEGD, T7,T8,T9,T10,b,a);
	//SEGC
	and and10(T11, g,h1);
	and and11(T12, c1,d,e);
	and and12(T13, c,d1,e);
	or or4(SEGC, T11,T12,T4,T13,T10,b);
	//SEGB
	and and13(T14, f,h);
	and and14(T15, d,e);
	and and15(T16, c,e);
	and and16(T17, c,d);
	or or5(SEGB, T14,T15,T16,T17,T6);
	//SEGA
	or or6(SEGA, T7,T8, T6);


endmodule
