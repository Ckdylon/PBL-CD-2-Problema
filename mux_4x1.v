module mux_4x1 (
  input wire [1:0] sel,      // Seleção de entrada de 2 bits
  input wire [3:0] data_in,  // Entradas de 0 a 3
  output wire data_out            // Saída
);

  wire not_sel0, not_sel1;
  wire and0, and1, and2, and3;

  // Portas NOT para inverter os bits de seleção
  not  u_not0 (not_sel0, sel[0]);
  not u_not1 (not_sel1, sel[1]);

  // Portas AND para as entradas e suas respectivas seleções
  and  u_and0 (and0, data_in[0], not_sel0, not_sel1);
  and  u_and1 (and1, data_in[1], sel[0], not_sel1);
  and  u_and2 (and2, data_in[2], not_sel0, sel[1]);
  and  u_and3 (and3, data_in[3], sel[0], sel[1]);

  // Porta OR para combinar as saídas das portas AND
  or u_or (data_out, and0, and1, and2, and3);

endmodule
