`include "interface.sv"
module test_bench(g_if inf);
  
  initial begin
    $display("********************OR GATE********************");
    $monitor("[%0t] a=%0b, b=%0b, y=%0b",$time,inf.tb.a,inf.tb.b,inf.tb.y);
    
    for(logic[1:0]i=0; i<=3;i++)begin
      inf.tb.a=i[1]; inf.tb.b=i[0];
      #5;
    end

    end
  
  initial #100 $finish;
  
endmodule
      
    
