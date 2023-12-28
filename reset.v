module reset(
input A,B,
output r);
not not0(A1,A);
or or0(r,A1,B);
endmodule 