module muxcostume2(//REVER
input wire [34:0] data_in,
output wire [6:0] saidas,
input wire [2:0] sel
);
mux_8x1 mux_inst_1 (
    .data_in({data_in[34],data_in[27],data_in[20],data_in[13],data_in[6],data_in[34],data_in[27],data_in[20]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[6])
  );

  mux_8x1 mux_inst_2 (
    .data_in({data_in[33],data_in[26],data_in[19],data_in[12],data_in[5], data_in[33],data_in[26],data_in[19]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[5])
  );
mux_8x1 mux_inst_3 (
    .data_in({data_in[32],data_in[25],data_in[18],data_in[11],data_in[4],data_in[32],data_in[25],data_in[18]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[4])
  );
  mux_8x1 mux_inst_4 (
    .data_in({data_in[31],data_in[24],data_in[17],data_in[10],data_in[3], data_in[31],data_in[24],data_in[17]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[3])
);
 mux_8x1 mux_inst_5 (
    .data_in({data_in[30],data_in[23],data_in[16],data_in[9],data_in[2], data_in[30],data_in[23],data_in[16]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[2])
);	 
mux_8x1 mux_inst_6 (
    .data_in({data_in[29],data_in[22],data_in[15],data_in[8],data_in[1], data_in[29],data_in[22],data_in[15]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[1])
);	 
mux_8x1 mux_inst_7 (
    .data_in({data_in[28],data_in[21],data_in[14],data_in[7],data_in[0],data_in[28],data_in[21],data_in[14]}),
    .sel({sel[2],sel[1],sel[0]}),
    .data_out(saidas[0])
);	 
endmodule 