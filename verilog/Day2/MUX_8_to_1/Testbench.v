//code for mux8_1 test_bench
module mux8_1_tb;
  reg D0,D1,D2,D3,D4,D5,D6,D7,s0,s1,s2;
  wire Y;
  mux8_1 mux(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7),.s0(s0),.s1(s1),.s2(s2),.Y(Y));
  initial begin  //input values
    D0=1;D1=0;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;s0=0;s1=0;s2=0;
    #10
    D0=0;D1=1;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;s0=0;s1=0;s2=1;
    #10
    D0=0;D1=0;D2=1;D3=0;D4=0;D5=0;D6=0;D7=0;s0=0;s1=1;s2=0;
    #10
    D0=0;D1=0;D2=0;D3=1;D4=0;D5=0;D6=0;D7=0;s0=0;s1=1;s2=1;
    #10
    D0=0;D1=0;D2=0;D3=0;D4=1;D5=0;D6=0;D7=0;s0=1;s1=0;s2=0;
    #10
    D0=0;D1=0;D2=0;D3=0;D4=0;D5=1;D6=0;D7=0;s0=1;s1=0;s2=1;
    #10
    D0=0;D1=0;D2=0;D3=0;D4=0;D5=0;D6=1;D7=0;s0=1;s1=1;s2=0;
    #10
    D0=0;D1=1;D2=0;D3=0;D4=0;D5=0;D6=0;D7=1;s0=1;s1=1;s2=1;
    #10
    $finish();
  end
initial begin  //monitor and dump instructions
  $monitor("%time D0=%d D1=%d D2=%d D3=%d D4=%d D5=%d D6=%d D7=%d s0=%d s1=%d s2=%d Y=%d",$time, D0,D1,D2,D3,D4,D5,D6,D7,s0,s1,s2,Y);
  $dumpfile("mux8_1.vcd");
  $dumpvars(1,mux8_1_tb);
end
endmodule
    
