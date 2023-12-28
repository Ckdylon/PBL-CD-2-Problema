module pipo_register (//erro 
  input wire clk,       // Clock input
  input wire rst,// Reset input
  input wire [34:0] parallel_in,  // Parallel input
  output wire [34:0] parallel_out // Parallel output
);

//mudar para tipo D com enable 
  DFlipFlop u_ff_0 (.clk(clk), .rst(rst), .D(parallel_in[0]),.en(parallel_in[0]),.q(parallel_out[0]));
  DFlipFlop u_ff_1 (.clk(clk), .rst(rst), .D(parallel_in[1]),.en(parallel_in[1]),.q(parallel_out[1]));
  DFlipFlop u_ff_2 (.clk(clk), .rst(rst), .D(parallel_in[2]),.en(parallel_in[2]),.q(parallel_out[2]));
  DFlipFlop u_ff_3 (.clk(clk), .rst(rst), .D(parallel_in[3]),.en(parallel_in[3]),.q(parallel_out[3]));
  DFlipFlop u_ff_4 (.clk(clk), .rst(rst), .D(parallel_in[4]),.en(parallel_in[4]),.q(parallel_out[4]));
  DFlipFlop u_ff_5 (.clk(clk), .rst(rst), .D(parallel_in[5]),.en(parallel_in[5]),.q(parallel_out[5]));
  DFlipFlop u_ff_6 (.clk(clk), .rst(rst), .D(parallel_in[6]),.en(parallel_in[6]),.q(parallel_out[6]));
  DFlipFlop u_ff_7 (.clk(clk), .rst(rst), .D(parallel_in[7]),.en(parallel_in[7]),.q(parallel_out[7]));
  DFlipFlop u_ff_8 (.clk(clk), .rst(rst), .D(parallel_in[8]),.en(parallel_in[8]),.q(parallel_out[8]));
  DFlipFlop u_ff_9 (.clk(clk), .rst(rst), .D(parallel_in[9]),.en(parallel_in[9]),.q(parallel_out[9]));
  DFlipFlop u_ff_10 (.clk(clk), .rst(rst), .D(parallel_in[10]),.en(parallel_in[10]),.q(parallel_out[10]));
  DFlipFlop u_ff_11 (.clk(clk), .rst(rst), .D(parallel_in[11]),.en(parallel_in[11]),.q(parallel_out[11]));
  DFlipFlop u_ff_12 (.clk(clk), .rst(rst), .D(parallel_in[12]),.en(parallel_in[12]),.q(parallel_out[12]));
  DFlipFlop u_ff_13 (.clk(clk), .rst(rst), .D(parallel_in[13]),.en(parallel_in[13]),.q(parallel_out[13]));
  DFlipFlop u_ff_14 (.clk(clk), .rst(rst), .D(parallel_in[14]),.en(parallel_in[14]),.q(parallel_out[14]));
  DFlipFlop u_ff_15 (.clk(clk), .rst(rst), .D(parallel_in[15]),.en(parallel_in[15]),.q(parallel_out[15]));
  DFlipFlop u_ff_16 (.clk(clk), .rst(rst), .D(parallel_in[16]),.en(parallel_in[16]),.q(parallel_out[16]));
  DFlipFlop u_ff_17 (.clk(clk), .rst(rst), .D(parallel_in[17]),.en(parallel_in[17]),.q(parallel_out[17]));
  DFlipFlop u_ff_18 (.clk(clk), .rst(rst), .D(parallel_in[18]),.en(parallel_in[18]),.q(parallel_out[18]));
  DFlipFlop u_ff_19 (.clk(clk), .rst(rst), .D(parallel_in[19]),.en(parallel_in[19]),.q(parallel_out[19]));
  DFlipFlop u_ff_20 (.clk(clk), .rst(rst), .D(parallel_in[20]),.en(parallel_in[20]),.q(parallel_out[20]));
  DFlipFlop u_ff_21 (.clk(clk), .rst(rst), .D(parallel_in[21]),.en(parallel_in[21]),.q(parallel_out[21]));
  DFlipFlop u_ff_22 (.clk(clk), .rst(rst), .D(parallel_in[22]),.en(parallel_in[22]),.q(parallel_out[22]));
  DFlipFlop u_ff_23 (.clk(clk), .rst(rst), .D(parallel_in[23]),.en(parallel_in[23]),.q(parallel_out[23]));
  DFlipFlop u_ff_24 (.clk(clk), .rst(rst), .D(parallel_in[24]),.en(parallel_in[24]),.q(parallel_out[24]));
  DFlipFlop u_ff_25 (.clk(clk), .rst(rst), .D(parallel_in[25]),.en(parallel_in[25]),.q(parallel_out[25]));
  DFlipFlop u_ff_26 (.clk(clk), .rst(rst), .D(parallel_in[26]),.en(parallel_in[26]),.q(parallel_out[26]));
  DFlipFlop u_ff_27 (.clk(clk), .rst(rst), .D(parallel_in[27]),.en(parallel_in[27]),.q(parallel_out[27]));
  DFlipFlop u_ff_28 (.clk(clk), .rst(rst), .D(parallel_in[28]),.en(parallel_in[28]),.q(parallel_out[28]));
  DFlipFlop u_ff_29 (.clk(clk), .rst(rst), .D(parallel_in[29]),.en(parallel_in[29]),.q(parallel_out[29]));
  DFlipFlop u_ff_30 (.clk(clk), .rst(rst), .D(parallel_in[30]),.en(parallel_in[30]),.q(parallel_out[30]));
  DFlipFlop u_ff_31 (.clk(clk), .rst(rst), .D(parallel_in[31]),.en(parallel_in[31]),.q(parallel_out[31]));
  DFlipFlop u_ff_32 (.clk(clk), .rst(rst), .D(parallel_in[32]),.en(parallel_in[32]),.q(parallel_out[32]));
  DFlipFlop u_ff_33 (.clk(clk), .rst(rst), .D(parallel_in[33]),.en(parallel_in[33]),.q(parallel_out[33]));
  DFlipFlop u_ff_34 (.clk(clk), .rst(rst), .D(parallel_in[34]),.en(parallel_in[34]),.q(parallel_out[34]));

 
endmodule