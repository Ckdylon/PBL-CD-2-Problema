module main (
	input a,b,c,d,e,f,g,h,cl,
	input botao1,
	input botao2,
	output wire [1:0] leds,
	output wire [6:0] linhas,
	output wire [4:0] colunas,
	output wire [6:0] segmentos,
	output wire [3:0] dig
);

wire RST;
wire [2:0] divisor;
wire [34:0] bits;
wire [34:0] bits2;
wire [1:0] J;
wire [2:0] w;
wire [1:0] P;
wire [7:0] M;
wire [7:0] mode;
wire [7:0] line;
wire [7:0] column;
wire [7:0] out;
wire [5:0] ataque;
wire [5:0] registrador;

divisor_clock primeira(
 .clk(cl),
 .divclock({divisor[2],divisor[1],divisor[0]})
 ); 

digitos quarta(
.A(divisor[1]),
.B(divisor[0]),
.s1(dig[0]),
.s2(dig[1]),
.s3(dig[2]),
.s4(dig[3])
);
 
 modovscoordenadas quinta(
 .A(a),
 .B(b),
 .C(c),
 .D(d),
 .E(e),
 .F(f),
 .G(g),
 .H(h),
 .s1(M[7]),
 .s2(M[6]),
 .s3(M[5]),
 .s4(M[4]),
 .s5(M[3]),
 .s6(M[2]),
 .s7(M[1]),
 .s8(M[0])
 );
 saidas_para_mux sexta(
 .a(M[7]),
 .b(M[6]),
 .c(M[5]),
 .d(M[4]),
 .e(M[3]),
 .f(M[2]),
 .g(M[1]),
 .h(M[0]),
 .modo({
  mode[7], mode[6], mode[5], mode[4],
  mode[3], mode[2], mode[1], mode[0]
}),
.linha({
  line[7], line[6], line[5], line[4],
  line[3], line[2], line[1], line[0]
}),
.coluna({
  column[7], column[6], column[5], column[4],
  column[3], column[2], column[1], column[0]
}));
mux_custom setima(
.data_in_1(mode[7]),
.data_in_2(line[7]),
.data_in_3(column[7]),
.data_in_4(mode[6]),
.data_in_5(line[6]),
.data_in_6(column[6]),
.data_in_7(mode[5]),
.data_in_8(line[5]),
.data_in_9(column[5]),
.data_in_10(mode[4]),
.data_in_11(line[4]),
.data_in_12(column[4]),
.data_in_13(mode[3]),
.data_in_14(line[3]),
.data_in_15(column[3]),
.data_in_16(mode[2]),
.data_in_17(line[2]),
.data_in_18(column[2]),
.data_in_19(mode[1]),
.data_in_20(line[1]),
.data_in_21(column[1]),
.data_in_22(mode[0]),
.data_in_23(line[0]),
.data_in_24(column[0]),
.sel({divisor[1],divisor[0]}),
.data_out1(out[7]),
.data_out2(out[6]),
.data_out3(out[5]),
.data_out4(out[4]),
.data_out5(out[3]),
.data_out6(out[2]),
.data_out7(out[1]),
.data_out8(out[0])
);
mostrador oitava(
.a(out[7]),
.b(out[6]),
.c(out[5]),
.d(out[4]),
.e(out[3]),
.f(out[2]),
.g(out[1]),
.h(out[0]),
.SEGA(segmentos[6]),
.SEGB(segmentos[5]),
.SEGC(segmentos[4]),
.SEGD(segmentos[3]),
.SEGE(segmentos[2]),
.SEGF(segmentos[1]),
.SEGG(segmentos[0])
);
enableattack nona (//AQUI
.A(botao1),
.B(M[5]),
.C(M[4]),
.D(M[3]),
.E(M[2]),
.F(M[1]),
.G(M[0]),
.s1(ataque[5]),
.s2(ataque[4]),
.s3(ataque[3]),
.s4(ataque[2]),
.s5(ataque[1]),
.s6(ataque[0])
);
contadorbotao decima(
.clk(botao2),
.count({J[1],J[0]})
);
ataque decimap(
.A(J[1]),
.B(J[0]),
.C(ataque[5]),
.D(ataque[4]),
.E(ataque[3]),
.F(ataque[2]),
.G(ataque[1]),
.H(ataque[0]),
.s1(registrador[5]),
.s2(registrador[4]),
.s3(registrador[3]),
.s4(registrador[2]),
.s5(registrador[1]),
.s6(registrador[0])
);
rpg luzes(
.A(BOTAO1),
.B(registrador[2]),
.C(registrador[1]),
.D(registrador[0]),
.S1(leds[1]),
.S2(leds[0])
);

bits35 decimas( 
.A(registrador[5]),
.B(registrador[4]),
.C(registrador[3]),
.D(registrador[2]),
.E(registrador[1]),
.F(registrador[0]),
.S(bits)
);
pipo_register decimat (
.clk(divisor[2]),
.rst(RST),
.parallel_in(bits),
.parallel_out(bits2)
);
testedomux decimaq(
.data_in(bits2),
.sel({divisor[2],divisor[1],divisor[0]}),
.saidas({colunas[4],colunas[3],colunas[2],colunas[1],colunas[0]})
);

testelinhas decimasext(
.A(divisor[2]),
.B(divisor[1]),
.C(divisor[0]),
.L1(linhas[6]),
.L2(linhas[5]),
.L3(linhas[4]),
.L4(linhas[3]),
.L5(linhas[2]),
.L6(linhas[1]),
.L7(linhas[0])
);
reset RR(
.A(a),
.B(b),
.r(RST)
);

endmodule 