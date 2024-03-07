module dff_async_reset_tb;
reg data, clk, reset ; 
wire q;
dff_async_reset dffr (.data(data), .clk(clk), .reset(reset) ,.q(q));
initial begin  //input values
clk=0;
reset = 1;
data = 0;
#5 reset = 0;
#30
$finish;
end
initial begin  //monitor and dump instruction
  $monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t, q=%b",clk,reset,data,q);
  $dumpfile("dff_async_reset.vcd");
  $dumpvars(1,dff_async_reset_tb);
end
always 
  #5 clk = ~clk;
always 
  #10 data = ~data;

endmodule
