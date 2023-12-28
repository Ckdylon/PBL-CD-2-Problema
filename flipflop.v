module flipflop (
  input clk,  // Clock input
  input t,    // T input
  input rst,  // Reset input
  output reg q // Output
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= 1'b0;  // Reset the flip-flop to zero
    end else begin
      if (t) begin
        q <= ~q;  // Toggle the flip-flop based on T input
      end
		else begin q <= q;
		end
    end
  end

endmodule 