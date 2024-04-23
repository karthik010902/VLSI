// test_bench module
module test;
  
  // crating instante name
  fuladd intf();
  // module instante
  fa dut(.a(intf.a), .b(intf.b), .ci(intf.ci), .s(intf.s), .cry(intf.cry));
  
  initial
    begin
      $dumpfile("fa.vcd");
      $dumpvars();
      $monitor("time=%0t,a=%0b,b=%0b,ci=%0b,s=%0b,cry=%0b",$time,intf.a,intf.b,intf.ci,intf.s,intf.cry);
      #70 $finish;
    end
  
  initial
    begin
      repeat(8)
      begin
         #2
          intf.a=$random;
          intf.b=$random;
          intf.ci=$random;
        
        
      end
      
    end
  
endmodule
          
