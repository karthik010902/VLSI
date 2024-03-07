// Code for decoder_2_to_4_testbench_
module decoder_2_to_4_tb;
reg EN, A0, A1;
wire D0, D1, D2, D3;
decoder_2_to_4 decoder(.EN(EN), .A0(A0), .A1(A1), .D0(D0), .D1(D1), .D2(D2), .D3(D3));
initial begin  //input values
EN=1'b0; A1 =1'bX ; A0 =1'bX;
#10 EN=1'b1; A0 =1'b0 ; A1 =1'b0;
#10 EN=1'b1; A0 =1'b0 ; A1 =1'b1;
#10 EN=1'b1; A0 =1'b1 ; A1 =1'b0;
#10 EN=1'b1; A0 =1'b1 ; A1 =1'b1;
#10
  $finish();
end
initial begin //monitor and display instructions
  $monitor("%t  EN=%d A0=%d A1=%d D0=%d D1=%d D2=%d D3=%d" ,$time,EN,A0, A1, D0,D1, D2, D3);
  $dumpfile("decoder_2_to_4.vcd");
  $dumpvars(1,decoder_2_to_4_tb);
end  
endmodule
