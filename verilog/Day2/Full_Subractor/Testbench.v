// Code for half subractor test bench
module half_subractor_tb;
  reg x,y;
  wire diff,b;
  half_subractor hs(.x(x),.y(y),.diff(diff),.b(b));
initial begin  //input values
    x=0;y=0;
    #10
    x=0;y=1;
    #10
    x=1;y=0;
    #10
    x=1;y=1;
    #10
  $finish();
end
initial begin  //dump and monitor instructions
  $monitor("%t x=%d y=%d diff=%d b=%d",$time,x,y,diff,b);
  $dumpfile("half_subractor.vcd");
  $dumpvars(1,half_subractor_tb);
end
endmodule
