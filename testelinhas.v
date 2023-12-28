module testelinhas(input A,B,C, output L1,L2,L3,L4,L5,L6,L7);
not not0(A1,A);
not not1(B1,B);
not not2(CN,C);
or and0(L1,A,B,CN);
or and1(L2,A,B1,C);
or and2(L3,A,B1,CN);
or and3(L4,A1,B,C);
or and4(L5,A1,B,CN);
or or0(L6,A1,B1,C);
or or1(L7,A1,B1,CN);
endmodule 