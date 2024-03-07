module halfadder(a,b,s,c);
  
  input a,b;
  output s,c;
  reg s,c;    // reg store the o/p | reg important in behaviral level
  always @(*)
    begin
      case ({a,b})
        2'b00: s=0;
        2'b01: s=1;
        2'b10: s=1;
        2'b11: s=0;
        default: s=0;
      endcase
      
      case ({a,b})
        2'b00: c=0;
        2'b01: c=0;
        2'b10: c=0;
        2'b11: c=1;
        default: c=0;
      endcase
    end
  
endmodule
  
