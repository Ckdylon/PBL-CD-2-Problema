module DFlipFlop (//BOTAR ENABLE, mesmo sinal de entrada será o de enable 
  input wire D,      // Data input
  input wire clk,
  input wire en,  // Clock input
  input wire rst,    // Reset input
  output reg q       // Output
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= 1'b0;      // Reset the flip-flop
    end else  if (en) begin
      q <= D;         // Assign the input to the output on the rising edge of the clock
    end
  end

endmodule 