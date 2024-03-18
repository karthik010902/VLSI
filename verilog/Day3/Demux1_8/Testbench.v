module demux1by8_tb;
  reg m,s0,s1,s2;
  wire y1,y2,y3,y4,y5,y6,y7,y8;
  demux1by8 demux(.m(m),.s0(s0),.s1(s1),.s2(s2),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7),.y8(y8));
  initial begin
    $monitor("m=%d s0=%d s1=%d s2=%d y1=%d y2=%d y3=%d y4=%d y5=%d y6=%d y7=%d y8=%d",m,s0,s1,s2,y1,y2,y3,y4,y5,y6,y7,y8);
    $dumpfile("demux1by8.vcd");
    $dumpvars(1,demux1by8_tb);
  end
  initial begin
    m=1;
    s0=1'b0; s1=1'b0; s2=1'b0;
    #10
    s0=1'b0; s1=1'b0; s2=1'b1;
    #10
    s0=1'b0; s1=1'b1; s2=1'b0;
    #10
    s0=1'b0; s1=1'b1; s2=1'b1;
    #10
    s0=1'b1; s1=1'b0; s2=1'b0;
    #10
    s0=1'b1; s1=1'b0; s2=1'b1;
    #10
    s0=1'b1; s1=1'b1; s2=1'b0;
    #10
    s0=1'b1; s1=1'b1; s2=1'b1;
    #10
    $finish;
  end
endmodule
