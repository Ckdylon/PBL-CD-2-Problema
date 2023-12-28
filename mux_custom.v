module mux_custom(
  input data_in_1,
  input data_in_2,
  input data_in_3,
  input data_in_4,
  input data_in_5,
  input data_in_6,
  input data_in_7,
  input data_in_8,
  input data_in_9,
  input data_in_10,
  input data_in_11,
  input data_in_12,
  input data_in_13,
  input data_in_14,
  input data_in_15,
  input data_in_16,
  input data_in_17,
  input data_in_18,
  input data_in_19,
  input data_in_20,
  input data_in_21,
  input data_in_22,
  input data_in_23,
  input data_in_24,
  input wire [1:0]sel,
  output data_out1, data_out2, data_out3,data_out4,data_out5,data_out6,data_out7,data_out8
);

  mux_4x1 mux_inst_1 (
    .data_in({data_in_3,data_in_2,data_in_1,data_in_3}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out1)
  );

  mux_4x1 mux_inst_2 (
  .data_in({data_in_6,data_in_5,data_in_4,data_in_6,}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out2)
  );
mux_4x1 mux_inst_3 (
    .data_in({data_in_9,data_in_8,data_in_7,data_in_9}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out3)
  );
  mux_4x1 mux_inst_4 (
    .data_in({data_in_12,data_in_11,data_in_10,data_in_12}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out4)
  );
  mux_4x1 mux_inst_5(
    .data_in({data_in_15,data_in_14,data_in_13,data_in_15}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out5)
  );
mux_4x1 mux_inst_6(
    .data_in({data_in_18,data_in_17,data_in_16,data_in_18}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out6)
  );
mux_4x1 mux_inst_7 (
    .data_in({data_in_21,data_in_20,data_in_19,data_in_21}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out7)
  );
  mux_4x1 mux_inst_8 (
    .data_in({data_in_24,data_in_23,data_in_22,data_in_24}),
    .sel({sel[1],sel[0]}),
    .data_out(data_out8)
  );
endmodule 