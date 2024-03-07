// Code for mux_4_by_1_testbench
module mux_4_to_1_tb;
  reg s0,s1,i0,i1,i2,i3;
  wire y;
  mux_4_to_1 mux(.s0(s0),.s1(s1),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.y(y));
initial begin  //input values
    s0=0;s1=0;i0=1;i1=0;i2=0;i3=0;
    #10
    s0=0;s1=1;i0=0;i1=1;i2=0;i3=0;
    #10
    s0=1;s1=0;i0=0;i1=0;i2=1;i3=0;
    #10
    s0=1;s1=1;i0=0;i1=0;i2=0;i3=1;
    #10
    $finish();
  end
initial begin  //monitor and dump instructions
  $monitor("%t s0=%d s1=%d  i0=%d i1=%d i2=%d i3=%d y=%d",$time,s0,s1,i0,i1,i2,i3,y);
  $dumpfile("mux_4_to_1.vcd");
  $dumpvars(1,mux_4_to_1_tb);
end
endmodule
