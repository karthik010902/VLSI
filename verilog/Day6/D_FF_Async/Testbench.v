module dff_async_tb;
  reg d,clk,reset;
  wire q;
  dff_async dff_async(.d(d),.clk(clk),.reset(reset),.q(q));
  initial begin
    $dumpfile ("dff_async.vcd");
    $dumpvars(1,dff_async_tb);
    $monitor("t=%d reset=%b clk=%b d=%b q=%b",$time,reset,clk,d,q);
  end
  initial begin
    reset=1;
    clk=1;
    d=0;
    #16 $finish;
  end
  always #4 reset=~reset;
  always #4 clk=~clk;
always #2 d=~d;
endmodule
