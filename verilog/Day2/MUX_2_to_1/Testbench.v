// Code for mux_2_1_testbench
module mux_2_to_1_tb;
  reg i0,i1,s;
  wire y;
  mux_2_to_1 mux(.i0(i0),.i1(i1),.s(s),.y(y));
  initial begin   //apply input values
    s=0;
    i0=0;i1=1;
    #10
    s=1;
    #10
    $finish();
  end
   initial begin  //monitor and dump instructions
     $monitor("%t i0=%d i1=%d s=%d y=%d",$time, i0,i1,s,y);
     $dumpfile("mux_2_to_1.vcd");
     $dumpvars(1,mux_2_to_1_tb);
   end
endmodule
    
