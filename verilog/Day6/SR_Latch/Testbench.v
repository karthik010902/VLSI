module sr_latch_tb;
reg s,r,en; 
wire q,qbar;
  sr_latch sr_latch(.s(s),.r(r),.en(en),.q(q),.qbar(qbar));
initial begin
  $dumpfile("sr_latch.vcd");
  $dumpvars(1,sr_latch_tb);
  $monitor(" t=%d s=%b r=%b en=%b q=%b qbar=%b",$time,s,r,en,q,qbar);
end
initial begin
  en=0;
  r=1;
  s=0;
  
  #8
  $finish;
end
always #2 s = ~s;
always #3 r = ~r; 
  always #4 en=~en;
endmodule
