module mux_8x1 (
  input wire [2:0] sel,          // Seleção de entrada de 3 bits
  input wire [7:0] data_in,      // Entradas de 0 a 7
  output wire data_out               // Saída
);

  // Portas NOT para inverter os bits de seleção
  wire not_sel0, not_sel1, not_sel2;
  not  u_not0 (not_sel0, sel[0]);
  not  u_not1 (not_sel1, sel[1]);
  not  u_not2 (not_sel2, sel[2]);

  // Portas AND para as entradas e suas respectivas seleções
  wire and0, and1, and2, and3, and4, and5, and6, and7;

  and u_and0 (and0, data_in[0], not_sel0, not_sel1, not_sel2);
  and u_and1 (and1, data_in[1], sel[0], not_sel1, not_sel2);
  and u_and2 (and2, data_in[2], not_sel0, sel[1], not_sel2);
  and u_and3 (and3, data_in[3], sel[0], sel[1], not_sel2);
  and u_and4 (and4, data_in[4], not_sel0, not_sel1, sel[2]);
  and u_and5 (and5, data_in[5], sel[0], not_sel1, sel[2]);
  and u_and6 (and6, data_in[6], not_sel0, sel[1], sel[2]);
  and u_and7 (and7, data_in[7], sel[0], sel[1], sel[2]);

  // Porta OR para combinar as saídas das portas AND
  or u_or (data_out, and0, and1, and2, and3, and4, and5, and6, and7);

endmodule
