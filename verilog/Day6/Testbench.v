module d_latch_tb;
reg d,en,reset ; 
wire q;
  d_latch d_latch(.d(d),.en(en),.reset(reset),.q(q));
initial begin
  $dumpfile("d_latch.vcd");
  $dumpvars(1,d_latch_tb);
  $monitor(" t=%d d=%b en=%b reset=%b q=%b",$time,d,en,reset,q);
end
initial begin
  en=0;
  reset=1;
  d=0;
  #2reset=0;
  #10
  $finish;
end
always #2 en = ~en;
always #5 d = ~d;
endmodule
