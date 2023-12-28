module digitos(
input A,B,
output s1,s2,s3,s4
);
not not1(A1,A);
not not2(B1,B);
nand and1(s1,A1,B);
not not3(s2,1'b0);
nand and3(s3,A,B1);
nand and4(s4,A,B);
endmodule 
