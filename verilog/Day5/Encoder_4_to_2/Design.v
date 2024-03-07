// Code for encoder_4_to_2_gate_level
module encoder(
  input d0,d1,d2,d3,
  output x1,x2);
  or (x1,d2,d3);
  or(x2,d1,d3);
endmodule
