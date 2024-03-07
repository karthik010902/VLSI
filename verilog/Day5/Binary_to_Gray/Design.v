// Code for binary_to_gray
module binary_to_gray(
    input b0,b1,b2,b3,     
    output g0,g1,g2,g3    
    );
  xor (g1,b0,b1); 
  xor (g2,b1,b2); 
  xor (g3,b2,b3);
  buf (g0,b0);
endmodule
