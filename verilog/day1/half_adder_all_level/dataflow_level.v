module halfadder(a,b,s,c);
  
  input a,b;
  output s,c;
  
  assign s=a^b;    // assigning experssion for sum
  assign c=a&b;  // assigning experssion for carry
  
endmodule
  
