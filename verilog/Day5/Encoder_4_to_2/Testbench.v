// Code for encoder_4_to_2_testbench_tb
module encoder_tb;
  reg d0,d1,d2,d3;
  wire x1,x2;
  encoder en_coder(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.x1(x1),.x2(x2));
  initial begin //apply input values
    d0=1;d1=0;d2=0;d3=0;
    #10
    d0=0;d1=1;d2=0;d3=0;
    #10
    d0=0;d1=0;d2=1;d3=0;
    #10
    d0=0;d1=0;d2=0;d3=1;
    #10
    $finish();
  end
  initial begin  //dump and monitor instructions
    $monitor("%t d0=%d d1=%d d2=%d d3=%d x1=%d x2=%d" ,$time ,d0 ,d1,d2,d3,x1,x2);
    $dumpfile("encoder.vcd");
    $dumpvars(1,encoder_tb);
  end
endmodule
