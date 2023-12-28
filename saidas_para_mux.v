module saidas_para_mux( 
input a,b,c,d,e,f,g,h,
output wire [7:0] modo,
output wire [7:0] coluna,
output wire [7:0] linha
);
not not1(b1,b);
and and1(modo[7],a,b1);
not not2(a1,a);
and and2(modo[6],a1,b);
not not3(modo[5],1'b1);
not not4(modo[4],1'b1);
not not5(modo[3],1'b1);
not not6(modo[2],1'b1);
not not7(modo[1],1'b1);
not not8(modo[0],1'b1);
//linha
not not9(linha[7],1'b1);
not not10(linha[6],1'b1);
wire [6:0] w;
and and3(w[0],a,b1);
or or1(w[1],f,g,h);
and and4(w[2],w[1],c);
not not11(f1,f);
not not12(g1,g);
and and5(w[3],f1,h);
and and6(w[4],f1,g);
and and7(w[5],f,g1);
or or2(w[6], w[3],w[4],w[5]);
and and8(linha[5],w[0],w[2],w[6]);
//
wire x;
and and9(x,w[1],d);
and and10(linha[4], w[0],x,w[6]);
wire y;
and and11(y,w[1],e);
and and12(linha[3], w[0],y,w[6]);
not not13(linha[2],1'b1);
not not14(linha[1],1'b1);
not not15(linha[0], 1'b1);
// coluna 
not not16(coluna[7], 1'b1);
not not17(coluna[6], 1'b1);
not not18(coluna[5], 1'b1);
not not19(coluna[4], 1'b1);
not not20(coluna[3], 1'b1);
//
wire [1:0]z;
or or3 (z[0],c,d,e);
and and13(z[1],w[1],f);
and and14(coluna[2], w[0],z[0],z[1],w[6]);
wire l;
and and15(l,w[1],g);
and and16(coluna[1], w[0],z[0],l,w[6]);
wire k;
and and17(k,w[1],h);
and and18(coluna[0], w[0],z[0],k,w[6]);
endmodule 

