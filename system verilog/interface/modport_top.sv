`include "test.sv"
module top;
  
  // interface 
  g_if inf();
  
  // dut instante
  or_ga dut(inf);

  // test bench
  test_bench ins_tb(inf);
  
endmodule
  
