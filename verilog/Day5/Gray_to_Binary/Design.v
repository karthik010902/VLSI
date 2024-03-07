// Code for grey_to_binary
module grey_to_binary(
    input g1,g2,g3,g4,     
    output b1,b2,b3,b4    
    );
  xor (b2,b1,g2); 
  xor (b3,g3,b2); 
  xor (b4,g4,b3);
  buf (b1,g1);
endmodule
