//code for decoder_2_to_4
module decoder_2_to_4(
 input EN, A0, A1,
  output D0, D1, D2, D3);
 wire x,y;
 not (y,A1);
 not (x,A0);
 and (D0,EN,x,y);
 and (D1,EN,x,A1);
 and (D2,EN,y,A0);
 and (D3,EN,A0,A1);
endmodule
