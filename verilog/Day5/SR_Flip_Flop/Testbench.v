module sr_ff_tb;
reg s,r,clk; 
wire q,qbar;
  sr_ff sr_ff(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
initial begin
  $dumpfile("sr_ff.vcd");
  $dumpvars(1,sr_ff_tb);
  $monitor(" t=%d s=%b r=%b clk=%b q=%b qbar=%b",$time,s,r,clk,q,qbar);
end
initial begin
  clk=0;
  r=1;
  s=0;
  
  #20
  $finish;
end
always #2 s = ~s;
always #3 r = ~r; 
  always #4 clk=~clk;
endmodule
