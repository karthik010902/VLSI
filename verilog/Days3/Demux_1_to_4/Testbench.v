// Code demux1by2 testbench
module demux1by2_tb;
  reg s,d;
  wire y0,y1;
//instantiate mux
  demux1by2 demux(.s(s),.d(d),.y0(y0),.y1(y1));
//information of dump and monitor
  initial begin
    $monitor("s=%0d d=%0d y0=%0d y1=%0d",s,d,y0,y1);
    $dumpfile("demux1by2.vcd");
    $dumpvars(1,demux1by2_tb);
  end
//input declaration
  initial begin
    s=1'b0; d=1'b1;
    #25
    s=1'b1; d=1'b1;
    #25
    $finish;
  end
  endmodule
