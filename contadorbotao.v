module contadorbotao(//SET COMO ZERO 
 input wire clk,     // Clock input
 //input wire rst,     // Reset input
 output wire [1:0] count // 2-bit counter output
);
  flipflop fft0(.clk(clk), .t(1'b1), .q(count[0]));
  flipflop fft1(.clk(count[0]), .t(1'b1), .q(count[1]));
endmodule 
//COMO FAZER EM ESTRUTURAL
