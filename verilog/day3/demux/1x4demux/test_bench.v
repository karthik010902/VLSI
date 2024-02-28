module dm_tb;
  reg d,s0,s1;
  wire y0,y1,y2,y3;
  
  dm1x4 z1(.d(d),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  
  initial begin
    $dumpfile("dm1x4.vcd");
    $dumpvars(0,dm_tb);
  end
  
  initial begin
    d=1'b1;s0=1'b0;s1=1'b0;
    #10
    s0=1'b0;s1=1'b1;
    #10
    s0=1'b1;s1=1'b0;
    #10
    s0=1'b1;s1=1'b1;
    #10
    $finish;
  end
  
  initial 
    $monitor("time=%t, d=%0b, s0=%0b, s1=%0b, y0=%0b, y1=%0b, y2=%0b, y3=%0b",$time, d, s0, s1, y0, y1, y2, y3);
  
endmodule
