module ataque(//errado rever 
input A,B,C,D,E,F,G,H,
output s1,s2,s3,s4,s5,s6);

assign s1 = (~A & ~B & C & ~D & ~E & ~F & G) | (~A & C & ~D & ~E & ~F & G & H) | (~A & C & ~D & ~E & F & ~G & ~H) | (~A & ~B & C & ~D & F & ~G & H) | (~B & C & ~D & ~E & F & ~G & H) | (~A & ~B & C & D & ~E & ~G & H) | (~B & C & D & ~F & ~G & H) | (~A & C & D & ~E & ~F & G & ~H) | (~A & C & D & E & ~F & G & H) | (~A & ~B & C & D & E & F & ~G & ~H) | (~A & B & C & ~E & F & ~G & ~H) | (~A & B & C & D & ~E & ~F & H) | (A & ~B & C & D & ~E & ~F & H) | (A & ~B & C & D & ~E & F & ~G & ~H) | (A & ~B & C & D & E & ~F & G & ~H) | (A & B & C & ~D & ~E & ~F & ~G & H) | (A & B & C & D & F & ~G & H) | (A & B & C & D & E & F & ~G);

assign s2 = ( ~A & D & ~E &~F &~G & H) |( ~A & ~B & ~C & D & ~E & ~F & G) |( ~B & ~C &  D & ~E & ~F & G  & ~H) |(~A &  ~B &  D &  E &  F &  ~G &  ~H )|( ~A & ~C &  D &  E &  F & ~G &  ~H )|( ~A &  ~B &  C &  D &  ~E & ~G & H) |( ~B &  C &  D  & ~F & ~G&  H) |( ~A&  C &  D &  ~E &  ~F &  G  & ~H )| (~A & ~B &  C &  D & E &  ~F & H) |( ~A  & B &  C &  D & ~F & G & H) | (~A & B &  C &  D & ~E &  F &  ~G &  ~H)|( A &  ~B &  D &  ~E &  F &  ~G & ~H) |( A & ~B &  ~C & D&  F &  ~G & H) | (A &  ~B &  D &  E &  ~F &  G & ~H )|( A &  ~C & D & E & ~F &  G &  ~H)|( A &  ~B &  C &  D & ~E & ~F & H) |( A & B &  ~C &  D &  ~F &  ~G  & H) |( A &  B & D &  ~E & F &  ~G &  H) |( A & B &  C & D &  E  & F  & ~G);

assign s3 = (~A & ~C & ~D & E & ~G & H) | (~A & ~C & E & F & ~G & ~H) | (~A & ~B & ~D & E & F & ~G & H) | (~A & ~B & D & E & F & ~G & ~H) | (~B & C & D & E & ~F & ~G & H) | (~A & C & D & E & ~F & G & H) | (B & ~C & ~D & E & ~G & H) | (~A & B & ~C & ~D & E & ~F & G & ~H) | (A & ~B & ~C & E & F & ~G & H) | (A & ~B & D & E & ~F & G & ~H) | (A & ~C & D & E & ~F & G & ~H) | (A & B & ~C & E & ~F & ~G & H) | (A & B & C & D & E & F & ~G);

assign s4 = (~A & ~C & E & F & ~G & ~H) | (~C & ~D & E & F & ~G & H) | (~A & ~B & D & E & F & ~G & ~H) | (~A & C & ~D & ~E & F & ~G & ~H) | (~A & ~B & C & ~D & F & ~G & H) | (~A & ~B & C & ~E & F & ~G & H) | (~B & C & ~D & ~E & F & ~G & H) | (~A & B & C & ~E & F & ~G & ~H) | (A & ~B & D & ~E & F & ~G & ~H) | (A & ~B & ~C & D & F & ~G & H) | (A & ~C & D & ~E & F & ~G & H) | (A & B & D & ~E & F & ~G & H) | (A & B & C & D & E & F & ~G);

assign s5 = (~A & ~B & ~C & D & ~E & ~F & G) | (~B & ~C & D & ~E & ~F & G & ~H) | (~A & ~B & C & ~D & ~E & ~F & G) | (~A & C & D & ~E & ~F & G & ~H) | (~A & C & D & E & ~F & G & H) | (~A & B & ~C & ~D & E & ~F & G & ~H) | (~A & B & C & ~E & ~F & G & H) | (A & ~B & D & E & ~F & G & ~H) | (A & ~C & D & E & ~F & G & ~H) | (A & ~B & C & D & ~E & ~F & G & H);

assign s6 = (~A & ~C & ~D &  E &  ~G &  H)|( ~C & ~D & E & F & ~G & H)|(~A & ~B & ~C & D & ~E & ~F & H)|( ~A & D & ~E & ~F & ~G & H)|( ~A & C & ~D & ~E & ~F & G & H) |( ~A & ~B & C & ~D & F & ~G & H) |( ~B & C & ~D & ~E & F & ~G & H) |( ~A & ~B & C & D & ~E & ~G & H) |( ~B & C & D & ~F & ~G & H) |( ~A & ~B & C & D & E & ~F & H)|( B & ~C & ~D & E & ~G & H) |( ~A & B & C & D & ~F & G & H) |( A & ~B & ~C & D & F & ~G & H) |( A & ~B & C & D & ~E & ~F & H)|( A & B & ~C & D & ~E & ~G & H) |( A & B & ~C & D & ~F & ~G & H) |( A & B & C & ~D & ~E & ~F & ~G & H) |( A & B & C & D & F & ~G & H);


endmodule 
