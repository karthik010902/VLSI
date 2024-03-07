//code for binary_to_gray_testbench
module binary_to_gray_tb;
  reg b0,b1,b2,b3;
  wire g0,g1,g2,g3;
  binary_to_gray bg(.b0(b0),.b1(b1),.b2(b2),.b3(b3),.g0(g0),.g1(g1),.g2(g2),.g3(g3));
  initial begin //input values
    b0=0;b1=0;b2=0;b3=0;
    #10
    b0=0;b1=0;b2=0;b3=1;
    #10
    b0=0;b1=0;b2=1;b3=0;
    #10
    b0=0;b1=0;b2=1;b3=1;
    #10
    b0=0;b1=1;b2=0;b3=0;
    #10
    b0=0;b1=1;b2=0;b3=1;
    #10
    b0=0;b1=1;b2=1;b3=0;
    #10
    b0=0;b1=1;b2=1;b3=1;
    #10
    b0=1;b1=0;b2=0;b3=0;
    #10
    b0=1;b1=0;b2=0;b3=1;
    #10
    b0=1;b1=0;b2=1;b3=0;
    #10
    b0=1;b1=0;b2=1;b3=1;
    #10
    b0=1;b1=1;b2=0;b3=0;
    #10
    b0=1;b1=1;b2=0;b3=1;
    #10
    b0=1;b1=1;b2=1;b3=0;
    #10
    b0=0;b1=1;b2=1;b3=1;
    #10
    $finish();
  end
initial begin  //monitor and dump instructions
  $monitor("%t b0=%d b1=%d b2=%d b3=%d g0=%d g1=%d g2=%d g3=%d",$time,b0,b1,b2,b3,g0,g1,g2,g3);
  $dumpfile("binary_to_gray.vcd");
  $dumpvars(1,binary_to_gray_tb);
end
endmodule
    
